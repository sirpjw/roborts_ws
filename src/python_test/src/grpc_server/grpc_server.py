import grpc
import sys
import os
from std_msgs.msg import Int32, Float64, Bool
import grpc._server
from roborts_msgs.msg import RobotDamage
import rospy
from tf.transformations import euler_from_quaternion
import time

from concurrent import futures
from python_test import communication_pb2, communication_pb2_grpc
from datapool import DataPool
from public import public_function
from geometry_msgs.msg import PoseStamped

# getTime
# 无参数
# 返回当前的时间
# 前端的time使用Linux time函数
def getTime():
    time_ = rospy.Time.now().to_sec()
    return time_


# getBlood
# 无参数
# 返回机器人当前的血量（int）



# def getNowBlood(data_pool_: DataPool.DataPool) :
#     return -1
def getBlood(data_pool_: DataPool.DataPool) -> int:
    print("hp: ", data_pool_.robotinfo_variables.robot_hp)
    return data_pool_.getRobotHP()



# 子弹函数不一样有什么影响吗？？？
# getAmmunition
# 无参数
# 返回机器人当前的子弹数（int）
def getBullet(data_pool_: DataPool.DataPool) -> int:
    print("bullets: ", data_pool_.robotinfo_variables.robot_bullets)
    return data_pool_.robotinfo_variables.robot_bullets


# getNowAmmunition
# 无参数
# 返回机器人当前的位置，第一位是x坐标，第二位是y坐标（都是float）
def getPosture(data_pool_: DataPool.DataPool):
    pose_ = data_pool_.getMyPose().pose
    x = pose_.position.x
    y = pose_.position.y
    yaw = public_function.YawEulerFromQuaternion(quaternion=pose_.orientation)
    return x, y, yaw


# getVelocity
# 无参数
# 返回机器人的速度（float）
def getVelocity(data_pool_: DataPool.DataPool):
    x = data_pool_.robotinfo_variables.robot_linear_x
    y = data_pool_.robotinfo_variables.robot_linear_y
    angular_z = data_pool_.robotinfo_variables.robot_angular_z
    return x, y, angular_z


# getNowAffected
# 无参数
# 返回机器人受击信息，第一位到第四位对应的是 上，下，左，右（int）
def getAffected(data_pool_: DataPool.DataPool):

    
    up_hits = data_pool_.robotinfo_variables.robot_up
    down_hits = data_pool_.robotinfo_variables.robot_down
    left_hits = data_pool_.robotinfo_variables.robot_left
    right_hits = data_pool_.robotinfo_variables.robot_right

    # 返回一个列表，分别表示上、下、左、右方向的受击次数
    return [up_hits, down_hits, left_hits, right_hits]


# setBlood
# blood:int 要设置的血量
# 返回flag（bool），为TRUE代表成功，为FALSE
def setBlood(blood: int, data_pool_: DataPool.DataPool) -> bool:
    pub_blood = Int32()
    if blood < 0:
        return False
    else :
        pub = rospy.Publisher('set_blood', Int32, queue_size=10)
        print(f"Publishing blood value: {blood}")
        pub_blood.data=blood
        rate = rospy.Rate(10)
        for i in range (10):
            pub.publish(pub_blood)
            rate.sleep()
            # print(f"Publishing blood value: {data_pool_.robotinfo_variables.robot_hp}")
        return True





# setAmmunition
# ammunition:int 要设置的子弹数
# type:int 类型，1表示直接更改，2表示变化量
# 返回flag（bool），为TRUE代表成功，为FALSE
def setAmmunition(ammunition, types, data_pool_: DataPool.DataPool):
    ans=data_pool_.robotinfo_variables.robot_bullets
    if types == 1:
        # 增加弹药数量
        if ammunition < 0:
            return False  # 增加的数量必须大于0
        else:
            ans +=  ammunition


    elif types == 2:
        # 减少弹药数量
        if ammunition < 0:
            return False  # 减少的数量必须大于0
        new_bullet_count = ans - ammunition
        if new_bullet_count < 0:
            return False
        else:
            ans = new_bullet_count

    elif types == 3:
        # 设置为某个特定值
        if ammunition < 0:
            return False  # 设置的值不能小于0
        ans = ammunition
    pub = rospy.Publisher('set_ammunition', Int32, queue_size=10)
    print(f"Publishing ammunition value: {ans}")
    pub_ans=Int32()
    pub_ans.data=ans
    rate = rospy.Rate(10)
    for i in range (10):
        pub.publish(pub_ans)
        rate.sleep()
    return True


