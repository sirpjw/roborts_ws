project(roborts_detection)

include_directories(
  include 
  constraint_set 
  gimbal_control 
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRECTORIES}
)

#armor detection node
add_executable(armor_detection_node
  armor_detection_node.cpp
  gimbal_control/gimbal_control.cpp
  constraint_set/constraint_set.cpp
)

target_link_libraries(armor_detection_node
  ${catkin_LIBRARIES}
  ${OpenCV_LIBRARIES}
)

target_include_directories(armor_detection_node
  PRIVATE
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRECTORIES}
)