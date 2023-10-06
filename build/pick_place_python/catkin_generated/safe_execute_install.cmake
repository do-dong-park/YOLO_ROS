execute_process(COMMAND "/home/ur5e/pdk_ws/build/pick_place_python/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ur5e/pdk_ws/build/pick_place_python/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
