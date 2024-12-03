from geometry_msgs.msg import Twist
from roborts_msgs.msg import GimbalAngle
import threading




# #?  关于 Datapool中，机器人being_attacking 互斥锁
lock_being_attacking = threading.Lock()
# #? 关于Datapool中......
# class PublicVariable:
#     def __init__(self):
#         # 零速度
#         self.twist_zero_ = Twist()
#         self.twist_zero_.linear.x = 0
#         self.twist_zero_.linear.y = 0
#         self.twist_zero_.linear.z = 0
#         self.twist_zero_.angular.x = 0
#         self.twist_zero_.angular.y = 0
#         self.twist_zero_.angular.z = 0

#         # 相对角度 True
#         self.gimbal_angle_zero_relative_ = GimbalAngle()
#         self.gimbal_angle_zero_relative_.yaw_mode = True  # 0 means absolute, 1 means relative
#         self.gimbal_angle_zero_relative_.pitch_mode = True
#         self.gimbal_angle_zero_relative_.yaw_angle = 0
#         self.gimbal_angle_zero_relative_.pitch_angle = 0

#         # 绝对角度 False
#         self.gimbal_angle_zero_absolute_ = GimbalAngle()
#         self.gimbal_angle_zero_absolute_.yaw_mode = False  # 0 means absolute, 1 means relative
#         self.gimbal_angle_zero_absolute_.pitch_mode = False
#         self.gimbal_angle_zero_absolute_.yaw_angle = 0
#         self.gimbal_angle_zero_absolute_.pitch_angle = 0
# ! 零速度
twist_zero_:Twist = Twist()
twist_zero_.linear.x = 0
twist_zero_.linear.y = 0
twist_zero_.linear.z = 0
twist_zero_.angular.x = 0
twist_zero_.angular.y = 0
twist_zero_.angular.z = 0

# ! 相对角度 True
gimbal_angle_zero_relative_ : GimbalAngle = GimbalAngle()
gimbal_angle_zero_relative_.yaw_mode = True  #!0 means absolute, 1 means relative;
gimbal_angle_zero_relative_.pitch_mode = True
gimbal_angle_zero_relative_.yaw_angle = 0
gimbal_angle_zero_relative_.pitch_angle = 0

# ! 绝对角度 False
gimbal_angle_zero_absolute_ : GimbalAngle = GimbalAngle()
gimbal_angle_zero_absolute_.yaw_mode = True  #!0 means absolute, 1 means relative;
gimbal_angle_zero_absolute_.pitch_mode = True
gimbal_angle_zero_absolute_.yaw_angle = 0
gimbal_angle_zero_absolute_.pitch_angle = 0

# ! 伤害值
DAMAGE_VALUE: int = 20