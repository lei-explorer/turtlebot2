# Install script for directory: /home/lzw/turtlebot2/src/kobuki_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/msg" TYPE FILE FILES
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/BumperEvent.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/CliffEvent.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/DigitalOutput.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/ExternalPower.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/Led.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/PowerSystemEvent.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/SensorState.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/VersionInfo.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/ControllerInfo.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/ButtonEvent.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/DigitalInputEvent.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/DockInfraRed.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/KeyboardInput.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/MotorPower.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/RobotStateEvent.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/Sound.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/ScanAngle.msg"
    "/home/lzw/turtlebot2/src/kobuki_msgs/msg/WheelDropEvent.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/action" TYPE FILE FILES "/home/lzw/turtlebot2/src/kobuki_msgs/action/AutoDocking.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/msg" TYPE FILE FILES
    "/home/lzw/turtlebot2/devel/share/kobuki_msgs/msg/AutoDockingAction.msg"
    "/home/lzw/turtlebot2/devel/share/kobuki_msgs/msg/AutoDockingActionGoal.msg"
    "/home/lzw/turtlebot2/devel/share/kobuki_msgs/msg/AutoDockingActionResult.msg"
    "/home/lzw/turtlebot2/devel/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg"
    "/home/lzw/turtlebot2/devel/share/kobuki_msgs/msg/AutoDockingGoal.msg"
    "/home/lzw/turtlebot2/devel/share/kobuki_msgs/msg/AutoDockingResult.msg"
    "/home/lzw/turtlebot2/devel/share/kobuki_msgs/msg/AutoDockingFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES "/home/lzw/turtlebot2/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lzw/turtlebot2/devel/include/kobuki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lzw/turtlebot2/devel/share/roseus/ros/kobuki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lzw/turtlebot2/devel/share/common-lisp/ros/kobuki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lzw/turtlebot2/devel/share/gennodejs/ros/kobuki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/lzw/turtlebot2/devel/lib/python2.7/dist-packages/kobuki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lzw/turtlebot2/devel/lib/python2.7/dist-packages/kobuki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lzw/turtlebot2/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES "/home/lzw/turtlebot2/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES
    "/home/lzw/turtlebot2/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgsConfig.cmake"
    "/home/lzw/turtlebot2/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs" TYPE FILE FILES "/home/lzw/turtlebot2/src/kobuki_msgs/package.xml")
endif()

