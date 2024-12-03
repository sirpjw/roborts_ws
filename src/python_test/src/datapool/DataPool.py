import roslib.packages
import rospy
from rospy import Subscriber, Publisher
from roborts_msgs.msg import RobotInfo, RobotDamage, RobotShoot
from geometry_msgs.msg import PoseStamped, Quaternion
from nav_msgs.msg import Odometry, OccupancyGrid
from tf.transformations import quaternion_from_euler
import tf
from rospkg import RosPack
import roslib


from std_msgs.msg import Int32, Float64, Bool
import os
import sys
sys.path.append("/home/sirpjw/roborts_ws/src/python_test/src")
sys.path.append("/home/sirpjw/roborts_ws/src")
from public import public_class, public_variable, public_function
from python_test import decision_pb2

import google.protobuf.text_format as pb_text_format


# *****************************************************************************8
class DataPool:
    # * 记录和保存机器人相关信息的变量们
    robotinfo_variables: public_class.RobotInfoVariables  # !机器人状态
    damageinfo_variables: public_class.DamageInfoVariables  # !机器人受攻击信息 有啥用？？？
    shooterinfo_variables: public_class.ShootInfoVariables  # !机器人枪口信息
    robot_attack_variables: public_class.AttackVariables  # !机器人被攻击信息和记录器
    global_map: OccupancyGrid
    decision_params: public_class.DecisionParams

    
    robot_info_sub: Subscriber  # ! 机器人状态订阅器
    damage_info_sub: Subscriber  # ! 受攻击信息订阅器
    shooter_info_sub: Subscriber  # ! 机器人枪口发射信息订阅器


    set_blood_info_sub:Subscriber #血量发布
    set_ammunition_info_sub:Subscriber #弹药量发布
    set_destination_x_info_sub:Subscriber #目的地x发布
    set_destination_y_info_sub:Subscriber #目的地y发布
    set_manual_control_info_sub:Subscriber
    set_frictionweel_info_sub:Subscriber #摩擦轮发布
    set_stop_info_sub:Subscriber #停止信息发布
    set_bullet_info_sub:Subscriber #子弹开关发布



    odom_info_sub: Subscriber  # ! 里程计信息包括里程计中机器人的位姿和速度
    robot_pose_sub: Subscriber  #! Pose 机器人位置订阅器
    global_map_sub: Subscriber

    # 私有变量
    current_package_path: str

    # simulate
    simulate: bool

    #? 前端控制开始
    system_run: bool
    #? 切换前端控制标识
    manual_control: bool
    #? 要移动到的目标地点
    my_goal: PoseStamped
    #? gimbal相对底盘的角度
    gimbal_angle_relative: Quaternion

    #? TF 树监听器
    tf_listerner: tf.TransformListener

    # -----------------------------------------------------------------
    def __init__(self, decision_config_filepath: str = None) -> None:
        """初始化函数
        Args:
            decision_config_filepath (str, optional): _description_. Defaults to None.
        """
        self.current_package_path = RosPack().get_path("python_test")
        # !判断配置文件是否有效
        if decision_config_filepath is None or not os.path.isfile(
                os.path.join(self.current_package_path,
                             decision_config_filepath)):
            #! 无效则抛出异常
            raise ValueError(
                "Decision Config File doesn't Exist! \n\tInvalid decision_config_filepath"
            )
        # ? 变量初始化
        # 基础变量
        self.robotinfo_variables = public_class.RobotInfoVariables()
        self.damageinfo_variables = public_class.DamageInfoVariables() #这有啥用？？
        self.shooterinfo_variables = public_class.ShootInfoVariables()
        self.decision_params = public_class.DecisionParams()
        # * 机器人被攻击的信息
        self.robot_attack_variables = public_class.AttackVariables()
        # 消息订阅器
        self.robot_info_sub = Subscriber(name="robot_info",
                                         data_class=RobotInfo,
                                         callback=self.CallBackRobotInfoParse)
        self.damage_info_sub = Subscriber(
            name="robot_damage",
            data_class=RobotDamage,
            callback=self.CallBackDamageInfoParse)
        self.shooter_info_sub = Subscriber(
            name="robot_shoot",
            data_class=RobotShoot,
            callback=self.CallBackShooterInfoParse)
        self.odom_info_sub = Subscriber(name="odom",
                                        data_class=Odometry,
                                        callback=self.CallBackOdomInfoParse)
        # * 机器人位置订阅器
        self.robot_pose_sub = Subscriber(
            name="amcl_pose",
            data_class=PoseStamped,
            callback=self.CallBackRobotPoseInfoParse)
        # * 全局代价地图订阅器
        self.global_map_sub = Subscriber(
            name="globalmap/globalmap/costmap",
            data_class=OccupancyGrid,
            callback=self.CallBackGolbalMapInfoParse)

        
        # * 前端控制标识
        self.manual_control = False
        # * 前端控制开始
        self.system_run = True
        # * 移动的目标地点
        self.my_goal = PoseStamped()
        self.my_goal.pose.position.x = 3
        self.my_goal.pose.position.y = 1
        self.my_goal.pose.orientation = public_function.QuaternionFromEuler(
            yaw=0.0, pitch=0.0, roll=0.0)
        # * 云台gimbal相对底盘的角度
        self.gimbal_angle_relative = public_function.QuaternionFromEuler(
            yaw=0.0, pitch=0.0, roll=0.0)
        
        self.set_blood_info_sub= Subscriber(name="set_blood",data_class=Int32,callback=self.CallBacksetblood)
        self.set_ammunition_info_sub= Subscriber(name="set_ammunition",data_class=Int32,callback=self.CallBacksetammunition)
        self.set_destination_x_info_sub= Subscriber(name="set_destination_x",data_class=Float64,callback=self.CallBacksetdestinationx)
        self.set_destination_y_info_sub= Subscriber(name="set_destination_y",data_class=Float64,callback=self.CallBacksetdestinationy)
        self.set_manual_control_info_sub= Subscriber(name="set_manual_control",data_class=Bool,callback=self.CallBacksetmanualcontrol)
        self.set_frictionweel_info_sub= Subscriber(name="set_frictionweel",data_class=Bool,callback=self.CallBacksetfrictionweel)
        self.set_stop_info_sub= Subscriber(name="set_stop",data_class=Bool,callback=self.CallBacksetstop)
        self.set_bullet_info_sub= Subscriber(name="set_bullet",data_class=Bool,callback=self.CallBacksetbullet)
        
        self.global_map = OccupancyGrid()

        # ! 放在initial方法的最后，加载配置文件
        self.ParseConfig(decision_config_filepath)

        # ! 初始化tf树监听器
        # self.tf_listerner = tf.TransformListener()
        # self.tf_listerner.waitForTransform(target_frame="gimbal",
        #                                    source_frame="base_link",
        #                                    time=rospy.Time.now(),
        #                                    timeout=rospy.Duration(0.5))

    # -----------------------------------------------------------------
    def getMyPose(self) -> PoseStamped:
        """获取自身位置

        Returns:
            PoseStamped: 返回自身位置
        """
        return self.robotinfo_variables.robot_pose

    # -----------------------------------------------------------------
    def getRobotHP(self) -> int:
        """获取自身当前血量

        Returns:
            int: 血量信息
        """
        return self.robotinfo_variables.robot_hp

    # -----------------------------------------------------------------
    def getGlobalMap(self) -> OccupancyGrid:
        """获取全局代价地图

        Returns:
            OccupancyGrid: 全局地图/代价地图
        """
        return self.global_map

    # -----------------------------------------------------------------
    def getGimbalAngleRelative(self) -> Quaternion:
        """获取当前gimbal相对于底盘的角度

        Returns:
            Quaternion: 返回一个四元数，包括了pitch、yaw、roll的角度
        """
        self.updateGimbalAngleRelative()
        return self.gimbal_angle_relative

    # -----------------------------------------------------------------
    def updateGimbalAngleRelative(self):
        # * 从tf树查取
        # (translation, rotation) = self.tf_listerner.lookupTransform(
        #     target_frame="gimbal",
        #     source_frame="base_link",
        #     time=rospy.Time.now())
        # print(translation, rotation)
        # self.gimbal_angle_relative.x = rotation[0]
        # self.gimbal_angle_relative.y = rotation[1]
        # self.gimbal_angle_relative.z = rotation[2]
        # self.gimbal_angle_relative.w = rotation[3]
        self.gimbal_angle_relative.x = 0
        self.gimbal_angle_relative.y = 0
        self.gimbal_angle_relative.z = 0
        self.gimbal_angle_relative.w = 1

    # -----------------------------------------------------------------

    # * 订阅机器人状态信息的回调函数
    def CallBackRobotInfoParse(self, robot_info: RobotInfo):
        self.robotinfo_variables.set_from_robotinfo_msg(
            robot_info_msg=robot_info)

    # -----------------------------------------------------------------
    # * 订阅装甲板被攻击信息的回调函数
    def CallBackDamageInfoParse(self, damage_info: RobotDamage):
        damage_type = damage_info.damage_type
        if damage_type == RobotDamage.ARMOR:  # !装甲板被攻击
            time_now = rospy.Time.now().to_nsec()
            # !加🔒
            public_variable.lock_being_attacking.acquire()
            # ! 更新被攻击状态
            self.robot_attack_variables.being_attacking = True
            public_variable.lock_being_attacking.release()
            # ! ☝  释放🔓
            self.robot_attack_variables.attacked_time_recorder.append(time_now)
            # ! 控制一下时间记录器的size
            if (len(self.robot_attack_variables.attacked_time_recorder) > self.
                    robot_attack_variables.attacked_time_recorder_size_limit):
                self.robot_attack_variables.attacked_time_recorder.pop(0)
            # ! 血量扣除
            hp_compute = (self.robotinfo_variables.robot_hp -
                          (damage_info.damage_source + 1) *
                          self.public_variables.DAMAGE_VALUE)
            self.robotinfo_variables.robot_hp = hp_compute if hp_compute >= 0 else 0
            if damage_info.damage_source == RobotDamage.FORWARD :
                self.robotinfo_variables.robot_up +=1
            elif damage_info.damage_source == RobotDamage.LEFT :
                self.robotinfo_variables.robot_left +=1
            elif damage_info.damage_source == RobotDamage.BACKWARD :
                self.robotinfo_variables.robot_down +=1
            elif damage_info.damage_source == RobotDamage.RIGHT :
                self.robotinfo_variables.robot_right +=1

        elif damage_type == RobotDamage.OBSTACLE_COLLISION:  # ! 装到障碍物
            self.robotinfo_variables.robot_be_impacked = True  # ! 更新撞击变量

    # -----------------------------------------------------------------
    # * 订阅枪口射击信息的回调函数
    def CallBackShooterInfoParse(self, shooter_info: RobotShoot):
        self.shooterinfo_variables.frequency = shooter_info.frequency
        self.shooterinfo_variables.speed = shooter_info.speed

    # -----------------------------------------------------------------
    # * 订阅里程计信息的回调函数
    def CallBackOdomInfoParse(self, odom_info: Odometry):
        self.robotinfo_variables.robot_linear_x = odom_info.twist.twist.linear.x
        self.robotinfo_variables.robot_linear_y = odom_info.twist.twist.linear.y
        self.robotinfo_variables.robot_angular_z = odom_info.twist.twist.angular.z

    # -----------------------------------------------------------------
    # * 订阅机器人位置信息的回调函数
    def CallBackRobotPoseInfoParse(self, pose_info: PoseStamped):
        self.robotinfo_variables.robot_pose = pose_info

    
    def CallBacksetblood(self,blood: Int32):
        self.robotinfo_variables.robot_hp = blood.data
        # rospy.loginfo(f"get_blood value: {blood.data}")
        # rospy.loginfo(f"data_pool value: {self.robotinfo_variables.robot_hp}")

    def CallBacksetammunition(self,x: Int32):
        self.robotinfo_variables.robot_bullets = x.data
        
    def CallBacksetdestinationx(self,x: Float64):
        self.my_goal.pose.position.x = x.data
    
    def CallBacksetdestinationy(self,x: Float64):
        self.my_goal.pose.position.y = x.data
        
    def CallBacksetmanualcontrol(self,x: Bool):
        self.manual_control = x.data

    def CallBacksetfrictionweel(self,x: Bool):
        self.robotinfo_variables.fricwheel_enable = x.data

    def CallBacksetstop(self,x: Bool):
        self.robotinfo_variables.chassis_enable = x.data
    
    def CallBacksetbullet(self,x: Bool):
        self.robotinfo_variables.shooter_enable = x.data


    # set_blood_info_sub:Subscriber #血量发布
    # set_ammunition_info_sub:Subscriber #弹药量发布
    # set_destination_x_info_sub:Subscriber #目的地x发布
    # set_destination_y_info_sub:Subscriber #目的地y发布
    # set_frictionweel_info_sub:Subscriber #摩擦轮发布
    # set_stop_info_sub:Subscriber #停止信息发布
    # set_bullet_info_sub:Subscriber #子弹开关发布
    
    # -----------------------------------------------------------------
    # * 订阅全局代价地图
    def CallBackGolbalMapInfoParse(self, global_map_info: OccupancyGrid):
        self.global_map = global_map_info

    # -----------------------------------------------------------------
    # * 解析配置文件
    def ParseConfig(self, config_path_relative_package: str):
        config_read = decision_pb2.DecisionConfig()
        with open(
                os.path.join(self.current_package_path,
                             config_path_relative_package), "r") as f:
            data = f.read()
            pb_text_format.Parse(text=data, message=config_read)
            f.close()
        # 血量
        self.robotinfo_variables.robot_max_hp = config_read.max_hp
        self.robotinfo_variables.robot_hp = config_read.max_hp
        # 自弹量
        self.robotinfo_variables.robot_max_bullets = config_read.max_bullets
        self.robotinfo_variables.robot_bullets = config_read.max_bullets
        # 血量、自弹量、电池电量 的临界值
        self.decision_params.limit_hp = config_read.limit_hp
        self.decision_params.limit_bullets = config_read.limit_bullets
        self.decision_params.limit_battery_enery = config_read.limit_battery_enery
        # 底盘和云台及枪口可用
        self.robotinfo_variables.chassis_enable = True
        self.robotinfo_variables.shooter_enable = True
        # 是否为仿真状态
        self.simulate = config_read.simulate
        # 仿真状态下摩擦轮默认开启
        if self.simulate:
            self.robotinfo_variables.fricwheel_enable = True
        else:
            self.robotinfo_variables.fricwheel_enable = False
        # * 决策参数--!新存放到list中
        for e in config_read.point:
            point_e: PoseStamped = PoseStamped()
            point_e.header.frame_id = "map"
            point_e.header.stamp = rospy.Time.now()
            point_e.pose.position.x = e.x
            point_e.pose.position.y = e.y
            point_e.pose.position.z = e.z
            quaternion_ = quaternion_from_euler(ai=e.roll,
                                                aj=e.pitch,
                                                ak=e.yaw)
            point_e.pose.orientation.x = quaternion_[0]
            point_e.pose.orientation.y = quaternion_[1]
            point_e.pose.orientation.z = quaternion_[2]
            point_e.pose.orientation.w = quaternion_[3]
            self.decision_params.patrol_points.append(point_e)
