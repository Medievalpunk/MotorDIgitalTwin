# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iseauto: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iiseauto:/home/sejego/catkin_ws/src/iseauto/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iseauto_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg" NAME_WE)
add_custom_target(_iseauto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iseauto" "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg" ""
)

get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg" NAME_WE)
add_custom_target(_iseauto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iseauto" "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg" ""
)

get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg" NAME_WE)
add_custom_target(_iseauto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iseauto" "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iseauto
)
_generate_msg_cpp(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iseauto
)
_generate_msg_cpp(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iseauto
)

### Generating Services

### Generating Module File
_generate_module_cpp(iseauto
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iseauto
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iseauto_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iseauto_generate_messages iseauto_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_cpp _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_cpp _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_cpp _iseauto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iseauto_gencpp)
add_dependencies(iseauto_gencpp iseauto_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iseauto_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iseauto
)
_generate_msg_eus(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iseauto
)
_generate_msg_eus(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iseauto
)

### Generating Services

### Generating Module File
_generate_module_eus(iseauto
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iseauto
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iseauto_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iseauto_generate_messages iseauto_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_eus _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_eus _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_eus _iseauto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iseauto_geneus)
add_dependencies(iseauto_geneus iseauto_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iseauto_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iseauto
)
_generate_msg_lisp(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iseauto
)
_generate_msg_lisp(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iseauto
)

### Generating Services

### Generating Module File
_generate_module_lisp(iseauto
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iseauto
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iseauto_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iseauto_generate_messages iseauto_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_lisp _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_lisp _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_lisp _iseauto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iseauto_genlisp)
add_dependencies(iseauto_genlisp iseauto_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iseauto_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iseauto
)
_generate_msg_nodejs(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iseauto
)
_generate_msg_nodejs(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iseauto
)

### Generating Services

### Generating Module File
_generate_module_nodejs(iseauto
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iseauto
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iseauto_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iseauto_generate_messages iseauto_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_nodejs _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_nodejs _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_nodejs _iseauto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iseauto_gennodejs)
add_dependencies(iseauto_gennodejs iseauto_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iseauto_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iseauto
)
_generate_msg_py(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iseauto
)
_generate_msg_py(iseauto
  "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iseauto
)

### Generating Services

### Generating Module File
_generate_module_py(iseauto
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iseauto
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iseauto_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iseauto_generate_messages iseauto_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Power.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_py _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Voltage.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_py _iseauto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejego/catkin_ws/src/iseauto/msg/Current.msg" NAME_WE)
add_dependencies(iseauto_generate_messages_py _iseauto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iseauto_genpy)
add_dependencies(iseauto_genpy iseauto_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iseauto_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iseauto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iseauto
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(iseauto_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iseauto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iseauto
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(iseauto_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iseauto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iseauto
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(iseauto_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iseauto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iseauto
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(iseauto_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iseauto)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2.7\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iseauto\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iseauto
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(iseauto_generate_messages_py std_msgs_generate_messages_py)
endif()
