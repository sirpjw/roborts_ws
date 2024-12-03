import os
import inspect
import xml.etree.ElementTree as xmlET
import py_trees


def get_all_pytrees_nodes_operations(module_) -> dict:
    """
    Returns all PyTreeNodes in the module
    """
    nodes = {}
    for name, obj in inspect.getmembers(module_):
        if inspect.isfunction(obj) or (inspect.isclass(obj) and issubclass(
                obj, py_trees.behaviour.Behaviour)):

            nodes[name] = {"Behaviour": obj, "Params": {"name": None}}
            n = inspect.getmembers(obj)
            # print(inspect.getmembers(obj))
            print(n)

    return nodes


def get_all_pytrees_nodes_actions(action_modules_list: list) -> dict:
    nodes = {}
    for module_ in action_modules_list:
        # for name, obj in inspect.getmembers(module_, inspect.isclass):
        #     # print(m)
        #     if issubclass(obj, py_trees.behaviour.Behaviour):
        #         # if inspect.isclass(m):
        #         print(obj)
        #         nodes[name] = obj
        nodes.update(get_all_pytrees_nodes_operations(module_=module_))
    return nodes


def test_xml_to_trees(tree_file_path: str) -> None:
    xml_tree = xmlET.parse(tree_file_path)
    xml_root = xml_tree.getroot()
    # print(root.iter())
    # for child in root:
    #     print(child.tag)
    # print(child.text)
    bt_ = xml_root.find("BehaviorTree")
    print(bt_.tag)

    ParseNodeFromXmlElement(bt_)


def ParseNodeFromXmlElement(xml_element: xmlET.Element) -> xmlET.Element:
    """
    Parse a PyTreeNode from an xml element
    """
    # if xml_element.tag == "TreeNodesModel":
    #     print("Found a PyTreeNode")
    #     return
    print(xml_element.tag)
    # children = xml_element.getchildren() #! 即将弃用，请使用 list(xml_element)
    children = list(xml_element)
    if children:
        for child in children:
            if child.tag == "TreeNodesModel":
                continue
            ParseNodeFromXmlElement(child)
    else:
        return xml_element


if __name__ == "__main__":
    file_p = "./tree_files/t_1.xml"
    test_xml_to_trees(file_p)
