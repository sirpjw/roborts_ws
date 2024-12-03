# Py trees
import py_trees
from py_trees.common import Status as BehaviorStatus

# ROS
import rospy
from geometry_msgs.msg import Twist, PoseStamped
from roborts_msgs.msg import GimbalAngle
from roborts_msgs.srv import FricWhl, FricWhlRequest, ShootCmd, ShootCmdRequest

# Self
from enum import Enum
from enum import unique
from public import public_variable


@unique
class ExcutionMode(Enum):
    IDLE_MODE = 1  #  Default idle mode with no task
    ANGLE_MODE = 2  #  Angle task mode
    FRICWHL_MODE = 3  # fricwhl
    SHOOTCMD_MODE = 4  # shootcmd


class GimbalExecutor:
    # ! execution mode of the executor
    excution_mode_: ExcutionMode = ExcutionMode.IDLE_MODE
    # ! execution state of the executor (same with behavior state)
    execution_state_: BehaviorStatus = BehaviorStatus.INVALID

    # ! gimbal angle control publisher in ROS
    cmd_gimbal_angle_pub_: rospy.Publisher

    # ! gimbal shooter service client
    shoot_cmd_clinet_: rospy.ServiceProxy
    # ! gimbal FricWhl service client
    fricwhl_client_: rospy.ServiceProxy

    # service的反馈信息
    response_received: bool

    def __init__(self) -> None:
        if not rospy.core.is_initialized():
            rospy.init_node("GimbalExecutor", anonymous=True)
        # rospy.init_node("GimbalExecutor", anonymous=True)
        self.cmd_gimbal_angle_pub_ = rospy.Publisher(name="cmd_gimbal_angle",
                                                     data_class=GimbalAngle,
                                                     queue_size=1)
        # 开启摩擦轮客户端
        self.fricwhl_client_ = rospy.ServiceProxy("cmd_fric_wheel", FricWhl)
        # 射击🌠客户端
        self.shoot_cmd_clinet_ = rospy.ServiceProxy("cmd_shoot", ShootCmd)

        self.excution_mode_ = ExcutionMode.IDLE_MODE
        self.execution_state_ = BehaviorStatus.INVALID

        self.response_received = False

    def Execute(self, exe_param):
        param_type = type(exe_param)
        if param_type not in [GimbalAngle, FricWhlRequest, ShootCmdRequest]:
            raise ValueError("GimbalExecutor Execute Param Invalid !")
        elif param_type == GimbalAngle:
            gimbal_angle: GimbalAngle = exe_param
            self.excution_mode_ = ExcutionMode.ANGLE_MODE
            self.cmd_gimbal_angle_pub_.publish(gimbal_angle)
            # return True
        elif param_type == FricWhlRequest:
            fricwhl_request: FricWhlRequest = exe_param
            self.excution_mode_ = ExcutionMode.FRICWHL_MODE
            try:
                response_ = self.fricwhl_client_(
                    fricwhl_request.open)  # received
                self.response_received = response_
                # return response_
            except rospy.ServiceException as e:
                print("GimbalExecutor Execute fric Failed !", e)
                self.execution_state_ = ExcutionMode.IDLE_MODE
                self.response_received = False
                # return False
        else:
            self.excution_mode_ = ExcutionMode.SHOOTCMD_MODE
            try:
                shoot_cmd_request: ShootCmdRequest = exe_param
                response_ = self.shoot_cmd_clinet_(
                    shoot_cmd_request.mode,
                    shoot_cmd_request.number)  # received
                self.response_received = response_
                # return response_
            except rospy.ServiceException as e:
                print("GimbalExecutor Execute shoot_cmd Failed !", e)
                self.execution_state_ = ExcutionMode.IDLE_MODE
                self.response_received = False
                # return False

    def Update(self) -> BehaviorStatus:
        if self.excution_mode_ == ExcutionMode.IDLE_MODE:
            self.execution_state_ = BehaviorStatus.INVALID
        elif (self.excution_mode_ == ExcutionMode.ANGLE_MODE):
            self.execution_state_ = BehaviorStatus.RUNNING
        elif (self.excution_mode_ == ExcutionMode.FRICWHL_MODE
              or self.excution_mode_ == ExcutionMode.SHOOTCMD_MODE):
            if self.response_received:
                self.execution_state_ = BehaviorStatus.SUCCESS
            else:
                self.execution_state_ = BehaviorStatus.FAILURE
        else:
            rospy.logerr("Wrong Execution Mode")
        return self.execution_state_

    def Cancel(self, STOP=False):
        """
            @brief Cancel the current task and deal with the mode transition
        """
        if self.excution_mode_ == ExcutionMode.IDLE_MODE:
            rospy.logwarn("Nothing to be canceled.")
        elif self.excution_mode_ == ExcutionMode.ANGLE_MODE:
            self.cmd_gimbal_angle_pub_.publish(
                public_variable.gimbal_angle_zero_relative_)
            self.excution_mode_ = ExcutionMode.IDLE_MODE
        elif (self.excution_mode_ == ExcutionMode.SHOOTCMD_MODE
              or self.excution_mode_ == ExcutionMode.FRICWHL_MODE):
            shoot_cmd_request = ShootCmdRequest()
            shoot_cmd_request.mode = 0
            shoot_cmd_request.number = 0
            self.Execute(shoot_cmd_request)
            if STOP:
                fricwhl_request: FricWhlRequest = FricWhlRequest()
                fricwhl_request.open = False
                try:
                    response_ = self.fricwhl_client_(
                        fricwhl_request.open)  # received
                    rospy.loginfo("GimbalExecutor Cancel fric received: ",
                                  response_.received)
                    self.response_received = response_.received
                except rospy.ServiceException as e:
                    print("GimbalExecutor Cancel fric Failed !", e)
                    self.execution_state_ = ExcutionMode.IDLE_MODE
            self.excution_mode_ = ExcutionMode.IDLE_MODE
        else:
            rospy.logerr("Wrong Execution Mode")
