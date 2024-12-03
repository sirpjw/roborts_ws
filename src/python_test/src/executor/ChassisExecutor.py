import py_trees

import actionlib
import rospy
from geometry_msgs.msg import Twist, PoseStamped
from roborts_msgs.msg import TwistAccel
from roborts_msgs.msg import (
    GlobalPlannerFeedback,
    GlobalPlannerGoal,
    GlobalPlannerAction,
    GlobalPlannerResult,
)
from roborts_msgs.msg import LocalPlannerGoal, LocalPlannerFeedback, LocalPlannerAction
from py_trees.common import Status as BehaviorStatus

import time
import inspect

from enum import Enum
from enum import unique

from public import public_variable


"""
! Chassis execution mode for different tasks
"""


@unique
class ExcutionMode(Enum):
    IDLE_MODE = 1  # < Default idle mode with no task
    GOAL_MODE = 2  # < Goal-targeted task mode using global and local planner
    SPEED_MODE = 3  # < Velocity task mode
    SPEED_WITH_ACCEL_MODE = 4  # < Velocity with acceleration task mode

# ? -------------------------------------------------------------------------
class ChassisExecutor:
    """
    属性成员
    """
    execution_mode_: ExcutionMode = ExcutionMode.IDLE_MODE
    execution_state_: BehaviorStatus = BehaviorStatus.INVALID
    # ? global planner actionlib goal
    global_planner_goal_: GlobalPlannerGoal
    # ? local planner actionlib goal
    local_planner_goal_: LocalPlannerGoal = LocalPlannerGoal()
    # ? velocity control publisher in ROS
    cmd_vel_pub_: rospy.Publisher
    # ? zero twist in form of ROS geometry_msgs::Twist
    zero_twist_: Twist = Twist()
    # ? velocity with accel publisher in ROS
    cmd_vel_acc_pub_: rospy.Publisher
    # ? zero twist with acceleration in form of ROS roborts_msgs::TwistAccel
    zero_twist_accel_: TwistAccel = TwistAccel()

    preempted:bool

    # ----------------------------------------------------------------------
    def __init__(self) -> None:
        # rospy.init_node("ChassisExecutor", anonymous=True)
        """
        属性变量初始化
        """
        # * execution mode of the executor
        self.execution_mode_: ExcutionMode = ExcutionMode.IDLE_MODE
        # ? execution state of the executor (same with behavior state)
        self.execution_state_: BehaviorStatus = BehaviorStatus.INVALID
        # ? global planner actionlib goal
        self.global_planner_goal_: GlobalPlannerGoal = GlobalPlannerGoal()
        self.global_planner_goal_.goal.pose.position.x = 0
        self.global_planner_goal_.goal.pose.position.y = 0

        # ? local planner actionlib goal
        self.local_planner_goal_.route.poses = []
        # ? velocity control publisher in ROS
        self.cmd_vel_pub_ = rospy.Publisher("cmd_vel", Twist, queue_size=1)
        # ? zero twist in form of ROS geometry_msgs::Twist
        self.zero_twist_ = public_variable.twist_zero_
        # ? velocity with accel publisher in ROS
        self.cmd_vel_acc_pub_ = rospy.Publisher("cmd_vel_acc", TwistAccel, queue_size=1)
        # ? zero twist with acceleration in form of ROS roborts_msgs::TwistAccel
        self.zero_twist_accel_.accel.linear.x = 0
        self.zero_twist_accel_.accel.linear.y = 0

        # ! global planner actionlib client
        self.global_planner_client_ = actionlib.SimpleActionClient(
            "global_planner_node_action", GlobalPlannerAction
        )

        # ! local planner actionlib client
        self.local_planner_client_ = actionlib.SimpleActionClient(
            "local_planner_node_action", LocalPlannerAction
        )

        # ! cancel 被取消
        self.preempted = False

        self.global_planner_client_.wait_for_server()
        rospy.loginfo("Global planer server start!")
        self.local_planner_client_.wait_for_server()
        rospy.loginfo("Local planer server start!")
        
    # ----------------------------------------------------------------------
    def Execute(self, exe_param):
        """
        函数重载
        Execute
        """
        if type(exe_param) not in [PoseStamped, Twist, TwistAccel]:
            rospy.logerr("Ececute Params Wrong!")
        elif type(exe_param) == PoseStamped:
            self.execution_mode_ = ExcutionMode.GOAL_MODE
            self.global_planner_goal_.goal = exe_param
            self.global_planner_client_.send_goal(
                self.global_planner_goal_,
                self.GlobalActionClientDoneCallback,
                self.GlobalActionClientActiveCallback,
                self.GlobalPlannerFeedbackCallback,
            )
        elif type(exe_param) == Twist:
            if self.execution_mode_ == ExcutionMode.GOAL_MODE:
                self.Cancel()
            self.execution_mode_ = ExcutionMode.SPEED_MODE
            self.cmd_vel_pub_.publish(exe_param)
        else:
            if self.execution_mode_ == ExcutionMode.GOAL_MODE:
                self.Cancel()
            self.execution_mode_ = ExcutionMode.SPEED_WITH_ACCEL_MODE
            self.cmd_vel_acc_pub_.publish(exe_param)

    # ----------------------------------------------------------------------
    def Cancel(self):
        if self.execution_mode_ == ExcutionMode.IDLE_MODE:
            rospy.logwarn("Nothing to be canceled.")
            self.execution_mode_ = ExcutionMode.IDLE_MODE
        elif self.execution_mode_ == ExcutionMode.GOAL_MODE:
            self.global_planner_client_.cancel_goal()
            self.local_planner_client_.cancel_goal()
            self.execution_mode_ = ExcutionMode.IDLE_MODE
        elif self.execution_mode_ == ExcutionMode.SPEED_MODE:
            self.cmd_vel_pub_.publish(self.zero_twist_)
            self.execution_mode_ = ExcutionMode.IDLE_MODE
        elif self.execution_mode_ == ExcutionMode.SPEED_WITH_ACCEL_MODE:
            self.cmd_vel_acc_pub_.publish(self.zero_twist_accel_)
            time.sleep(0.005)  # 单位为 秒
            self.execution_mode_ = ExcutionMode.IDLE_MODE
        else:
            rospy.logerr("Wrong Execution Mode")

    # ----------------------------------------------------------------------
    def Update(self) -> BehaviorStatus:
        """update
        更新Executor节点状态
        Returns:
            BehaviorStatus: _description_
        """
        state = actionlib.GoalStatus.LOST
        if self.execution_mode_ == ExcutionMode.IDLE_MODE:
            self.execution_state_ = BehaviorStatus.INVALID
        elif self.execution_mode_ == ExcutionMode.GOAL_MODE:
            state = self.global_planner_client_.get_state()
            if state == actionlib.GoalStatus.ACTIVE:
                # rospy.loginfo("%s : ACTIVE", inspect.currentframe().f_code.co_name)
                self.execution_state_ = BehaviorStatus.RUNNING
            elif state == actionlib.GoalStatus.PENDING:
                # rospy.loginfo("%s : PENDING", inspect.currentframe().f_code.co_name)
                self.execution_state_ = BehaviorStatus.RUNNING
            elif state == actionlib.GoalStatus.SUCCEEDED:
                # rospy.loginfo("%s : SUCCEEDED", inspect.currentframe().f_code.co_name)
                self.execution_state_ = BehaviorStatus.SUCCESS
            elif state == actionlib.GoalStatus.ABORTED:
                # rospy.loginfo("%s : ABORTED", inspect.currentframe().f_code.co_name)
                self.execution_state_ = BehaviorStatus.FAILURE
            else:
                rospy.loginfo(
                    "%s ERROR : Can't deal with GoalStatus State",
                    inspect.currentframe().f_code.co_name,
                )
                self.execution_state_ = BehaviorStatus.FAILURE
        elif self.execution_mode_ == ExcutionMode.SPEED_MODE:
            self.execution_state_ = BehaviorStatus.RUNNING
        elif self.execution_mode_ == ExcutionMode.SPEED_WITH_ACCEL_MODE:
            self.execution_state_ == BehaviorStatus.RUNNING
        else:
            rospy.logerr("Wrong Execution Mode")

        return self.execution_state_

    # ----------------------------------------------------------------------
    def GlobalPlannerFeedbackCallback(
        self, global_planner_feedback: GlobalPlannerFeedback
    ):
        """
        @brief Global planner actionlib feedback callback function to send the global planner path to local planner
        @param global_planner_feedback  Global planner actionlib feedback, which mainly consists of global planner path output
        """
        if len(global_planner_feedback.path.poses) != 0:
            self.local_planner_goal_.route = global_planner_feedback.path
            self.local_planner_client_.send_goal(self.local_planner_goal_)

    # ----------------------------------------------------------------------
    def GlobalActionClientDoneCallback(
        self, state: actionlib.GoalStatus, result: GlobalPlannerResult
    ):
        """完成action的回调函数

        Args:
            state (actionlib.GoalStatus): 完成状态
            result (GlobalPlannerResult): 结果
        """
        if state == actionlib.GoalStatus.SUCCEEDED:
            rospy.loginfo("succeed {}".format(result.error_code))
        elif state == actionlib.GoalStatus.ABORTED:
            rospy.loginfo("aborted {}".format(result.error_code))
        elif state == actionlib.GoalStatus.PREEMPTED:
            rospy.loginfo("cancel {}".format(result.error_code))
            self.preempted = True
        # elif state == actionlib.GoalStatus

    # ----------------------------------------------------------------------
    def GlobalActionClientActiveCallback(self):
        """
        Activate 回调函数
        """
        rospy.loginfo("Global Planner Action Activate!")

    # ----------------------------------------------------------------------
