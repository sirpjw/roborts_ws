
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
    # tree_.shutdown()
    # rospy.signal_shutdown("中断")

    sys.exit(0)


signal.signal(signal.SIGINT, signal_handler)

if __name__ == "__main__":

    rospy.init_node("Decision", anonymous=True)
    # py_trees.decorators.EternalGuard()
    # py_trees.composites.Selector()

    # grpc_server.serve()
    # _IP='192.168.31.11'
    # _PORT='50051'
    # conn = grpc.insecure_channel(_IP+':'+_PORT)
    # client = communication_pb2_grpc.RobotCommStub(channel=conn)
    # response = client.GetBlood(communication_pb2.CommonRequest(time=1))
    # print(response)

    data_pool = DataPool.DataPool(
        decision_config_filepath="src/config/decision.prototxt")

    # print(data_pool.getGimbalAngleRelative())

    # exit(44444)

    server_ = grpc_server.GRPC_SERVER(data_pool=data_pool)

    server_.serve()




    ros_pack = RosPack() #获取ros包的路径

    # pipe_parent, pipe_child = multiprocessing.Pipe()

    cr = ChassisExecutor.ChassisExecutor() #底盘实例




    # ? 将数据池添加进blackboard
    blackboard_ = py_trees.blackboard.Client(name="Global")
    blackboard_.register_key(key="data_pool",
                             access=py_trees.common.Access.WRITE)
    blackboard_.data_pool = data_pool
    #将数据池对象赋给黑板的 data_pool 键，使得行为树的节点可以访问它。




    root = py_trees.composites.Sequence(name="root", memory=True) #行为树根节点




    # * 创建action 巡逻节点
    action_patrol = Patrol.Patrol(name="Patrol",
                                  chassis_executor=cr,
                                  data_pool=data_pool)
    action_patrol.setup()
    eternal_guard_patrol = py_trees.decorators.EternalGuard(
        name="Eternal Guard Patrol",
        child=action_patrol,
        condition=behavior_conditions.CheckPatrolCondition,  #是否巡逻的判断
        blackboard_keys={"data_pool"})





    # * 创建action 移动到目标地点的行为节点
    action_move_to_goal = MoveToGoal.MoveToGoal(name="MoveToGoal",
                                                chassis_executor=cr,
                                                data_pool=data_pool)
    

    # * 移动到目的地之后 更改 munual control 为False
    turn_manual_control_false = py_trees.meta.create_behaviour_from_function(
        func=Operations.turn_manual_control_false)(name="manual_control_false")#关闭手动控制
    

    Sequence_movetogoal = py_trees.composites.Sequence(
        name="common",
        memory=True,
        children=[action_move_to_goal, turn_manual_control_false])#组合节点
    eternal_guard_manual_control = py_trees.decorators.EternalGuard(
        name="Eternal Guard Manual Control",
        child=Sequence_movetogoal,
        condition=behavior_conditions.CheckManualControlCondition,#手动
        blackboard_keys={"data_pool"})



    auto_control_selector = py_trees.composites.Selector(
        name="Auto Control Selector",
        memory=True,
        children=[eternal_guard_patrol])

    eternal_guard_auto_control = py_trees.decorators.EternalGuard(
        name="Eternal Guard Atuo Control",
        child=auto_control_selector,
        condition=behavior_conditions.CheckAutoControlCondition,#是否是自动
        blackboard_keys={"data_pool"})
    #它用于确保机器人在巡逻时能持续执行巡逻行为，直到满足某个条件。






    # * 顶层的 Selector
    top_selector = py_trees.composites.Selector(name="TopSelector",
                                                memory=False)

    top_selector.add_children(
        [eternal_guard_manual_control, eternal_guard_auto_control])

    eternal_guard_system_run = py_trees.decorators.EternalGuard(
        name="Eternal Guard Top",
        child=top_selector,
        condition=behavior_conditions.CheckSystemRunCondition,#停止
        blackboard_keys={"data_pool"})
    #顶层选择器 top_selector 会根据条件选择手动控制或自动控制行为。

    root.add_child(eternal_guard_system_run)

    tree_ = py_trees.trees.BehaviourTree(root=root)

    # rosspin_thread = multiprocessing.Process(target=run_rosspin,
    #                                     args=(
    #                                         pipe_child,
    #                                     ))
    # atexit.register(rosspin_thread.terminate)
    # rosspin_thread.start()
    # server_.serve_blocking()
    #将 ROS 的 spin() 事件循环放入一个单独的进程，以便与主程序的行为树和 gRPC 服务器并行运行。

    while True:
        tree_.tick()
    # tree_.shutdown()

    # try:
    #     while True:
    #         tree_.tick()
    #         # pipe_parent.send([times])
    #         # time.sleep(0.01)
    # except KeyboardInterrupt:
    #     # rospy.signal_shutdown("中断")
    #     tree_.shutdown()
    #     sys.exit(0)

    # gr = GimbalExecutor.GimbalExecutor()
    # v = public_variable.PublicVariable()
    goal_test = PoseStamped()
    goal_test.pose.position.x = 0.7
    goal_test.pose.position.y = 1
    # cr.Execute(v.twist_zero_)
    # gr.Execute(v.gimbal_angle_zero_relative_)
    # gr.Cancel()
    # cr.Execute(goal_test)
    #移动到指定位置




    # rospy.spin()

    # current_package_path = ros_pack.get_path("python_test")
    # file_path_relative = "src/config/decision.prototxt"
    # dc_read = decision_pb2.DecisionConfig()
    # with open(os.path.join(current_package_path, file_path_relative), "r") as f:
    #     data = f.read()
    #     pb_text_format.Parse(data, message=dc_read)
    # print(dir(dc_read))
