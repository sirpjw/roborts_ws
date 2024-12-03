import py_trees

static_register_dict: dict = {
    "Sequence": {
        "Behaviour": py_trees.composites.Sequence,
        "Params": {
            "name": None,
            "memory": True
        }
    },
    "ReactiveSequence": {
        "Behaviour": py_trees.composites.Sequence,
        "Params": {
            "name": None,
            "memory": False
        }
    },
    "Fallback": {
        "Behaviour": py_trees.composites.Selector,
        "Params": {
            "name": None,
            "memory": True
        }
    },
    "ReactiveFallback": {
        "Behaviour": py_trees.composites.Selector,
        "Params": {
            "name": None,
            "memory": False
        }
    },
    "Parallel": {},
    "EternalGuard": {
        "Behaviour": py_trees.decorators.EternalGuard,
        "Params": {
            "name": None,
            "condition": None,
            "blackboard_keys": {}
        }
    },
    "AlwaysFailure": {},
    "Inverter": {}
}
