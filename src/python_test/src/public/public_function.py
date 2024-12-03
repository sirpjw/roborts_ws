from tf.transformations import quaternion_from_euler, euler_from_quaternion
from geometry_msgs.msg import Quaternion
import tf
import tf.transformations


def QuaternionFromEuler(yaw=0.0, pitch=0.0, roll=0.0) -> Quaternion:
    """从pitch、yaw、roll转换为Quaternion类型的四元数

    Args:
        yaw (float, optional): _description_. Defaults to 0.0.
        pitch (float, optional): _description_. Defaults to 0.0.
        roll (float, optional): _description_. Defaults to 0.0.

    Returns:
        Quaternion: 四元数
    """
    orientation: Quaternion = Quaternion()
    xyzw_ = quaternion_from_euler(ai=roll, aj=pitch, ak=yaw)
    orientation.x = xyzw_[0]
    orientation.y = xyzw_[1]
    orientation.z = xyzw_[2]
    orientation.w = xyzw_[3]
    return orientation


def RollPitchYawEulerFromQuaternion(quaternion: Quaternion):
    """四元数转欧拉角: Roll、Pitch、Yaw

    Args:
        quaternion (Quaternion): 四元数

    Returns:
        Roll: float
        Pitch: float
        Yaw: float
    """
    euler = euler_from_quaternion(
        quaternion=[quaternion.x, quaternion.y, quaternion.z, quaternion.w])
    (roll, pitch, yaw) = euler
    return roll, pitch, yaw


def RollPitchYawEulerFromQuaternionValue(quaternion: list):
    """四元数x、y、z、w 转欧拉角: Roll、Pitch、Yaw

    Args:
        quaternion (list): 四元数的值

    Returns:
        Roll: float
        Pitch: float
        Yaw: float
    """
    (roll, pitch, yaw) = euler_from_quaternion(quaternion=[
        quaternion[0], quaternion[1], quaternion[2], quaternion[3]
    ])
    return roll, pitch, yaw


def YawEulerFromQuaternion(quaternion: Quaternion) -> float:
    """从四元数类型转换的欧拉角中获取Yaw值

    Args:
        quaternion (Quaternion): 四元数数据类型

    Returns:
        float: Yaw值
    """
    euler = euler_from_quaternion(
        quaternion=[quaternion.x, quaternion.y, quaternion.z, quaternion.w])
    (roll, pitch, yaw) = euler
    return yaw


def PitchEulerFromQuaternion(quaternion: Quaternion):
    """从四元数类型转换的欧拉角中获取Pitch值

    Args:
        quaternion (Quaternion): 四元数数据类型

    Returns:
        float: Pitch值
    """
    euler = euler_from_quaternion(
        quaternion=[quaternion.x, quaternion.y, quaternion.z, quaternion.w])
    (roll, pitch, yaw) = euler
    return pitch


def World2Map(wx: float,
              wy: float,
              resolution_: float = 0.05,
              origin_x_=0.0,
              origin_y_=0.0):
    """将世界坐标系下的位置转换为代价地图中的网格坐标

    Args:
        wx (float): x
        wy (float): y
        resolution_ (0.05): 分辨率
        origin_x_ (float, optional): _description_. Defaults to 0.0.
        origin_y_ (float, optional): _description_. Defaults to 0.0.

    Returns:
        _type_: 返回网格坐标x,y
    """
    mx = int((wx - origin_x_) / resolution_)
    my = int((wy - origin_y_) / resolution_)
    return mx, my


def Map2World(mx: int,
              my: int,
              resolution_: float = 0.05,
              origin_x_=0.0,
              origin_y_=0.0):
    """将网格坐标转换为世界坐标系的位置

    Args:
        mx (int): map中的x
        my (int): map中的y
        resolution_ (0.05): 分辨率
        origin_x_ (float, optional): _description_. Defaults to 0.0.
        origin_y_ (float, optional): _description_. Defaults to 0.0.

    Returns:
        _type_: 返回世界坐标系下的位置x,y
    """
    wx = origin_x_ + (mx + 0.5) * resolution_
    wy = origin_y_ + (my + 0.5) * resolution_
    return wx, wy


def Cells2Index(mx: int, my: int, size_x_: int) -> int:
    """从map的网格坐标转换得到在costmap对应的index

    Args:
        mx (int): _description_
        my (int): _description_
        size_x_ (int): _description_

    Returns:
        int: costmap中的index
    """
    return my * size_x_ + mx


def Index2Cells(index: int, size_x_: int):
    """从costmap中的index推算网格坐标

    Args:
        index (int): index
        size_x_ (int): 网格地图的width/x轴

    Returns:
        _type_: 网格坐标
    """
    my = index // size_x_
    mx = index - (my * size_x_)
    return mx, my
