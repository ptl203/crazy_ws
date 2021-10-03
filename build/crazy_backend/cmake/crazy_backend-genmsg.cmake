# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "crazy_backend: 0 messages, 0 services")

set(MSG_I_FLAGS "-Icrazy_msgs:/home/bitcraze/crazy_ws/src/crazy_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Icrazyswarm:/home/bitcraze/crazyswarm/ros_ws/src/crazyswarm/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(crazy_backend_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(crazy_backend
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazy_backend
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(crazy_backend_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(crazy_backend_generate_messages crazy_backend_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(crazy_backend_gencpp)
add_dependencies(crazy_backend_gencpp crazy_backend_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_backend_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(crazy_backend
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazy_backend
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(crazy_backend_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(crazy_backend_generate_messages crazy_backend_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(crazy_backend_geneus)
add_dependencies(crazy_backend_geneus crazy_backend_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_backend_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(crazy_backend
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazy_backend
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(crazy_backend_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(crazy_backend_generate_messages crazy_backend_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(crazy_backend_genlisp)
add_dependencies(crazy_backend_genlisp crazy_backend_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_backend_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(crazy_backend
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazy_backend
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(crazy_backend_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(crazy_backend_generate_messages crazy_backend_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(crazy_backend_gennodejs)
add_dependencies(crazy_backend_gennodejs crazy_backend_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_backend_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(crazy_backend
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_backend
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(crazy_backend_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(crazy_backend_generate_messages crazy_backend_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(crazy_backend_genpy)
add_dependencies(crazy_backend_genpy crazy_backend_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_backend_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazy_backend)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazy_backend
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET crazy_msgs_generate_messages_cpp)
  add_dependencies(crazy_backend_generate_messages_cpp crazy_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(crazy_backend_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET crazyswarm_generate_messages_cpp)
  add_dependencies(crazy_backend_generate_messages_cpp crazyswarm_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazy_backend)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazy_backend
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET crazy_msgs_generate_messages_eus)
  add_dependencies(crazy_backend_generate_messages_eus crazy_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(crazy_backend_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET crazyswarm_generate_messages_eus)
  add_dependencies(crazy_backend_generate_messages_eus crazyswarm_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazy_backend)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazy_backend
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET crazy_msgs_generate_messages_lisp)
  add_dependencies(crazy_backend_generate_messages_lisp crazy_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(crazy_backend_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET crazyswarm_generate_messages_lisp)
  add_dependencies(crazy_backend_generate_messages_lisp crazyswarm_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazy_backend)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazy_backend
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET crazy_msgs_generate_messages_nodejs)
  add_dependencies(crazy_backend_generate_messages_nodejs crazy_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(crazy_backend_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET crazyswarm_generate_messages_nodejs)
  add_dependencies(crazy_backend_generate_messages_nodejs crazyswarm_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_backend)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_backend\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_backend
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET crazy_msgs_generate_messages_py)
  add_dependencies(crazy_backend_generate_messages_py crazy_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(crazy_backend_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET crazyswarm_generate_messages_py)
  add_dependencies(crazy_backend_generate_messages_py crazyswarm_generate_messages_py)
endif()
