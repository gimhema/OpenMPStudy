# OpenMPStudy
포트란 입문하는김에 겸사겸사

## Build
```
mkdir -p build && cd build
cmake ..   
cmake --build . --config Release
OMP_NUM_THREADS=4 ./bin/hello_parallel
```

## Execution
```
make
OMP_NUM_THREADS=4 ./bin/hello_parallel
OMP_NUM_THREADS=8 ./bin/reduction_demo
OMP_NUM_THREADS=6 ./bin/schedule_demo
OMP_NUM_THREADS=8 ./bin/critical_atomic_demo
```


