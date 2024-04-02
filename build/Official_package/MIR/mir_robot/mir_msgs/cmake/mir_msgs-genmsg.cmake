# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mir_msgs: 57 messages, 0 services")

set(MSG_I_FLAGS "-Imir_msgs:/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mir_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg" "mir_msgs/Device"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg" "std_msgs/Header:mir_msgs/Event:geometry_msgs/Point"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Twist:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg" "mir_msgs/ExternalRobot:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Twist:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg" "mir_msgs/AngleMeasurment"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg" "mir_msgs/HeightState:mir_msgs/GripperState:mir_msgs/BrakeState"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg" "mir_msgs/Trolley"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg" "geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg" "std_msgs/Header:mir_msgs/Pose2D"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:mir_msgs/PlanSegment"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg" "mir_msgs/ResourceState:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg" "mir_msgs/HookData:std_msgs/Header:mir_msgs/Trolley:mir_msgs/Error:mir_msgs/AngleMeasurment:mir_msgs/Twist2D:mir_msgs/HookStatus:mir_msgs/UserPrompt:mir_msgs/Pose2D"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg" "std_msgs/Header:mir_msgs/Encoders"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg" ""
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg" "mir_msgs/ResourceState:mir_msgs/ResourcesState:mir_msgs/ExternalRobot:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Twist:mir_msgs/ExternalRobots:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg" NAME_WE)
add_custom_target(_mir_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mir_msgs" "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg" "mir_msgs/ResourceState:mir_msgs/ResourcesState:mir_msgs/ExternalRobot:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Twist:mir_msgs/ExternalRobots:mir_msgs/WorldMap:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)
_generate_msg_cpp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(mir_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mir_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mir_msgs_generate_messages mir_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_cpp _mir_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_msgs_gencpp)
add_dependencies(mir_msgs_gencpp mir_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)
_generate_msg_eus(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(mir_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mir_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mir_msgs_generate_messages mir_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_eus _mir_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_msgs_geneus)
add_dependencies(mir_msgs_geneus mir_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)
_generate_msg_lisp(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(mir_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mir_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mir_msgs_generate_messages mir_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_lisp _mir_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_msgs_genlisp)
add_dependencies(mir_msgs_genlisp mir_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)
_generate_msg_nodejs(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mir_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mir_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mir_msgs_generate_messages mir_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_nodejs _mir_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_msgs_gennodejs)
add_dependencies(mir_msgs_gennodejs mir_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)
_generate_msg_py(mir_msgs
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg;/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(mir_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mir_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mir_msgs_generate_messages mir_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/AngleMeasurment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BMSData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BatteryCurrents.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/BrakeState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ChargingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Device.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Devices.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/EncoderTestEntry.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Error.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Event.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Events.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobot.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ExternalRobots.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Gpio.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HeightState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookData.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookExtendedStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/HookStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/IOs.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/JoystickVel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/LocalMapStat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirExtra.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MirLocalPlannerPathTypes.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlCommand.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MissionCtrlState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/MovingState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PalletLifterStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Path.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pendant.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegment.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PlanSegments.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PowerBoardMotorStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/PrecisionDockingStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Proximity.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourceState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesAcquisition.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ResourcesState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotMode.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SafetyStatus.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/ServiceResponseHeader.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionDiff.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SkidDetectionStampedFloat.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/SoundEvent.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/TimeDebug.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Trolley.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/UserPrompt.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WebPath.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldMap.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_msgs/msg/WorldModel.msg" NAME_WE)
add_dependencies(mir_msgs_generate_messages_py _mir_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mir_msgs_genpy)
add_dependencies(mir_msgs_genpy mir_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mir_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mir_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mir_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mir_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mir_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mir_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mir_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mir_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mir_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mir_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mir_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
