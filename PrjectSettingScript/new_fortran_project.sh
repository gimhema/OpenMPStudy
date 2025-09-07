#!/usr/bin/env bash
# Usage: ./new_fortran_project.sh MyProject

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <project_name>"
    exit 1
fi

PROJECT_NAME=$1

# 디렉토리 생성
mkdir -p "$PROJECT_NAME"/{src,build,bin}

# README.md 작성
cat > "$PROJECT_NAME/README.md" <<EOF
# $PROJECT_NAME

This is a simple Fortran project generated automatically.

## Build (with Make)
\`\`\`bash
make
\`\`\`

## Run (with Make)
\`\`\`bash
make run
\`\`\`

## Build (with CMake)
\`\`\`bash
mkdir -p build && cd build
cmake ..
cmake --build .
\`\`\`

## Run (with CMake)
\`\`\`bash
./bin/hello_fortran
\`\`\`
EOF

# Makefile 작성
cat > "$PROJECT_NAME/Makefile" <<EOF
FC      = gfortran
FFLAGS  = -O2 -Wall -std=f2008
SRC     = src/hello_fortran.f90
TARGET  = bin/hello_fortran

all: \$(TARGET)

\$(TARGET): \$(SRC)
	\$(FC) \$(FFLAGS) \$^ -o \$@

run: \$(TARGET)
	./\$(TARGET)

clean:
	rm -rf bin/* build/*
EOF

# CMakeLists.txt 작성
cat > "$PROJECT_NAME/CMakeLists.txt" <<EOF
cmake_minimum_required(VERSION 3.16)
project($PROJECT_NAME LANGUAGES Fortran)

set(CMAKE_Fortran_STANDARD 2008)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY \${CMAKE_BINARY_DIR}/../bin)

add_executable(hello_fortran src/hello_fortran.f90)
EOF

# 기본 Fortran 소스 작성
cat > "$PROJECT_NAME/src/hello_fortran.f90" <<EOF
program hello_fortran
  implicit none
  print *, "Hello, Fortran from $PROJECT_NAME!"
end program hello_fortran
EOF

echo "✅ Project '$PROJECT_NAME' created successfully!"
echo "➡ cd $PROJECT_NAME && make   # or use cmake"
