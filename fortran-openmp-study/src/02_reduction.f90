program reduction_demo
  implicit none
  integer, parameter :: N = 10000000
  integer :: i
  real(8) :: sum

  sum = 0.0d0
!$omp parallel do default(shared) private(i) reduction(+:sum)
  do i = 1, N
    sum = sum + 1.0d0 / dble(i)
  end do
!$omp end parallel do

  print '(A,ES12.5)', "Harmonic partial sum = ", sum
end program reduction_demo
