program hello_fortran
  implicit none

  integer :: integer_var
  integer :: integer_var_2
  real :: real_var
  complex :: complex_var
  character :: char_var
  logical :: logical_var
  real :: x, y
  print *, "Hello, Fortran from HelloFortran!"


  integer_var = 42
  integer_var_2 = 7
  real_var = 3.14
  complex_var = (2.0, 3.0)
  char_var = 'A'
  logical_var = .true.
  print *, "Integer variable 1:", integer_var
  print *, "Integer variable 2:", integer_var_2
  print *, "Real variable:", real_var
  print *, "Complex variable:", complex_var
  print *, "Character variable:", char_var
  print *, "Logical variable:", logical_var

end program hello_fortran
