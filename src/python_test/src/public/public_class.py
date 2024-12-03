from roborts_msgs.msg import RobotInfo
from geometry_msgs.msg import PoseStamped

from tf.transformations import quaternion_from_euler

# *******************************************************************


class RobotInfoVariables:
    robot_ID: int
    robot_hp: int
    robot_bullets: int
    robot_max_hp: int
    robot_max_bullets: int
    robot_battery_enery: float
    robot_color: int
    # devices enable
    chassis_enable: bool
    shooter_enable: bool
    fricwheel_enable: bool
    # 自身位姿
    robot_pose: PoseStamped
    # 机器人自身生存状态
    robot_live_in: bool
    # 机器人是否受到撞击
    robot_be_impacked: bool
    
    # * 底盘速度
    robot_linear_x:float
    robot_linear_y:float
    robot_angular_z: float
    
    # * 云台角度
    robot_gimbal_yaw:float
    robot_gimbal_pitch:float


    # 受伤害部位以及次数
    robot_up:int
    robot_down:int
    robot_left:int
    robot_right:int

    # ----------------------------------------------------------------
    def __init__(self) -> None:
        self.robot_ID = 0  #
        self.robot_hp = 0  ##
        self.robot_bullets = 0
        self.robot_max_hp = 0
        self.robot_max_bullets = 0
        self.robot_battery_enery = 1.0  # !初始电量
        self.robot_color = RobotInfo.UNKONWN #
        self.chassis_enable = False #
        self.shooter_enable = False #
        self.fricwheel_enable = False #
        # * 自身位姿
        self.robot_pose = PoseStamped() ####
        self.robot_pose.pose.position.x = 0
        self.robot_pose.pose.position.y = 0
        self.robot_pose.pose.position.z = 0
        self.robot_pose.pose.orientation = quaternion_from_euler(ai=0,
                                                                 aj=0,
                                                                 ak=0)
        # * 机器人生存状态
        self.robot_live_in = True
        # * 机器人是否受到撞击
        self.robot_be_impacked = False  ##
        
        # * 速度
        self.robot_linear_x = 0.0 ###
        self.robot_linear_y=0.0 ###
        self.robot_angular_z = 0.0 ###


         # 受伤害部位以及次数
        self.robot_up = 0
        self.robot_down = 0
        self.robot_left = 0
        self.robot_right = 0
    # ----------------------------------------------------------------
    def set_from_robotinfo_msg(self,robot_info_msg:RobotInfo):
        # ID
        self.robot_ID = robot_info_msg.id
        # 颜色
        self.robot_color = robot_info_msg.robot_color
        # 血量
        # self.robot_hp = robot_info_msg.remain_hp
        # self.robot_max_hp = robot_info_msg.max_hp
        # 自弹量
        # self.robot_bullets = robot_info_msg.remain_bullets
        # self.robot_max_bullets = robot_info_msg.max_bullets
        # 电量
        # self.robot_battery_enery = robot_info_msg.
        # devices enable
        self.chassis_enable = robot_info_msg.chassis_enable
        self.shooter_enable = robot_info_msg.shooter_enable
        self.fricwheel_enable = robot_info_msg.fricwheel_enable


# ********************************************************************************


class DamageInfoVariables:
    damage_type: int
    damage_source: int

    def __init__(self) -> None:
        self.damage_type = 0
        self.damage_source = 0


# ******************************************************************************


class ShootInfoVariables:
    #robot shoot data
    frequency: int
    speed: float

    def __init__(self) -> None:
        self.frequency = 0
        self.speed = 0.


# *****************************************************************************


class AttackVariables:
    attacked_time_recorder_size_limit: int
    being_attacking: bool
    attacked_time_recorder: list

    def __init__(self) -> None:
        self.being_attacking = False
        self.attacked_time_recorder = []
        self.attacked_time_recorder_size_limit = 10


# *****************************************************************************


class Enermy:
    pose_stamped: PoseStamped

    def __init__(self) -> None:
        self.pose_stamped = PoseStamped()
        self.pose_stamped.pose.position.x = 0
        self.pose_stamped.pose.position.y = 0
        self.pose_stamped.pose.position.z = 0
        self.pose_stamped.pose.orientation = quaternion_from_euler(ai=0,
                                                                   aj=0,
                                                                   ak=0)


# *****************************************************************************


class DecisionParams:
    patrol_points: list  # 元素为 PoseStamped 类型
    # ! 临界量：
    limit_hp: int  # 血量
    limit_bullets: int  # 自弹量
    limit_battery_enery: float  # 电池电量---百分比%换算

    def __init__(self) -> None:
        self.patrol_points = []
        self.limit_hp = 100
        self.limit_bullets = 10
        self.limit_battery_enery = 0.1


# *****************************************************************************
