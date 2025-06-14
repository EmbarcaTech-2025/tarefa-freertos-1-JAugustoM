cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(TARGET_GROUP production CACHE STRING "Group to build")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(PICO_BOARD pico_w CACHE STRING "Board type")

if(DEFINED ENV{FREERTOS_PATH})
  set(FREERTOS_PATH $ENV{FREERTOS_PATH})
else()
  set(FREERTOS_PATH ${CMAKE_CURRENT_LIST_DIR}/FreeRTOS-Kernel)
endif()

include(pico_sdk_import.cmake)
add_subdirectory(${FREERTOS_PATH}/portable/ThirdParty/GCC/RP2040/
  FreeRTOS-Kernel
)
set(FREERTOS_CONFIG_FILE_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/src/include)

project(freertos-pico C CXX ASM)

pico_sdk_init()

# add_subdirectory(src/drivers)
# add_subdirectory(src/hal)

if(TARGET_GROUP STREQUAL production)
  add_subdirectory(src/app)
elseif(TARGET_GROUP STREQUAL test)
  # add_subdirectory(Unity)
  add_subdirectory(src/test)
else()
  message(FATAL_ERROR "Given TARGET_GROUP unknown")
endif()


