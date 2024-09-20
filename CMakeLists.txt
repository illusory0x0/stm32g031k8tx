cmake_minimum_required(VERSION 3.22 FATAL_ERROR)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS ON)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug")
endif()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include("cmake/gcc-arm-none-eabi.cmake")
include("cmake/common.cmake")
include("cmake/clang-arm.cmake")

set_system()
# use_arm_none_eabi_gcc()
use_clang()
set_common()

project(stm32g031k8tx C ASM)

message("Build type: " ${CMAKE_BUILD_TYPE})

add_executable(${CMAKE_PROJECT_NAME}
    App/startup_stm32g031xx.s
    App/Src/main.c
    App/Src/stm32g0xx_hal_msp.c
    App/Src/stm32g0xx_it.c
    App/Src/system_stm32g0xx.c)

add_subdirectory(cmake/stm32hal)

target_link_libraries(${CMAKE_PROJECT_NAME}
    stm32hal
)
