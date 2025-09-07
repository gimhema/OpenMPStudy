cmake_minimum_required(VERSION 3.16)
project(HelloFortran LANGUAGES Fortran)

set(CMAKE_Fortran_STANDARD 2008)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)

add_executable(hello_fortran src/hello_fortran.f90)
