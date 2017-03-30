# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simulator_messages: 3 messages, 0 services")

set(MSG_I_FLAGS "-Isimulator_messages:/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simulator_messages_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg" NAME_WE)
add_custom_target(_simulator_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator_messages" "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg" NAME_WE)
add_custom_target(_simulator_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator_messages" "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg" ""
)

get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg" NAME_WE)
add_custom_target(_simulator_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator_messages" "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_messages
)
_generate_msg_cpp(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_messages
)
_generate_msg_cpp(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_messages
)

### Generating Services

### Generating Module File
_generate_module_cpp(simulator_messages
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_messages
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simulator_messages_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simulator_messages_generate_messages simulator_messages_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_cpp _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_cpp _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_cpp _simulator_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_messages_gencpp)
add_dependencies(simulator_messages_gencpp simulator_messages_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_messages_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_messages
)
_generate_msg_eus(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_messages
)
_generate_msg_eus(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_messages
)

### Generating Services

### Generating Module File
_generate_module_eus(simulator_messages
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_messages
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simulator_messages_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simulator_messages_generate_messages simulator_messages_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_eus _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_eus _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_eus _simulator_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_messages_geneus)
add_dependencies(simulator_messages_geneus simulator_messages_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_messages_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_messages
)
_generate_msg_lisp(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_messages
)
_generate_msg_lisp(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_messages
)

### Generating Services

### Generating Module File
_generate_module_lisp(simulator_messages
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_messages
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simulator_messages_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simulator_messages_generate_messages simulator_messages_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_lisp _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_lisp _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_lisp _simulator_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_messages_genlisp)
add_dependencies(simulator_messages_genlisp simulator_messages_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_messages_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_messages
)
_generate_msg_nodejs(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_messages
)
_generate_msg_nodejs(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_messages
)

### Generating Services

### Generating Module File
_generate_module_nodejs(simulator_messages
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_messages
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simulator_messages_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simulator_messages_generate_messages simulator_messages_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_nodejs _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_nodejs _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_nodejs _simulator_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_messages_gennodejs)
add_dependencies(simulator_messages_gennodejs simulator_messages_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_messages_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_messages
)
_generate_msg_py(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_messages
)
_generate_msg_py(simulator_messages
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_messages
)

### Generating Services

### Generating Module File
_generate_module_py(simulator_messages
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_messages
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simulator_messages_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simulator_messages_generate_messages simulator_messages_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/ActuatorMessage.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_py _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_py _simulator_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_messages_generate_messages_py _simulator_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_messages_genpy)
add_dependencies(simulator_messages_genpy simulator_messages_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_messages_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_messages
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(simulator_messages_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_messages
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(simulator_messages_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_messages
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(simulator_messages_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_messages
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(simulator_messages_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_messages)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_messages\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_messages
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(simulator_messages_generate_messages_py std_msgs_generate_messages_py)
endif()
