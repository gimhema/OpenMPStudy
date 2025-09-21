program array_strings
implicit none

integer, dimension(5) :: int_array
integer :: int_array2(3)
integer, allocatable :: arr_vec(:)
integer, allocatable :: arr_mat(:,:)

character(len=10) :: host_name
character(len=20) :: host_ip_address
character(len=10) :: host_port
character(len=50) :: host_connection_info

character(:), allocatable :: user_id
character(:), allocatable :: user_profile_name
character(:), allocatable :: user_chat_message


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

host_name = 'localhost'
host_ip_address = '127.0.0.1'
host_port = '8080'

host_connection_info = host_name//':'//host_ip_address//':'//host_port
print *, "Host Connection Info:", host_connection_info

print *, "Host Name:", host_name
print *, "Host IP Address:", host_ip_address
print *, "Host Port:", host_port

user_id = 'abc123'
user_profile_name = 'UserName'

user_chat_message = user_id//':'//" Hello Im User"

print *, "User ID:", user_id
print *, "User Profile Name:", user_profile_name
print *, "User Chat Message:", user_chat_message


end program array_strings