# import os, sys
# sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from xml_to_trees import factory

from simple_operation import Operations
from actions import Patrol, MoveToGoal, ShooterAwake
import inspect

if __name__ == "__main__":
    nodes = factory.get_all_pytrees_nodes_operations(Operations)
    action_modules_list = [Patrol, MoveToGoal, ShooterAwake]
    nodes.update(
        factory.get_all_pytrees_nodes_actions(
            action_modules_list=action_modules_list))
    # print(nodes)

    # print(dir(Operations))
    # for t in dir(Operations):
    #     if inspect.isfunction(getattr(Operations, t)):
    #         print("{}: {}".format(t, getattr(Operations, t).__name__))
