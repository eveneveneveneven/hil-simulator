# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "environment: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ienvironment:/home/d943/Dropbox/Master/catkin_ws/src/environment/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(environment_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg" NAME_WE)
add_custom_target(_environment_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "environment" "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg" ""
)

get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg" NAME_WE)
add_custom_target(_environment_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "environment" "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/environment
)
_generate_msg_cpp(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/environment
)

### Generating Services

### Generating Module File
_generate_module_cpp(environment
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/environment
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(environment_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(environment_generate_messages environment_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg" NAME_WE)
add_dependencies(environment_generate_messages_cpp _environment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg" NAME_WE)
add_dependencies(environment_generate_messages_cpp _environment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(environment_gencpp)
add_dependencies(environment_gencpp environment_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS environment_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/environment
)
_generate_msg_eus(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/environment
)

### Generating Services

### Generating Module File
_generate_module_eus(environment
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/environment
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(environment_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(environment_generate_messages environment_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg" NAME_WE)
add_dependencies(environment_generate_messages_eus _environment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg" NAME_WE)
add_dependencies(environment_generate_messages_eus _environment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(environment_geneus)
add_dependencies(environment_geneus environment_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS environment_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/environment
)
_generate_msg_lisp(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/environment
)

### Generating Services

### Generating Module File
_generate_module_lisp(environment
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/environment
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(environment_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(environment_generate_messages environment_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg" NAME_WE)
add_dependencies(environment_generate_messages_lisp _environment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg" NAME_WE)
add_dependencies(environment_generate_messages_lisp _environment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(environment_genlisp)
add_dependencies(environment_genlisp environment_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS environment_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/environment
)
_generate_msg_nodejs(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/environment
)

### Generating Services

### Generating Module File
_generate_module_nodejs(environment
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/environment
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(environment_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(environment_generate_messages environment_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg" NAME_WE)
add_dependencies(environment_generate_messages_nodejs _environment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg" NAME_WE)
add_dependencies(environment_generate_messages_nodejs _environment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(environment_gennodejs)
add_dependencies(environment_gennodejs environment_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS environment_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/environment
)
_generate_msg_py(environment
  "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/environment
)

### Generating Services

### Generating Module File
_generate_module_py(environment
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/environment
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(environment_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(environment_generate_messages environment_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleUpdate.msg" NAME_WE)
add_dependencies(environment_generate_messages_py _environment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d943/Dropbox/Master/catkin_ws/src/environment/msg/obstacleCmd.msg" NAME_WE)
add_dependencies(environment_generate_messages_py _environment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(environment_genpy)
add_dependencies(environment_genpy environment_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS environment_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/environment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/environment
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(environment_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/environment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/environment
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(environment_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/environment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/environment
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(environment_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/environment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/environment
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(environment_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/environment)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/environment\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/environment
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(environment_generate_messages_py std_msgs_generate_messages_py)
endif()
