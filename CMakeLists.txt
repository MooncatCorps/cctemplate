cmake_minimum_required(VERSION 3.12)

project(MooncatProject
        VERSION 0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED true)

configure_file(src/project/project.hh.in
               src/project/project.hh)

file(GLOB SRC CONFIGURE_DEPENDS "./src/**/*.cc" "./src/**/*.hh")
include_directories("./src/")

add_executable(${PROJECT_NAME}
               src/main.cc ${SRC})

target_include_directories(${PROJECT_NAME}
                           PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           "./src/")

