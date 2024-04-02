execute_process(COMMAND "/home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
