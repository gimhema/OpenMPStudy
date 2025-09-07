FC      := gfortran
FFLAGS  := -O2 -Wall -std=f2008 -fopenmp
SRC_DIR := src
BIN_DIR := bin

EXES := $(BIN_DIR)/hello_parallel \
        $(BIN_DIR)/reduction_demo \
        $(BIN_DIR)/schedule_demo \
        $(BIN_DIR)/critical_atomic_demo

all: $(EXES)

$(BIN_DIR)/hello_parallel: $(SRC_DIR)/01_hello_parallel.f90
	@mkdir -p $(BIN_DIR)
	$(FC) $(FFLAGS) $< -o $@

$(BIN_DIR)/reduction_demo: $(SRC_DIR)/02_reduction.f90
	@mkdir -p $(BIN_DIR)
	$(FC) $(FFLAGS) $< -o $@

$(BIN_DIR)/schedule_demo: $(SRC_DIR)/03_schedule.f90
	@mkdir -p $(BIN_DIR)
	$(FC) $(FFLAGS) $< -o $@

$(BIN_DIR)/critical_atomic_demo: $(SRC_DIR)/04_critical_atomic.f90
	@mkdir -p $(BIN_DIR)
	$(FC) $(FFLAGS) $< -o $@

run-hello: $(BIN_DIR)/hello_parallel
	OMP_NUM_THREADS=4 $<

run-reduction: $(BIN_DIR)/reduction_demo
	OMP_NUM_THREADS=8 $<

run-schedule: $(BIN_DIR)/schedule_demo
	OMP_NUM_THREADS=6 $<

run-atomic: $(BIN_DIR)/critical_atomic_demo
	OMP_NUM_THREADS=8 $<

clean:
	rm -rf $(BIN_DIR)
.PHONY: all clean run-hello run-reduction run-schedule run-atomic
