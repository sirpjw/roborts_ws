import os
from typing import Any
import rospy
import py_trees
from py_trees.common import Status as BehaviorStatus

from roborts_msgs.srv import FricWhl, FricWhlRequest
from roborts_msgs.srv import ShootCmd, ShootCmdRequest

from datapool import DataPool
from executor import GimbalExecutor
from std_msgs.msg import Int32

# class ShooterAwake(py_trees.behaviour.Behaviour):

#     #* 属性变量
#     gimbal_executor_: GimbalExecutor.GimbalExecutor
#     data_pool_: DataPool.DataPool
#     which_awake: str

#     def __init__(self,
#                  name: str,
#                  data_pool: DataPool.DataPool = None,
#                  gimbal_executor: GimbalExecutor.GimbalExecutor = None):
#         super().__init__(name)
#         if gimbal_executor is None or data_pool is None:
#             raise ValueError("INVALID: params contain None value!")
#         self.gimbal_executor_ = gimbal_executor
#         self.data_pool_ = data_pool
#         self.which_awake = ""

#     def setup(self, **kwargs: Any) -> None:
#         return super().setup(**kwargs)

#     def initialise(self) -> None:
#         fric_whl_request = FricWhlRequest()
#         fric_whl_request.open = True
#         self.gimbal_executor_.Execute(fric_whl_request)
#         self.which_awake = "fric"

#     def update(self) -> GimbalExecutor.BehaviorStatus:
#         new_status = BehaviorStatus.INVALID
#         if self.which_awake not in ["fric", "shooter"]:
#             new_status = BehaviorStatus.FAILURE
#             raise ValueError("which_awake is invalid!")
#         if self.which_awake == "fric":
#             new_status = self.gimbal_executor_.Update()
#             if new_status != BehaviorStatus.FAILURE: # SUCCESS
#                 shoot_cmd_request = ShootCmdRequest()
#                 shoot_cmd_request.mode = shoot_cmd_request.STOP
#                 shoot_cmd_request.number = 0
#                 self.gimbal_executor_.Execute(shoot_cmd_request)
#                 self.which_awake = "shooter"
#                 new_status = BehaviorStatus.RUNNING
#         else:  #! self.which_awake == "shooter"
#             new_status = self.gimbal_executor_.Update()
#             self.which_awake = ""
#         return new_status

#     def terminate(self, new_status: GimbalExecutor.BehaviorStatus) -> None:
#         return super().terminate(new_status)

class ShooterAwake(py_trees.behaviour.Behaviour):

    # 属性变量
    gimbal_executor_: GimbalExecutor.GimbalExecutor
    data_pool_: DataPool.DataPool
    which_awake: str
    shoot_timer_: rospy.Timer
    ammunition_pub_: rospy.Publisher  # 发布子弹数量的Publisher

    def __init__(self,
                 name: str,
                 data_pool: DataPool.DataPool = None,
                 gimbal_executor: GimbalExecutor.GimbalExecutor = None):
        super().__init__(name)
        if gimbal_executor is None or data_pool is None:
            raise ValueError("INVALID: params contain None value!")
        self.gimbal_executor_ = gimbal_executor
        self.data_pool_ = data_pool
        self.which_awake = ""
        self.shoot_timer_ = None  # 定时器初始化为 None
        self.ammunition_pub_ = rospy.Publisher('set_ammunition', Int32, queue_size=10)

    def setup(self, **kwargs: Any) -> None:
        return super().setup(**kwargs)

    def initialise(self) -> None:
        """
        初始化时根据数据池配置判断是否启用射击系统，并定时执行射击命令
        """
        # 根据 fricwheel_enable 的值决定摩擦轮的启用与否
        if self.data_pool_.robotinfo_variables.fricwheel_enable:
            # 启动摩擦轮
            fric_whl_request = FricWhlRequest()
            fric_whl_request.open = True
            self.gimbal_executor_.Execute(fric_whl_request)
            self.which_awake = "fric"
        else:
            # 关闭摩擦轮
            fric_whl_request = FricWhlRequest()
            fric_whl_request.open = False
            self.gimbal_executor_.Execute(fric_whl_request)
            self.which_awake = "fric_stop"

        # 如果射击系统启用，开始定时发射子弹
        if self.data_pool_.robotinfo_variables.shooter_enable:
            # 创建一个定时器，每秒钟调用一次射击函数
            self.shoot_timer_ = rospy.Timer(rospy.Duration(1), self.shoot_once)

    def shoot_once(self, event):
        """
        每秒钟发射一次子弹
        """
        # 判断子弹是否充足
        if (self.data_pool_.robotinfo_variables.robot_bullets <= 0 
            or not self.data_pool_.robotinfo_variables.shooter_enable):
            if self.shoot_timer_:
                self.shoot_timer_.shutdown()  # 停止射击定时器
            return

        # 射击命令：每秒发射一次
        shoot_cmd_request = ShootCmdRequest()
        shoot_cmd_request.mode = shoot_cmd_request.ONCE  # 单次射击
        shoot_cmd_request.number = 1  # 发射1颗子弹
        self.gimbal_executor_.Execute(shoot_cmd_request)
        rospy.loginfo("Shooter executed: shot once")

        # 更新子弹数量
        self.data_pool_.robotinfo_variables.robot_bullets -= 1
        rospy.loginfo(f"Remaining bullets: {self.data_pool_.robotinfo_variables.robot_bullets}")

        # 发布更新的子弹数量
        pub_ans = Int32()
        pub_ans.data = self.data_pool_.robotinfo_variables.robot_bullets
        self.ammunition_pub_.publish(pub_ans)

    def update(self) -> GimbalExecutor.BehaviorStatus:
        """
        更新射击状态，如果射击成功，则继续执行任务
        """
        return self.gimbal_executor_.Update()
        # if self.which_awake not in ["fric", "shooter"]:
        #     raise ValueError("which_awake is invalid!")
        
        # if self.which_awake == "fric":
        #     return self.gimbal_executor_.Update()
        
        # elif self.which_awake == "shooter":
        #     return self.gimbal_executor_.Update()

        # return GimbalExecutor.BehaviorStatus.FAILURE

    def terminate(self, new_status: GimbalExecutor.BehaviorStatus) -> None:
        """
        终止时停止射击并关闭定时器
        """
        if self.shoot_timer_:
            self.shoot_timer_.shutdown()
            self.shoot_timer_ = None
        
        # 停止射击
        shoot_cmd_request = ShootCmdRequest()
        shoot_cmd_request.mode = shoot_cmd_request.STOP  # 停止射击
        shoot_cmd_request.number = 0
        self.gimbal_executor_.Execute(shoot_cmd_request)

        return super().terminate(new_status)
