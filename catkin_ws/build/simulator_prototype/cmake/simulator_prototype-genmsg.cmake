# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simulator_prototype: 4 messages, 0 services")

set(MSG_I_FLAGS "-Isimulator_prototype:/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simulator_prototype_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg" NAME_WE)
add_custom_target(_simulator_prototype_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator_prototype" "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg" NAME_WE)
add_custom_target(_simulator_prototype_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator_prototype" "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg" NAME_WE)
add_custom_target(_simulator_prototype_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator_prototype" "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg" ""
)

get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg" NAME_WE)
add_custom_target(_simulator_prototype_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator_prototype" "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_prototype
)
_generate_msg_cpp(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_prototype
)
_generate_msg_cpp(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_prototype
)
_generate_msg_cpp(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_prototype
)

### Generating Services

### Generating Module File
_generate_module_cpp(simulator_prototype
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_prototype
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simulator_prototype_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simulator_prototype_generate_messages simulator_prototype_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_cpp _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_cpp _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_cpp _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_cpp _simulator_prototype_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_prototype_gencpp)
add_dependencies(simulator_prototype_gencpp simulator_prototype_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_prototype_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_prototype
)
_generate_msg_eus(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_prototype
)
_generate_msg_eus(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_prototype
)
_generate_msg_eus(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_prototype
)

### Generating Services

### Generating Module File
_generate_module_eus(simulator_prototype
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_prototype
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simulator_prototype_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simulator_prototype_generate_messages simulator_prototype_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_eus _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_eus _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_eus _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_eus _simulator_prototype_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_prototype_geneus)
add_dependencies(simulator_prototype_geneus simulator_prototype_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_prototype_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_prototype
)
_generate_msg_lisp(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_prototype
)
_generate_msg_lisp(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_prototype
)
_generate_msg_lisp(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_prototype
)

### Generating Services

### Generating Module File
_generate_module_lisp(simulator_prototype
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_prototype
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simulator_prototype_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simulator_prototype_generate_messages simulator_prototype_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_lisp _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_lisp _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_lisp _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_lisp _simulator_prototype_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_prototype_genlisp)
add_dependencies(simulator_prototype_genlisp simulator_prototype_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_prototype_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_prototype
)
_generate_msg_nodejs(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_prototype
)
_generate_msg_nodejs(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_prototype
)
_generate_msg_nodejs(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_prototype
)

### Generating Services

### Generating Module File
_generate_module_nodejs(simulator_prototype
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_prototype
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simulator_prototype_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simulator_prototype_generate_messages simulator_prototype_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_nodejs _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_nodejs _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_nodejs _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_nodejs _simulator_prototype_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_prototype_gennodejs)
add_dependencies(simulator_prototype_gennodejs simulator_prototype_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_prototype_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_prototype
)
_generate_msg_py(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_prototype
)
_generate_msg_py(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_prototype
)
_generate_msg_py(simulator_prototype
  "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_prototype
)

### Generating Services

### Generating Module File
_generate_module_py(simulator_prototype
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_prototype
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simulator_prototype_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simulator_prototype_generate_messages simulator_prototype_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/OdinActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_py _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Gps.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_py _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/Environment.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_py _simulator_prototype_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/simulator_prototype/msg/JolnerActuators.msg" NAME_WE)
add_dependencies(simulator_prototype_generate_messages_py _simulator_prototype_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_prototype_genpy)
add_dependencies(simulator_prototype_genpy simulator_prototype_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_prototype_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_prototype)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator_prototype
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(simulator_prototype_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_prototype)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator_prototype
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(simulator_prototype_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_prototype)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator_prototype
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(simulator_prototype_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_prototype)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator_prototype
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(simulator_prototype_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_prototype)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_prototype\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator_prototype
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(simulator_prototype_generate_messages_py std_msgs_generate_messages_py)
endif()
