# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roborts_msgs: 41 messages, 2 services")

set(MSG_I_FLAGS "-Iroborts_msgs:/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg;-Iroborts_msgs:/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis;-Iroborts_msgs:/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard;-Iroborts_msgs:/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal;-Iroborts_msgs:/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision;-Iroborts_msgs:/home/sirpjw/roborts_ws/src/roborts_msgs/msg/;-Iroborts_msgs:/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors;-Iroborts_msgs:/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roborts_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" "roborts_msgs/LocalPlannerFeedback:roborts_msgs/LocalPlannerResult:geometry_msgs/Quaternion:roborts_msgs/LocalPlannerActionResult:roborts_msgs/LocalPlannerActionFeedback:roborts_msgs/LocalPlannerGoal:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Point:roborts_msgs/LocalPlannerActionGoal:geometry_msgs/PoseStamped:actionlib_msgs/GoalStatus:nav_msgs/Path:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" "geometry_msgs/Quaternion:roborts_msgs/LocalPlannerGoal:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Point:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" "actionlib_msgs/GoalID:roborts_msgs/LocalPlannerResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" "actionlib_msgs/GoalID:roborts_msgs/LocalPlannerFeedback:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" "roborts_msgs/GlobalPlannerGoal:roborts_msgs/GlobalPlannerActionResult:geometry_msgs/Quaternion:roborts_msgs/GlobalPlannerResult:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Point:roborts_msgs/GlobalPlannerActionFeedback:geometry_msgs/PoseStamped:roborts_msgs/GlobalPlannerActionGoal:actionlib_msgs/GoalStatus:nav_msgs/Path:roborts_msgs/GlobalPlannerFeedback:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" "roborts_msgs/GlobalPlannerGoal:geometry_msgs/Quaternion:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" "actionlib_msgs/GoalID:roborts_msgs/GlobalPlannerResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" "geometry_msgs/Quaternion:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalStatus:nav_msgs/Path:roborts_msgs/GlobalPlannerFeedback:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" "roborts_msgs/ArmorDetectionResult:roborts_msgs/ArmorDetectionGoal:geometry_msgs/Quaternion:roborts_msgs/ArmorDetectionActionResult:std_msgs/Header:actionlib_msgs/GoalID:roborts_msgs/ArmorDetectionActionFeedback:roborts_msgs/ArmorDetectionFeedback:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalStatus:roborts_msgs/ArmorDetectionActionGoal:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" "actionlib_msgs/GoalID:roborts_msgs/ArmorDetectionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" "actionlib_msgs/GoalID:roborts_msgs/ArmorDetectionResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" "geometry_msgs/Quaternion:std_msgs/Header:actionlib_msgs/GoalID:roborts_msgs/ArmorDetectionFeedback:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalStatus:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg" "geometry_msgs/Accel:geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg" "roborts_msgs/CarMsg"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg" "roborts_msgs/ArmorMsg:geometry_msgs/Point"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg" "roborts_msgs/GameZone"
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv" ""
)

get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/ArmorMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_srv_cpp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_cpp(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roborts_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_gencpp)
add_dependencies(roborts_msgs_gencpp roborts_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/ArmorMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_srv_eus(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_eus(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roborts_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_geneus)
add_dependencies(roborts_msgs_geneus roborts_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/ArmorMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_srv_lisp(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_lisp(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roborts_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_genlisp)
add_dependencies(roborts_msgs_genlisp roborts_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/ArmorMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_srv_nodejs(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_nodejs(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roborts_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_gennodejs)
add_dependencies(roborts_msgs_gennodejs roborts_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/ArmorMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_srv_py(roborts_msgs
  "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_py(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roborts_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/guard/CarMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/ShootControl.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/decision/RobotInfo.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsg.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg//ArmorMsgs.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/armors/ArmorDetection.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sirpjw/roborts_ws/src/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_genpy)
add_dependencies(roborts_msgs_genpy roborts_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roborts_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(roborts_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(roborts_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roborts_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(roborts_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(roborts_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roborts_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(roborts_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(roborts_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roborts_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(roborts_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(roborts_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roborts_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(roborts_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(roborts_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
