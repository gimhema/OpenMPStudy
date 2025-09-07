program schedule_demo
  use omp_lib
  implicit none
  integer, parameter :: N = 30
  integer :: i

  print *, "SCHEDULE(dynamic,4) with ", omp_get_max_threads(), " threads"
!$omp parallel do schedule(dynamic,4) private(i)
  do i = 1, N
    call work(i)
  end do
!$omp end parallel do

contains
  subroutine work(k)
    integer, intent(in) :: k
    integer :: j
    do j = 1, 2000000
    end do
    print '(A,I0,A,I0)', "task(", k, ") on thread ", omp_get_thread_num()
  end subroutine work
end program schedule_demo