# setNavigation
# x:float表示x坐标
# y:float表示y坐标
# 返回flag（bool），为TRUE代表成功，为FALSE


# def setNavigation(x, y, data_pool_: DataPool.DataPool):
#     rate = rospy.Rate(10)
#     pubx = rospy.Publisher('set_destination_x', Float64, queue_size=10)
#     print(f"Publishing destination_x value: {x}")
#     pub_x=Float64()
#     pub_x.data=x
    
#     for i in range (10):
#         pubx.publish(pub_x)
#         rate.sleep()
#     puby = rospy.Publisher('set_destination_y', Float64, queue_size=10)
#     print(f"Publishing destination_y value: {y}")
#     pub_y=Float64()
#     pub_y.data=y
#     for i in range (10):
#         puby.publish(pub_y)
#         rate.sleep()

#     # data_pool_.manual_control 
#     pubmanual = rospy.Publisher('set_manual_control', Bool, queue_size=10)
#     pub_manual_control=Bool()
#     pub_manual_control.data=True
#     for i in range (10):
#         pubmanual.publish(pub_manual_control)
#         rate.sleep()
#     # print(f"Publishing ammunition value: {data_pool_.my_goal.pose.position.x}")
#     # print(f"Publishing ammunition value: {data_pool_.my_goal.pose.position.y}")
#     return True
def setNavigation(x, y, data_pool_: DataPool.DataPool):
    rate = rospy.Rate(10)
    pubx = rospy.Publisher('set_destination_x', Float64, queue_size=10)
    print(f"Publishing destination_x value: {x}")
    pub_x=Float64()
    pub_x.data=x
    puby = rospy.Publisher('set_destination_y', Float64, queue_size=10)
    print(f"Publishing destination_y value: {y}")
    pub_y=Float64()
    pub_y.data=y
    pubmanual = rospy.Publisher('set_manual_control', Bool, queue_size=10)
    pub_manual_control=Bool()
    pub_manual_control.data=True

    for i in range (10):
        pubx.publish(pub_x)
        puby.publish(pub_y)
        pubmanual.publish(pub_manual_control)
        rate.sleep()
        
    # print(f"Publishing ammunition value: {data_pool_.my_goal.pose.position.x}")
    # print(f"Publishing ammunition value: {data_pool_.my_goal.pose.position.y}")
    return True

# setFrictionWheel
# x:int 设置摩擦轮状态，0表示停止，1表示在动
# 返回flag（bool），为TRUE代表成功，为FALSE
def setFrictionWheel(x, data_pool_: DataPool.DataPool):
    ans=Bool()
    rate = rospy.Rate(10)
    # print(x)
    try:
        if x == 0:
            # 设置摩擦轮停止
            ans.data = False
            pub = rospy.Publisher('set_frictionweel', Bool, queue_size=10)
            print(f"0 Publishing frictionweel value: {ans.data}")
            for i in range (10):
                pub.publish(ans)
                rate.sleep()
        elif x == 1:
            # 设置摩擦轮启用
            ans.data = True
            pub = rospy.Publisher('set_frictionweel', Bool, queue_size=10)
            print(f"1 Publishing frictionweel value: {ans.data}")
            for i in range (10):
                pub.publish(ans)
                rate.sleep()
        else:
            rospy.logwarn("Invalid value for x, should be 0 or 1.")
            return False
        
        # 返回True表示成功
        print(f"Publishing ammunition value: {data_pool_.robotinfo_variables.fricwheel_enable}")
        return True
    except Exception as e:
        rospy.logerr(f"Failed to set friction wheel status: {e}")
        return False


