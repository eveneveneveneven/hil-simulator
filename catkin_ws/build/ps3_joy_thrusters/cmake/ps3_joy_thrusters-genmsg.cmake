# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ps3_joy_thrusters: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ips3_joy_thrusters:/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ps3_joy_thrusters_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg" NAME_WE)
add_custom_target(_ps3_joy_thrusters_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ps3_joy_thrusters" "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ps3_joy_thrusters
  "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps3_joy_thrusters
)

### Generating Services

### Generating Module File
_generate_module_cpp(ps3_joy_thrusters
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps3_joy_thrusters
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ps3_joy_thrusters_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ps3_joy_thrusters_generate_messages ps3_joy_thrusters_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(ps3_joy_thrusters_generate_messages_cpp _ps3_joy_thrusters_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3_joy_thrusters_gencpp)
add_dependencies(ps3_joy_thrusters_gencpp ps3_joy_thrusters_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3_joy_thrusters_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ps3_joy_thrusters
  "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ps3_joy_thrusters
)

### Generating Services

### Generating Module File
_generate_module_eus(ps3_joy_thrusters
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ps3_joy_thrusters
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ps3_joy_thrusters_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ps3_joy_thrusters_generate_messages ps3_joy_thrusters_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(ps3_joy_thrusters_generate_messages_eus _ps3_joy_thrusters_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3_joy_thrusters_geneus)
add_dependencies(ps3_joy_thrusters_geneus ps3_joy_thrusters_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3_joy_thrusters_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ps3_joy_thrusters
  "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps3_joy_thrusters
)

### Generating Services

### Generating Module File
_generate_module_lisp(ps3_joy_thrusters
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps3_joy_thrusters
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ps3_joy_thrusters_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ps3_joy_thrusters_generate_messages ps3_joy_thrusters_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(ps3_joy_thrusters_generate_messages_lisp _ps3_joy_thrusters_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3_joy_thrusters_genlisp)
add_dependencies(ps3_joy_thrusters_genlisp ps3_joy_thrusters_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3_joy_thrusters_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ps3_joy_thrusters
  "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ps3_joy_thrusters
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ps3_joy_thrusters
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ps3_joy_thrusters
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ps3_joy_thrusters_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ps3_joy_thrusters_generate_messages ps3_joy_thrusters_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(ps3_joy_thrusters_generate_messages_nodejs _ps3_joy_thrusters_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3_joy_thrusters_gennodejs)
add_dependencies(ps3_joy_thrusters_gennodejs ps3_joy_thrusters_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3_joy_thrusters_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ps3_joy_thrusters
  "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3_joy_thrusters
)

### Generating Services

### Generating Module File
_generate_module_py(ps3_joy_thrusters
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3_joy_thrusters
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ps3_joy_thrusters_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ps3_joy_thrusters_generate_messages ps3_joy_thrusters_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(ps3_joy_thrusters_generate_messages_py _ps3_joy_thrusters_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3_joy_thrusters_genpy)
add_dependencies(ps3_joy_thrusters_genpy ps3_joy_thrusters_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3_joy_thrusters_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps3_joy_thrusters)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps3_joy_thrusters
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ps3_joy_thrusters_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ps3_joy_thrusters)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ps3_joy_thrusters
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ps3_joy_thrusters_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps3_joy_thrusters)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps3_joy_thrusters
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ps3_joy_thrusters_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ps3_joy_thrusters)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ps3_joy_thrusters
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ps3_joy_thrusters_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3_joy_thrusters)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3_joy_thrusters\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3_joy_thrusters
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ps3_joy_thrusters_generate_messages_py std_msgs_generate_messages_py)
endif()
