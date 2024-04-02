execute_process(COMMAND "/home/inexbot/NSAI_new/build/Official_package/handeye/easy_handeye/easy_handeye/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/inexbot/NSAI_new/build/Official_package/handeye/easy_handeye/easy_handeye/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
