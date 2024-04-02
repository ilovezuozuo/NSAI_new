# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mir_actions: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imir_actions:/home/inexbot/NSAI_new/devel/share/mir_actions/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Imir_msgs:/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mir_actions_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg" NAME_WE)
add_custom_target(_mir_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_actions" "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg" "actionlib_msgs/GoalID:geometry_msgs/Pose:mir_actions/MirMoveBaseGoal:geometry_msgs/Quaternion:geometry_msgs/Point:mir_actions/MirMoveBaseResult:mir_actions/MirMoveBaseActionFeedback:mir_actions/MirMoveBaseFeedback:mir_actions/MirMoveBaseActionResult:actionlib_msgs/GoalStatus:nav_msgs/Path:mir_msgs/MirLocalPlannerPathTypes:geometry_msgs/PoseStamped:geometry_msgs/Pose2D:std_msgs/Header:mir_actions/MirMoveBaseActionGoal"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg" NAME_WE)
add_custom_target(_mir_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_actions" "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg" "actionlib_msgs/GoalID:geometry_msgs/Pose:mir_actions/MirMoveBaseGoal:geometry_msgs/Quaternion:geometry_msgs/Point:nav_msgs/Path:mir_msgs/MirLocalPlannerPathTypes:geometry_msgs/PoseStamped:geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg" NAME_WE)
add_custom_target(_mir_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_actions" "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg" "actionlib_msgs/GoalID:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:mir_actions/MirMoveBaseResult:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg" NAME_WE)
add_custom_target(_mir_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_actions" "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg" "actionlib_msgs/GoalID:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:mir_actions/MirMoveBaseFeedback:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg" NAME_WE)
add_custom_target(_mir_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_actions" "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:nav_msgs/Path:mir_msgs/MirLocalPlannerPathTypes:geometry_msgs/PoseStamped:geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg" NAME_WE)
add_custom_target(_mir_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_actions" "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg" NAME_WE)
add_custom_target(_mir_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_actions" "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose2D:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
)
_generate_msg_cpp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
)
_generate_msg_cpp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
)
_generate_msg_cpp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
)
_generate_msg_cpp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
)
_generate_msg_cpp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
)
_generate_msg_cpp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
)

### Generating Services

### Generating Module File
_generate_module_cpp(mir_actions
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mir_actions_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mir_actions_generate_messages mir_actions_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_cpp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_cpp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_cpp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_cpp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_cpp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_cpp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_cpp _mir_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_actions_gencpp)
add_dependencies(mir_actions_gencpp mir_actions_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_actions_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
)
_generate_msg_eus(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
)
_generate_msg_eus(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
)
_generate_msg_eus(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
)
_generate_msg_eus(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
)
_generate_msg_eus(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
)
_generate_msg_eus(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
)

### Generating Services

### Generating Module File
_generate_module_eus(mir_actions
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mir_actions_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mir_actions_generate_messages mir_actions_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_eus _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_eus _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_eus _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_eus _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_eus _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_eus _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_eus _mir_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_actions_geneus)
add_dependencies(mir_actions_geneus mir_actions_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_actions_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
)
_generate_msg_lisp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
)
_generate_msg_lisp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
)
_generate_msg_lisp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
)
_generate_msg_lisp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
)
_generate_msg_lisp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
)
_generate_msg_lisp(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
)

### Generating Services

### Generating Module File
_generate_module_lisp(mir_actions
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mir_actions_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mir_actions_generate_messages mir_actions_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_lisp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_lisp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_lisp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_lisp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_lisp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_lisp _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_lisp _mir_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_actions_genlisp)
add_dependencies(mir_actions_genlisp mir_actions_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_actions_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
)
_generate_msg_nodejs(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
)
_generate_msg_nodejs(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
)
_generate_msg_nodejs(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
)
_generate_msg_nodejs(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
)
_generate_msg_nodejs(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
)
_generate_msg_nodejs(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mir_actions
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mir_actions_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mir_actions_generate_messages mir_actions_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_nodejs _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_nodejs _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_nodejs _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_nodejs _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_nodejs _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_nodejs _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_nodejs _mir_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_actions_gennodejs)
add_dependencies(mir_actions_gennodejs mir_actions_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_actions_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
)
_generate_msg_py(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
)
_generate_msg_py(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
)
_generate_msg_py(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
)
_generate_msg_py(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
)
_generate_msg_py(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
)
_generate_msg_py(mir_actions
  "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
)

### Generating Services

### Generating Module File
_generate_module_py(mir_actions
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mir_actions_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mir_actions_generate_messages mir_actions_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseAction.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_py _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_py _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_py _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_py _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseGoal.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_py _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseResult.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_py _mir_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg" NAME_WE)
add_dependencies(mir_actions_generate_messages_py _mir_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_actions_genpy)
add_dependencies(mir_actions_genpy mir_actions_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_actions_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_actions
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mir_actions_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET mir_msgs_generate_messages_cpp)
  add_dependencies(mir_actions_generate_messages_cpp mir_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(mir_actions_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_actions
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mir_actions_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET mir_msgs_generate_messages_eus)
  add_dependencies(mir_actions_generate_messages_eus mir_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(mir_actions_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_actions
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mir_actions_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET mir_msgs_generate_messages_lisp)
  add_dependencies(mir_actions_generate_messages_lisp mir_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(mir_actions_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_actions
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mir_actions_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET mir_msgs_generate_messages_nodejs)
  add_dependencies(mir_actions_generate_messages_nodejs mir_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(mir_actions_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_actions
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mir_actions_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET mir_msgs_generate_messages_py)
  add_dependencies(mir_actions_generate_messages_py mir_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(mir_actions_generate_messages_py nav_msgs_generate_messages_py)
endif()
