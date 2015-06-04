# Install script for directory: /home/chengque/catkin_ws/src/mavros_pkg/mavros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/ros/jade")
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
  include("/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/msg" TYPE FILE FILES
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/Mavlink.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/Waypoint.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/WaypointList.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/BatteryStatus.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/State.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/RCIn.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/RCOut.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/RadioStatus.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/OverrideRCIn.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/VFR_HUD.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/FileEntry.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/ActuatorControl.msg"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg/Control_Refs.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/srv" TYPE FILE FILES
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/ParamSet.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/ParamGet.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/ParamPull.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/ParamPush.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/WaypointSetCurrent.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/WaypointClear.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/WaypointPull.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/WaypointPush.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/WaypointGOTO.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/CommandLong.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/CommandInt.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/CommandBool.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/CommandHome.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/CommandTOL.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/StreamRate.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/SetMode.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileOpen.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileClose.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileRead.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileWrite.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileList.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileRemove.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileMakeDir.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileRemoveDir.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileTruncate.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileRename.srv"
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/srv/FileChecksum.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/cmake" TYPE FILE FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavros-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/chengque/catkin_ws/devel/include/mavros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/chengque/catkin_ws/devel/share/roseus/ros/mavros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/chengque/catkin_ws/devel/share/common-lisp/ros/mavros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/chengque/catkin_ws/devel/lib/python2.7/dist-packages/mavros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/chengque/catkin_ws/devel/lib/python2.7/dist-packages/mavros" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/chengque/catkin_ws/devel/lib/python2.7/dist-packages/mavros" FILES_MATCHING REGEX "/home/chengque/catkin_ws/devel/lib/python2.7/dist-packages/mavros/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavros.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/cmake" TYPE FILE FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavros-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/cmake" TYPE FILE FILES
    "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavrosConfig.cmake"
    "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavrosConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros" TYPE FILE FILES "/home/chengque/catkin_ws/src/mavros_pkg/mavros/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavsafety")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavcmd")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavsetp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavwp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavsys")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavftp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/chengque/catkin_ws/build/mavros_pkg/mavros/catkin_generated/installspace/mavparam")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/chengque/catkin_ws/devel/lib/libmavros.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so")
    file(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/chengque/catkin_ws/devel/lib/libmavros_plugins.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so")
    file(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE EXECUTABLE FILES "/home/chengque/catkin_ws/devel/lib/mavros/mavros_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node")
    file(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE EXECUTABLE FILES "/home/chengque/catkin_ws/devel/lib/mavros/gcs_bridge")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge")
    file(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mavros" TYPE DIRECTORY FILES "/home/chengque/catkin_ws/src/mavros_pkg/mavros/include/mavros/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros" TYPE FILE FILES "/home/chengque/catkin_ws/src/mavros_pkg/mavros/mavros_plugins.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/launch" TYPE DIRECTORY FILES "/home/chengque/catkin_ws/src/mavros_pkg/mavros/launch/")
endif()

