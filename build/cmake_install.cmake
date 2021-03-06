# Install script for directory: /home/lzw/turtlebot2/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lzw/turtlebot2/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lzw/turtlebot2/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lzw/turtlebot2/install" TYPE PROGRAM FILES "/home/lzw/turtlebot2/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lzw/turtlebot2/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lzw/turtlebot2/install" TYPE PROGRAM FILES "/home/lzw/turtlebot2/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lzw/turtlebot2/install/setup.bash;/home/lzw/turtlebot2/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lzw/turtlebot2/install" TYPE FILE FILES
    "/home/lzw/turtlebot2/build/catkin_generated/installspace/setup.bash"
    "/home/lzw/turtlebot2/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lzw/turtlebot2/install/setup.sh;/home/lzw/turtlebot2/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lzw/turtlebot2/install" TYPE FILE FILES
    "/home/lzw/turtlebot2/build/catkin_generated/installspace/setup.sh"
    "/home/lzw/turtlebot2/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lzw/turtlebot2/install/setup.zsh;/home/lzw/turtlebot2/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lzw/turtlebot2/install" TYPE FILE FILES
    "/home/lzw/turtlebot2/build/catkin_generated/installspace/setup.zsh"
    "/home/lzw/turtlebot2/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lzw/turtlebot2/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lzw/turtlebot2/install" TYPE FILE FILES "/home/lzw/turtlebot2/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/lzw/turtlebot2/build/gtest/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki/kobuki/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki/kobuki_capabilities/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_desktop/kobuki_desktop/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_desktop/kobuki_gazebo/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki/kobuki_rapps/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_desktop/kobuki_rviz_launchers/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_msgs/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot/turtlebot/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_apps/turtlebot_apps/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot/turtlebot_bringup/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot/turtlebot_capabilities/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_interactions/turtlebot_dashboard/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_simulator/turtlebot_gazebo/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_interactions/turtlebot_interactions/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_apps/turtlebot_rapps/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_interactions/turtlebot_rviz_launchers/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_simulator/turtlebot_simulator/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_simulator/turtlebot_stage/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_simulator/turtlebot_stdr/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_keyop/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/robot_nodes/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki/kobuki_auto_docking/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/depthimage_to_laserscan/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_bumper2pc/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_desktop/kobuki_dashboard/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/robot_pose_ekf/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_apps/turtlebot_actions/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_apps/turtlebot_calibration/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_interactions/turtlebot_interactive_markers/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_msgs/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_apps/turtlebot_follower/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot_apps/turtlebot_navigation/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot/turtlebot_teleop/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_desktop/kobuki_gazebo_plugins/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_description/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/turtlebot/turtlebot_description/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/yocs_cmd_vel_mux/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/yocs_controllers/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki/kobuki_controller_tutorial/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki/kobuki_random_walker/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_safety_controller/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/yocs_velocity_smoother/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki_node/cmake_install.cmake")
  include("/home/lzw/turtlebot2/build/kobuki/kobuki_testsuite/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/lzw/turtlebot2/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
