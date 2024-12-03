cmake_minimum_required(VERSION 3.1)
project(python_test)

# set(CMAKE_CXX_STANDARD 14)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake_module)
## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages


find_package(ProtoBuf REQUIRED)
find_package(Eigen3 REQUIRED)

find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
# add_message_files(
#   FILES
#   Message1.msg
#   Message2.msg
# )

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
# generate_messages(
#   DEPENDENCIES
#   std_msgs
# )

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES python_test
#  CATKIN_DEPENDS rospy std_msgs
#  DEPENDS system_lib
INCLUDE_DIRS
# include
)


set(proto_dir ${CMAKE_CURRENT_SOURCE_DIR}/src/proto)
set(grpc_proto_dir ${CMAKE_CURRENT_SOURCE_DIR}/src/proto/server)
file(GLOB proto_files "${proto_dir}/*.proto")
file(GLOB grpc_proto_files "${proto_dir}/server/*.proto")

message(STATUS "Proto Source Dir: ${proto_dir}")
message(STATUS "Proto Source Files: ${proto_files}")
message(STATUS "GRPC Proto Source Files: ${grpc_proto_files}")


###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/python_test.cpp
# )

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})


## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
# target_link_libraries(${PROJECT_NAME}_node
#   ${catkin_LIBRARIES}

#   ${PROTOBUF_LIBRARIES}
# )


catkin_destinations()

# 设置生成目标代码文件的路径
set(proto_gen_py_dir ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_PYTHON_DESTINATION})
# 设置pb grpc生成路径
set(proto_grpc_gen_py_dir ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_PYTHON_DESTINATION})

message(STATUS "CATKIN_DEVEL_PREFIX: ${CATKIN_DEVEL_PREFIX}")
message(STATUS "CATKIN_PACKAGE_PYTHON_DESTINATION: ${CATKIN_PACKAGE_PYTHON_DESTINATION}")

file(MAKE_DIRECTORY ${proto_gen_py_dir})
# 让目标路径变为 python 的 package, 否则的话，会出现 import 异常
file(WRITE ${proto_gen_py_dir}/__init__.py)

# Create lists of files to be generated.
set(proto_gen_py_files "")
foreach(proto_file ${proto_files})
    get_filename_component(proto_name ${proto_file} NAME_WE)
    list(APPEND proto_gen_py_files ${proto_gen_py_dir}/${proto_name}_pb2.py)
endforeach(proto_file ${proto_files})

# Create lists of files to be generated.
# GPRPC
set(grpc_proto_gen_py_files "")
foreach(proto_file ${grpc_proto_files})
    get_filename_component(proto_name ${proto_file} NAME_WE)
    list(APPEND grpc_proto_gen_py_files ${proto_gen_py_dir}/${proto_name}_pb2.py)
    list(APPEND grpc_proto_gen_py_files ${proto_gen_py_dir}/${proto_name}_pb2_grpc.py)
endforeach(proto_file ${grpc_proto_files})

# Run protoc and generate language-specific headers.
execute_process(
    OUTPUT_FILE  ${proto_gen_py_files}
    # COMMAND protoc --python_out=/home/c/roborts_ws/devel/lib/python3/dist-packages/python_test  --proto_path=/home/c/roborts_ws/src/python_test/src/proto  decision.proto
    COMMAND ${PROTOBUF_PROTOC_EXECUTABLE} --python_out=${proto_gen_py_dir}  --proto_path=${proto_dir}  ${proto_files}
    # DEPENDS ${PROTOBUF_PROTOC_EXECUTABLE} ${proto_files}
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)
message(STATUS "PROTOBUF_PROTOC_EXECUTABLE: ${PROTOBUF_PROTOC_EXECUTABLE}")

# Run protoc.tool and generate pb_grpc headers.
execute_process(
    COMMAND ${PYTHON_EXECUTABLE} -m grpc_tools.protoc --python_out=${proto_grpc_gen_py_dir} --grpc_python_out=${proto_grpc_gen_py_dir}  --proto_path=${grpc_proto_dir} ${grpc_proto_files}
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)
message(STATUS "PYTHON_EXECUTABLE: ${PYTHON_EXECUTABLE}")

# 在grpc文件头 加入指定代码
set(MY_STRING "import os\nimport sys\nsys.path.append(os.path.dirname(os.path.abspath(__file__)))\n")
file(READ ${proto_gen_py_dir}/${proto_name}_pb2_grpc.py MY_CONTENT)
set(MY_STRING "${MY_STRING}\n${MY_CONTENT}")
file(WRITE ${proto_gen_py_dir}/${proto_name}_pb2_grpc.py "${MY_STRING}")

set_source_files_properties(${proto_gen_py_files} PROPERTIES GENERATED TRUE)
set_source_files_properties(${grpc_proto_gen_py_files} PROPERTIES GENERATED TRUE)

# 将生成的 py 文件拷贝到 install 对应的路径下
install(DIRECTORY ${proto_gen_py_dir}/
  # DESTINATION ${CATKIN_PACKAGE_PYTHON_DESTINATION}
  DESTINATION ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_PYTHON_DESTINATION}
  FILES_MATCHING PATTERN "*.py"
)
install(DIRECTORY ${proto_gen_py_dir}/server/
  # DESTINATION ${CATKIN_PACKAGE_PYTHON_DESTINATION}
  DESTINATION ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_PYTHON_DESTINATION}
  FILES_MATCHING PATTERN "*.py"
)

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
catkin_install_python(PROGRAMS
  src/test.py
  src/executor/ChassisExecutor.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)


## Mark executables for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html
# install(TARGETS ${PROJECT_NAME}_node
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark libraries for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_libraries.html
# install(TARGETS ${PROJECT_NAME}
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_python_test.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
