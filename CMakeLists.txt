cmake_minimum_required(VERSION 3.17)

project(kernel-passive-aggressive VERSION 0.1)

add_library(kpa kpa.c)
set_target_properties(kpa PROPERTIES 
    VERSION ${PROJECT_VERSION}
    C_STANDARD 99
    )

add_executable(kpa_test kpa_test.c)
target_include_directories(kpa_test PRIVATE vendor)
target_link_libraries(kpa_test kpa)

enable_testing()
add_test(kpa_test kpa_test)