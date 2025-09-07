cmake_minimum_required(VERSION 3.16)
project(FortranOpenMPStudy LANGUAGES Fortran)

set(CMAKE_Fortran_STANDARD 2008)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# OpenMP 찾기
find_package(OpenMP REQUIRED COMPONENTS Fortran)

add_executable(hello_parallel src/01_hello_parallel.f90)
target_link_libraries(hello_parallel PRIVATE OpenMP::OpenMP_Fortran)

add_executable(reduction_demo src/02_reduction.f90)
target_link_libraries(reduction_demo PRIVATE OpenMP::OpenMP_Fortran)

add_executable(schedule_demo src/03_schedule.f90)
target_link_libraries(schedule_demo PRIVATE OpenMP::OpenMP_Fortran)

add_executable(critical_atomic_demo src/04_critical_atomic.f90)
target_link_libraries(critical_atomic_demo PRIVATE OpenMP::OpenMP_Fortran)
