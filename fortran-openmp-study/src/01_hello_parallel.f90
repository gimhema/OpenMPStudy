program hello_parallel
  use omp_lib
  implicit none
  integer :: tid, nthreads

!$omp parallel private(tid)
  tid = omp_get_thread_num()
  print '(A,I0)', "Hello from thread ", tid

!$omp single
  nthreads = omp_get_num_threads()
  print '(A,I0)', "Total threads = ", nthreads
!$omp end single
!$omp end parallel

end program hello_parallel
