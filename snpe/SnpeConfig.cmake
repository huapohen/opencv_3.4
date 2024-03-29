# set(Snpe_VERSION 1.58)
# set(PACKAGE_VERSION ${Snpe_VERSION})

message("${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_LIST_DIR}")
set(Snpe_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/include/zdl)

if(${CMAKE_SYSTEM_NAME} STREQUAL QNX)
  file(GLOB Snpe_LIBS ${CMAKE_CURRENT_LIST_DIR}/lib/qnx/*.so)
else()
  file(GLOB Snpe_LIBS ${CMAKE_CURRENT_LIST_DIR}/lib/cpu/*.so)
endif()