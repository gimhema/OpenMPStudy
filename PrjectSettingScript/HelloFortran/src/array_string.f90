program array_strings
implicit none

integer, dimension(5) :: int_array
integer :: int_array2(3)

integer, allocatable :: arr_vec(:)
integer, allocatable :: arr_mat(:,:)

int_array = [1, 2, 3, 4, 5]
print *, "Integer array:", int_array
! set zero to all elements in int_array2
int_array2(:) = 0
print *, "Integer array 2:", int_array2
int_array(1:3) = 99
print *, "Modified integer array:", int_array
! get element at index 2
print *, "Element at index 2:", int_array(2)

allocate(arr_vec(4))
allocate(arr_mat(2,3))

! Initialize arr_vec and arr_mat
arr_vec = [10, 20, 30, 40]
arr_mat = reshape([1, 2, 3, 4, 5, 6], [2, 3])
print *, "Array vector:", arr_vec
print *, "Array matrix:"
print *, arr_mat

! Modify arr_vec and arr_mat
arr_vec(2) = 99
arr_mat(1,3) = 88
print *, "Modified array vector:", arr_vec
print *, "Modified array matrix:"
print *, arr_mat

! add new element to arr_vec
arr_vec = [arr_vec, 50]
arr_vec = [arr_vec, 51]
arr_vec = [arr_vec, 52]
print *, "Extended array vector:", arr_vec


deallocate(arr_vec)
deallocate(arr_mat)

end program array_strings