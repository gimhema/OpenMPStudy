program critical_atomic_demo
  implicit none
  integer :: i
  integer :: hits_critical, hits_atomic
  hits_critical = 0
  hits_atomic   = 0

!$omp parallel do
  do i = 1, 1000000
!$omp critical
    hits_critical = hits_critical + 1
!$omp end critical
  end do

!$omp parallel do
  do i = 1, 1000000
!$omp atomic
    hits_atomic = hits_atomic + 1
  end do

  print *, "critical  count =", hits_critical
  print *, "atomic    count =", hits_atomic
end program critical_atomic_demo
