import os
import py_trees
from datapool import DataPool


def CheckPatrolCondition(blackboard: py_trees.blackboard.Client)->bool:
    """执行巡逻节点的条件检查函数

    Args:
        blackboard (py_trees.blackboard.Client): 数据库，取其中的数据池使用

    Returns:
        _type_: bool
    """
    data_pool_: DataPool.DataPool = blackboard.data_pool
    if (
        not data_pool_.robot_attack_variables.being_attacking
        and data_pool_.robotinfo_variables.robot_live_in
        and data_pool_.robotinfo_variables.chassis_enable
        and data_pool_.robotinfo_variables.shooter_enable
        and data_pool_.robotinfo_variables.fricwheel_enable
        and data_pool_.robotinfo_variables.robot_bullets
        > data_pool_.decision_params.limit_bullets
        and data_pool_.robotinfo_variables.robot_hp
        > data_pool_.decision_params.limit_hp
        and data_pool_.robotinfo_variables.robot_battery_enery
        > data_pool_.decision_params.limit_battery_enery
    ):
        return True
    return False

def CheckSystemRunCondition(blackboard: py_trees.blackboard.Client)-> bool:
    """_summary_
    Args:
        blackboard (py_trees.blackboard.Client): _description_
    """
    data_pool_:DataPool.DataPool = blackboard.data_pool
    if data_pool_.system_run:
        return True
    return False

def CheckManualControlCondition(blackboard: py_trees.blackboard.Client)->bool:
    """执行前端控制节点的条件检查函数

    Args:
        blackboard (py_trees.blackboard.Client): 数据库，取其中的数据池使用

    Returns:
        _type_: bool
    """
    data_pool_: DataPool.DataPool = blackboard.data_pool
    if (
        data_pool_.manual_control
        and data_pool_.robotinfo_variables.chassis_enable
    ):
        return True
    return False


def CheckAutoControlCondition(
        blackboard: py_trees.blackboard.Client) -> bool:
    """执行前端控制节点的条件检查函数

    Args:
        blackboard (py_trees.blackboard.Client): 数据库，取其中的数据池使用

    Returns:
        _type_: bool
    """
    data_pool_: DataPool.DataPool = blackboard.data_pool
    if (not data_pool_.manual_control
        and data_pool_.robotinfo_variables.chassis_enable):
        return True
    return False


def CheckStop(
        blackboard: py_trees.blackboard.Client) -> bool:
    """执行停止节点

    Args:
        blackboard (py_trees.blackboard.Client): 数据库，取其中的数据池使用

    Returns:
        _type_: bool
    """
    data_pool_: DataPool.DataPool = blackboard.data_pool
    if (data_pool_.robotinfo_variables.chassis_enable):
        return False
    return True


def Checkshoot(
        blackboard: py_trees.blackboard.Client) -> bool:
    data_pool_: DataPool.DataPool = blackboard.data_pool
    if  (data_pool_.system_run
        and(data_pool_.robotinfo_variables.shooter_enable
            or data_pool_.robotinfo_variables.fricwheel_enable)):
        return True
    return False

