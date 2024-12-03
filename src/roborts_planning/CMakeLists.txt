project(roborts_planning)
cmake_minimum_required(VERSION 3.1)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake_module)
set(CMAKE_BUILD_TYPE Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  tf
  pcl_conversions
  pcl_ros
  nav_msgs
  geometry_msgs
  actionlib
  roborts_common
  roborts_msgs
  interactive_markers
  roborts_costmap
  )

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

find_package(G2O REQUIRED)
find_package(SUITESPARSE REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(PCL 1.7 REQUIRED)
find_package(ProtoBuf REQUIRED)
find_package(Boost REQUIRED)

catkin_package()

add_subdirectory(global_planner)
add_subdirectory(local_planner)

add_executable(planning_test_node planning_test.cpp)
target_link_libraries(planning_test_node
  PRIVATE
  ${catkin_LIBRARIES}
)
add_dependencies(planning_test_node roborts_msgs_generate_messages)