# setStop
# x:int 设置小车运动状态，0表示停止，1表示在动
# 返回flag（bool），为TRUE代表成功，为FALSE
def setStop(x, data_pool_: DataPool.DataPool):
    ans=Bool()
    rate = rospy.Rate(10)
    try:
        if x == 0:
            ans.data = False
            pub = rospy.Publisher('set_stop', Bool, queue_size=10)
            print(f"Publishing stop value: {ans.data}")
            for i in range (10):
                pub.publish(ans)
                rate.sleep()
        elif x == 1:
            ans.data = True
            pub = rospy.Publisher('set_stop', Bool, queue_size=10)
            print(f"Publishing stop value: {ans.data}")
            for i in range (10):
                pub.publish(ans)
                rate.sleep()
        else:
            rospy.logwarn("Invalid value for x, should be 0 or 1.")
            return False
        print(f"Publishing ammunition value: {data_pool_.robotinfo_variables.chassis_enable}")
        return True
    except Exception as e:
        rospy.logerr(f"Failed to set friction wheel status: {e}")
        return False

    # set_blood_info_sub:Subscriber #血量发布
    # set_ammunition_info_sub:Subscriber #弹药量发布
    # set_destination_x_info_sub:Subscriber #目的地x发布
    # set_destination_y_info_sub:Subscriber #目的地y发布
    # set_frictionweel_info_sub:Subscriber #摩擦轮发布
    # set_stop_info_sub:Subscriber #停止信息发布
    # set_bullet_info_sub:Subscriber #子弹开关发布

# setBullet
# x:int 设置子弹射击状态，0表示停止，1表示在动
# 返回flag（bool），为TRUE代表成功，为FALSE
def setBullet(x, data_pool_: DataPool.DataPool):
    ans=Bool()
    rate = rospy.Rate(10)
    try:
        if x == 0:
            ans.data = False
            pub = rospy.Publisher('set_bullet', Bool, queue_size=10)
            print(f"Publishing bullet value: {ans.data}")
            for i in range (10):
                pub.publish(ans)
                rate.sleep()
        elif x == 1:
            ans.data = True
            pub = rospy.Publisher('set_bullet', Bool, queue_size=10)
            print(f"Publishing bullet value: {ans.data}")
            for i in range (10):
                pub.publish(ans)
                rate.sleep()
        else:
            rospy.logwarn("Invalid value for x, should be 0 or 1.")
            return False
        
        # 返回True表示成功
        print(f"Publishing ammunition value: {data_pool_.robotinfo_variables.shooter_enable}")
        return True
    except Exception as e:
        rospy.logerr(f"Failed to set friction wheel status: {e}")
        return False


