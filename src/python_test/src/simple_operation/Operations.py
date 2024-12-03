from py_trees.common import Status as BehaviorStatus
import py_trees

from datapool import DataPool

#! 统一从黑板读写数据池中的数据 !#


def turn_manual_control_false(self) -> BehaviorStatus:
    """
    Turn manual control off
    关掉手动控制    在任务执行完成关闭手动控制
    
    Args:
        self ():

    Returns:
        BehaviorStatus:
    """
    blackboard_ = py_trees.blackboard.Client(name="SimpleOperations")
    blackboard_.register_key(key="data_pool",
                             access=py_trees.common.Access.WRITE)
    data_pool_: DataPool.DataPool= blackboard_.data_pool
    data_pool_.manual_control = False

    return BehaviorStatus.SUCCESS


# todo 该方法暂时待完善
def turn_fricwhl_off(self)->BehaviorStatus:
    """
    Turn fricwhl off
    关闭摩擦轮
    Args:
        self ():

    Returns:
        BehaviorStatus:
    """
    blackboard_ = py_trees.blackboard.Client(name="SimpleOperations")
    blackboard_.register_key(key="data_pool",
                             access=py_trees.common.Access.WRITE)
    data_pool_: DataPool.DataPool = blackboard_.data_pool

    return BehaviorStatus.SUCCESS
