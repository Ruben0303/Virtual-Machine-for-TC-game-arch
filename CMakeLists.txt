project(VIRTUAL_MACHINE)
cmake_minimum_required(VERSION 3.7)
include_directories(${PROJECT_SOURCE_DIR}/include)

add_executable(emu test_run/TEST.cpp lib/emu.cpp lib/emu_runner.cpp)