#到这里Todo list结束了下面的代码应该是对的，可以不用管了
class RobotComm:
    # 属性变量
    t: rospy.Time
    data_pool: DataPool.DataPool

    # ---------------------------------------------------
    def __init__(self, data_pool_: DataPool.DataPool) -> None:
        self.t = rospy.Time.now()
        self.data_pool = data_pool_

    # ---------------------------------------------------
    #向服务器索取血量信息 传回血量信息
    def GetBlood(self, request, context):
        time = request.time
        self.t = rospy.Time.now().to_sec()
        print("time: ", self.t)
        return communication_pb2.Blood(
            blood=getBlood(data_pool_=self.data_pool), time=round(self.t, 2))

    # ---------------------------------------------------
    #向服务器索取弹药量信息 传回弹药量信息
    def GetBullet(self, request, context):
        time = request.time
        return communication_pb2.Bullet(
            bullets=getBullet(data_pool_=self.data_pool), time=getTime())

    # ---------------------------------------------------
    #向服务器索取位姿信息 传回位姿信息
    def GetPosture(self, request, context):
        time = request.time
        x, y, yaw = getPosture(data_pool_=self.data_pool)
        return communication_pb2.Posture(x=x, y=y, radian=yaw, time=getTime())

    # ---------------------------------------------------
    #向服务器索取枪口朝向信息 传回枪口朝向信息
    def GetGimbalYaw(self, request, context):
        time = request.time
        q_ = self.data_pool.getGimbalAngleRelative()
        _, pitch, yaw = public_function.RollPitchYawEulerFromQuaternion(
            quaternion=q_)
        # 前端也暂不支持枪口朝向的显示
        return communication_pb2.GimbalYaw(yaw=yaw,
                                           pitch=pitch,
                                           time=getTime())

    # ---------------------------------------------------
    #向服务器索取速度信息 传回速度信息
    def GetVelocity(self, request, context):
        time = request.time
        x, y, angular_z = getVelocity(data_pool_=self.data_pool)
        return communication_pb2.Velocity(velocity_linear_x=x,
                                          velocity_linear_y=y,
                                          velocity_angular_z=angular_z)

    # ---------------------------------------------------
    #向服务器索取受击信息 传回受击信息
    def GetAttacked(self, request, context):
        time = request.time
        l = getAffected(data_pool_=self.data_pool)
        return communication_pb2.Attacked(up=l[0],
                                          down=l[1],
                                          left=l[2],
                                          right=l[3],
                                          time=getTime())

    # ---------------------------------------------------

    #todo 向服务器索取目标检测信息 传回信息
    def GetObjectDection(self, request, context):
        # 前段暂不支持，也不会传递消息
        return None

    # ! POST 方法群---------------------------------------------------
    #向服务器传输血量信息 传回是否正确设置
    def PostBlood(self, request, context):
        flag = False
        blood = request.blood
        flag = setBlood(blood,data_pool_=self.data_pool)
        if flag:
            return communication_pb2.Response(time=getTime())
        else:
            # transfer -1 to let frontend know there's sth wrong
            return communication_pb2.Response(time=-1)

    # ---------------------------------------------------
    #向服务器传输弹药量信息 传回是否正确设置
    def PostBullet(self, request, context):
        flag = False
        amm = request.bullets
        types = request.type
        flag = setAmmunition(amm, types, data_pool_=self.data_pool)
        if flag:
            return communication_pb2.Response(time=getTime())
        else:
            # transfer -1 to let frontend know there's sth wrong
            return communication_pb2.Response(time=-1)

    # ---------------------------------------------------
    #向服务器传输目的地信息 传回是否正确设置
    def PostDestination(self, request, context):
        flag = False
        x = request.x
        y = request.y
        flag = setNavigation(x, y,data_pool_=self.data_pool)
        if flag:
            return communication_pb2.Response(time=getTime())
        else:
            # transfer -1 to let frontend know there's sth wrong
            return communication_pb2.Response(time=-1)

    # 向服务器传输摩擦轮信息 传回是否正确设置
    def PostFricWheel(self, request, context):
        flag = False
        f = request.open
        flag = setFrictionWheel(f,data_pool_=self.data_pool)
        if flag:
            return communication_pb2.Response(time=getTime())
        else:
            # transfer -1 to let frontend know there's sth wrong
            return communication_pb2.Response(time=-1)

    # 向服务器传输停止信息 传回是否正确设置
    def PostChassisStop(self, request, context):
        flag = False
        f = request.flag
        flag = setStop(f,data_pool_=self.data_pool)

        if flag:
            return communication_pb2.Response(time=getTime())
        else:
            # transfer -1 to let frontend know there's sth wrong
            return communication_pb2.Response(time=-1)

    # 向服务器传输子弹开关信息 传回是否正确设置
    def PostShooter(self, request, context):
        flag = False
        f = request.open
        flag = setBullet(f,data_pool_=self.data_pool)
        if flag:
            return communication_pb2.Response(time=getTime())
        else:
            # transfer -1 to let frontend know there's sth wrong
            return communication_pb2.Response(time=-1)

    # UI界面传来的系统 开启/关闭 控制信息
    def PostSystemRun(self, request, context):
        self.data_pool.system_run = not self.data_pool.system_run
        return communication_pb2.Response(time=getTime())


class GRPC_SERVER:
    """GRPC 服务端
    """

    robot_comm: RobotComm  # grpc消息服务类
    _IP: str  # 服务主机IP地质
    _PORT: str  # 服务主机端口
    data_pool_: DataPool.DataPool
    server: grpc._server._Server

    def __init__(self, data_pool) -> None:
        self.robot_comm = RobotComm(data_pool_=data_pool)
        self._IP = ""
        self._PORT = ""
        self.data_pool_ = data_pool
        self.server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
        communication_pb2_grpc.add_RobotCommServicer_to_server(
            RobotComm(data_pool_=self.data_pool_), self.server)
        self.server.add_insecure_port('[::]:50051')

    def serve_blocking(self) -> None:
        self.server.start()
        try:
            self.server.wait_for_termination()
        except KeyboardInterrupt:
            self.server.stop(0)

    def serve(self) -> None:
        self.server.start()

    def setup(self, ip_=None, port_=None) -> None:
        pass

    def stop(self):
        self.server.stop()


if __name__ == '__main__':
    pass
