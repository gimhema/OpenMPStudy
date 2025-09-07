FC      = gfortran
FFLAGS  = -O2 -Wall -std=f2008
SRC     = src/hello_fortran.f90
TARGET  = bin/hello_fortran

all: $(TARGET)

$(TARGET): $(SRC)
	$(FC) $(FFLAGS) $^ -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -rf bin/* build/*
