# from typing import Any

# # Py Trees
# import py_trees
# from py_trees.common import Status as BehaviorStatus

# # ROS
# import rospy
# from geometry_msgs.msg import PoseStamped

# # Self
# from executor import ChassisExecutor
# from datapool import DataPool


# class MoveToGoal(py_trees.behaviour.Behaviour):

#     chassis_executor_: ChassisExecutor.ChassisExecutor
#     data_pool_: DataPool.DataPool
#     # ! 节点的状态（ 在行为树中的状态
#     behavior_status: BehaviorStatus

#     def __init__(self,
#                  name: str,
#                  chassis_executor: ChassisExecutor.ChassisExecutor = None,
#                  data_pool: DataPool.DataPool = None):
#         super().__init__(name)
#         # ! 确保参数合法
#         if chassis_executor is None or data_pool is None:
#             raise ValueError("INVALID: params contain None value!")
#         self.chassis_executor_ = chassis_executor
#         self.data_pool_ = data_pool
#         self.behavior_status = BehaviorStatus.INVALID

#     def setup(self, **kwargs: Any) -> None:
#         return super().setup(**kwargs)

#     def initialise(self) -> None:
#         self.behavior_status = BehaviorStatus.INVALID
#         return super().initialise()

#     def update(self) -> ChassisExecutor.BehaviorStatus:
#         if self.behavior_status==BehaviorStatus.INVALID:
#             self.chassis_executor_.Execute(self.data_pool_.my_goal)
#         else:
#             self.chassis_executor_.Cancel()
#         self.behavior_status = self.chassis_executor_.Update()
#         return self.behavior_status

#     def terminate(self, new_status: ChassisExecutor.BehaviorStatus) -> None:
#         self.chassis_executor_.Cancel()
#         return super().terminate(new_status)


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


class MoveToGoal(py_trees.behaviour.Behaviour):

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
        # rospy.loginfo(f"Current behavior_status: {self.behavior_status}")
        # rospy.loginfo("111111111111111111111111111")

        # 如果行为状态是 INVALID，说明目标还没有开始执行，执行目标
        if self.behavior_status == BehaviorStatus.INVALID:
            # rospy.loginfo("Executing goal...")
            self.chassis_executor_.Execute(self.data_pool_.my_goal)
            self.behavior_status = BehaviorStatus.RUNNING  # 如果目标正在执行
        elif self.behavior_status == BehaviorStatus.RUNNING:
            # 如果目标正在执行，更新目标状态
            # rospy.loginfo("Updating goal execution...")
            self.behavior_status = self.chassis_executor_.Update()
            # rospy.loginfo(f"Updated behavior_status: {self.behavior_status}")

            # 如果执行成功，返回成功状态
            if self.behavior_status == BehaviorStatus.SUCCESS:
                # rospy.loginfo("Goal execution succeeded")
                return self.behavior_status
            # 如果执行失败，返回失败状态
            elif self.behavior_status == BehaviorStatus.FAILURE:
                # rospy.loginfo("Goal execution failed")
                return self.behavior_status
        else:
            # 其他状态，可能是完成或者失败，执行取消
            # rospy.loginfo("Canceling execution...")
            self.chassis_executor_.Cancel()

        return self.behavior_status

    def terminate(self, new_status: BehaviorStatus) -> None:
        # rospy.loginfo("222222222222222222222222")
        # rospy.loginfo(f"Terminating with new status: {new_status}")
        # 每次行为树节点终止时调用
        if self.behavior_status == BehaviorStatus.RUNNING:
            # rospy.loginfo("Canceling active goal execution...")
            self.chassis_executor_.Cancel()


        return super().terminate(new_status)


