import atexit
import multiprocessing.connection
import time
from typing import Any
import multiprocessing
import py_trees
from py_trees.common import Status as BehaviorStatus
import rospy
from geometry_msgs.msg import PoseStamped
from executor import ChassisExecutor
from datapool import DataPool


# ? ------------------------------------------------------------------------
class Patrol(py_trees.behaviour.Behaviour):
    # ! 底盘控制执行器
    chassis_executor: ChassisExecutor.ChassisExecutor
    # ! 数据池
    data_pool: DataPool.DataPool
    # ! 巡逻点序号
    index_patrol_point: int
    # ! 节点的状态（ 在行为树中的状态
    behavior_status: BehaviorStatus

    # ? 子母线程通信管道
    pipe_parent: multiprocessing.connection.Connection
    pipe_child: multiprocessing.connection.Connection

    execute_thread: multiprocessing.Process

    # ----------------------------------------------------------------------
    def __init__(self,
                 name: str,
                 chassis_executor: ChassisExecutor.ChassisExecutor = None,
                 data_pool: DataPool.DataPool = None):
        super().__init__(name)
        # ! 确保参数合法
        if chassis_executor is None or data_pool is None:
            raise ValueError("INVALID: params contain None value!")
        self.chassis_executor = chassis_executor
        self.data_pool = data_pool

    # ----------------------------------------------------------------------
    def setup(self, **kwargs: Any) -> None:
        print("Patrol setup!")
        self.index_patrol_point = 0
        self.behavior_status = BehaviorStatus.INVALID
        # self.pipe_parent, self.pipe_child = multiprocessing.Pipe()
        # self.execute_thread = multiprocessing.Process(target=self.Executing,
        #                                               args=(self.pipe_child, ))
        # atexit.register(self.execute_thread.terminate)

        return super().setup(**kwargs)

    # ----------------------------------------------------------------------
    def initialise(self) -> None:

        print("Patrol initialise!")
        # self.execute_thread.start()
        self.behavior_status = BehaviorStatus.INVALID

        return super().initialise()

    # ----------------------------------------------------------------------
    def update(self) -> BehaviorStatus:
        if (self.behavior_status == BehaviorStatus.SUCCESS
                or self.behavior_status == BehaviorStatus.INVALID):
            patrol_goal_i: PoseStamped = self.data_pool.decision_params.patrol_points[
                self.index_patrol_point]
            self.chassis_executor.Execute(patrol_goal_i)
            self.index_patrol_point = (self.index_patrol_point + 1) % len(
                self.data_pool.decision_params.patrol_points)

        self.behavior_status = self.chassis_executor.Update()

        # if (self.behavior_status == BehaviorStatus.FAILURE
        #         or self.behavior_status == BehaviorStatus.RUNNING):
        #     return self.behavior_status
        # else:
        #     # elif (
        #     #     self.behavior_status == BehaviorStatus.SUCCESS
        #     #     or self.behavior_status == BehaviorStatus.INVALID
        #     # ):
        #     patrol_goal_i: PoseStamped = self.data_pool.decision_params.patrol_points[
        #         self.index_patrol_point]
        #     self.chassis_executor.Execute(patrol_goal_i)
        #     self.index_patrol_point = (self.index_patrol_point + 1) % len(
        #         self.data_pool.decision_params.patrol_points)
        #     if self.index_patrol_point == len(
        #             self.data_pool.decision_params.patrol_points) - 1:
        #         self.data_pool.patrol_reverse = not self.data_pool.patrol_reverse
        #         print("reverse !")
        #     self.behavior_status = self.chassis_executor.Update()
        return self.behavior_status

    # ----------------------------------------------------------------------
    def terminate(self, new_status: BehaviorStatus) -> None:
        print("Patrol terminate!")
        print(new_status)
        # self.chassis_executor.Cancel()
        # if new_status == BehaviorStatus.FAILURE:
        #     # 状态切换到FAILURE时，取消ChassisExecutor行为
        #     self.chassis_executor.Cancel()
        #     # self.execute_thread.kill()
        return super().terminate(new_status)

    def shutdown(self) -> None:
        self.chassis_executor.Cancel()
        print("Patrol shutdown!")
        return super().shutdown()

    def Executing(self, pipe_connection):
        # patrol_goal_i: PoseStamped = self.data_pool.decision_params.patrol_points[
        #     self.index_patrol_point]
        # self.index_patrol_point = (self.index_patrol_point + 1) % len(
        #     self.data_pool.decision_params.patrol_points)
        # self.chassis_executor.Execute(patrol_goal_i)
        marker_break_ = False
        try:
            while True:
                if marker_break_:
                    break
                self.behavior_status = self.chassis_executor.Update()
                if self.behavior_status == BehaviorStatus.FAILURE or self.behavior_status == BehaviorStatus.RUNNING:
                    pipe_connection.send([self.behavior_status])
                else:
                    patrol_goal_i: PoseStamped = self.data_pool.decision_params.patrol_points[
                        self.index_patrol_point]
                    self.chassis_executor.Execute(patrol_goal_i)
                    self.index_patrol_point = (
                        self.index_patrol_point + 1) % len(
                            self.data_pool.decision_params.patrol_points)
                    # self.behavior_status = self.chassis_executor.Update()
                time.sleep(0.05)
        except KeyboardInterrupt:
            marker_break_ = True
