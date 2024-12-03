# import rospy
# from geometry_msgs.msg import PoseStamped

# def publish_position():
#     # 初始化 ROS 节点
#     rospy.init_node("publish_position_node", anonymous=True)
    
#     # 创建一个发布器，发布 PoseStamped 消息
#     position_pub = rospy.Publisher("/move_base_simple/goal", PoseStamped, queue_size=10)
    
#     # 设置发布频率
#     rate = rospy.Rate(10)  # 10 Hz

#     while not rospy.is_shutdown():
#         # 创建一个 PoseStamped 消息
#         pose = PoseStamped()
        
#         # 设置消息的 header 信息
#         pose.header.stamp = rospy.Time.now()  # 当前时间戳
#         pose.header.frame_id = "map"  # 坐标系，这里假设是 map 坐标系
        
#         # 设置机器人的位置和姿态
#         pose.pose.position.x = 3.0
#         pose.pose.position.y = 3.0
#         pose.pose.position.z = 0.0
        
#         pose.pose.orientation.x = 0.0
#         pose.pose.orientation.y = 0.0
#         pose.pose.orientation.z = 0.0
#         pose.pose.orientation.w = 1.0
        
#         # 发布位置信息
#         position_pub.publish(pose)
        
#         # 打印日志
#         rospy.loginfo(f"Published position: ({pose.pose.position.x}, {pose.pose.position.y})")
        
#         # 按照设定的频率休眠
#         rate.sleep()

# if __name__ == "__main__":
#     try:
#         publish_position()
#     except rospy.ROSInterruptException:
#         pass



import multiprocessing.connection
import os
import sys
import multiprocessing
import time
import atexit
import signal

# sys.path.append("/home/c/roborts_ws/src/python_test/src")
sys.path.append(os.path.dirname(os.path.abspath(__file__)))  # 与上一个作用相同
# sys.path.append("/home/sirpjw/roborts_ws/src")

# 自建包
from executor import ChassisExecutor, GimbalExecutor
from datapool import DataPool
from public import public_variable
from python_test import decision_pb2, communication_pb2, communication_pb2_grpc
from conditions import behavior_conditions
from actions import Patrol, MoveToGoal
from simple_operation import Operations

from grpc_server import grpc_server

import grpc

# ROS
import rospy
import roslib
import roslib.packages
from rospkg import RosPack
from geometry_msgs.msg import Twist, PoseStamped, QuaternionStamped
from roborts_msgs.msg import GimbalAngle
from tf.transformations import quaternion_from_euler
from roborts_msgs.srv import FricWhl, FricWhlRequest, ShootCmd, ShootCmdRequest
# 行为树
import py_trees

# 工具包
import google.protobuf.text_format as pb_text_format


def run_rosspin(pipe_child_: multiprocessing.connection.Connection):
    try:
        rospy.spin()
    except KeyboardInterrupt:
        pass


def signal_handler(sig, frame):
    print('You pressed Ctrl+C!')
    sys.exit(0)


signal.signal(signal.SIGINT, signal_handler)

if __name__ == "__main__":
    # 初始化 ROS 节点
    rospy.init_node("Decision", anonymous=True, log_level=rospy.FATAL)

    # 创建云台执行器
    gimbal_executor = GimbalExecutor.GimbalExecutor()

    # 示例：调整云台角度
    gimbal_angle = GimbalAngle()
    gimbal_angle.yaw_angle = 30  # 调整到30度
    gimbal_angle.pitch_angle = 15  # 调整到15度
    gimbal_executor.Execute(gimbal_angle)

    # 示例：开启摩擦轮
    fricwhl_request = FricWhlRequest()
    fricwhl_request.open = True
    gimbal_executor.Execute(fricwhl_request)

    # 示例：执行射击任务
    shoot_cmd_request = ShootCmdRequest()
    shoot_cmd_request.mode = 1  # 单发射击
    shoot_cmd_request.number = 1  # 射击1发
    gimbal_executor.Execute(shoot_cmd_request)

    # 取消任务并停止
    gimbal_executor.Cancel(STOP=True)



