from typing import Any

# Py Trees
import py_trees
from py_trees.common import Status as BehaviorStatus

# ROS
import rospy
from geometry_msgs.msg import PoseStamped

# Self
from executor import ChassisExecutor
from datapool import DataPool


class Stop(py_trees.behaviour.Behaviour):

    chassis_executor_: ChassisExecutor.ChassisExecutor
    data_pool_: DataPool.DataPool
    # 节点的状态（在行为树中的状态）
    behavior_status: BehaviorStatus

    def __init__(self,
                 name: str,
                 chassis_executor: ChassisExecutor.ChassisExecutor = None,
                 data_pool: DataPool.DataPool = None):
        super().__init__(name)
        # 确保参数合法
        if chassis_executor is None or data_pool is None:
            raise ValueError("INVALID: params contain None value!")
        self.chassis_executor_ = chassis_executor
        self.data_pool_ = data_pool
        self.behavior_status = BehaviorStatus.INVALID

    def setup(self, **kwargs: Any) -> None:
        # 初始化时调用
        return super().setup(**kwargs)

    def initialise(self) -> None:
        # 每次行为开始时调用
        self.behavior_status = BehaviorStatus.INVALID
        # rospy.loginfo(f"Initialized with behavior_status: {self.behavior_status}")
        return super().initialise()

    def update(self) -> BehaviorStatus:
        # 这里我们执行停止命令，直接调用 chassis_executor 的 Cancel 方法
        if self.behavior_status == BehaviorStatus.INVALID:
            # 停止机器人，取消任何当前执行的任务
            rospy.loginfo("Stopping robot...")
            self.chassis_executor_.Cancel()
            self.behavior_status = BehaviorStatus.RUNNING  # 停止命令正在执行
        elif self.behavior_status == BehaviorStatus.RUNNING:
            # 任务正在停止时，更新执行状态
            rospy.loginfo("Stopping robot in running state...")
            self.behavior_status = self.chassis_executor_.Update()
            
            # 如果停止成功，返回成功状态
            if self.behavior_status == BehaviorStatus.SUCCESS:
                rospy.loginfo("Robot stopped successfully")
                return self.behavior_status
            # 如果停止失败，返回失败状态
            elif self.behavior_status == BehaviorStatus.FAILURE:
                rospy.loginfo("Failed to stop the robot")
                return self.behavior_status
        else:
            # 其他状态，可能是已经停止或者失败
            rospy.loginfo("Stopping completed, no further action required.")
            return self.behavior_status

        return self.behavior_status

    def terminate(self, new_status: BehaviorStatus) -> None:
        # 每次行为树节点终止时调用
        rospy.loginfo(f"Terminating Stop Node with status: {new_status}")
        if self.behavior_status == BehaviorStatus.RUNNING:
            rospy.loginfo("Canceling active goal execution during termination...")
            self.chassis_executor_.Cancel()

        return super().terminate(new_status)
