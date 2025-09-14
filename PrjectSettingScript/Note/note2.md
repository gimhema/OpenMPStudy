## 배열

배열은 아래와 같이 선언할수있다.

```
program array_strings
implicit none

! 선언
integer, dimension(5) :: int_array
integer :: int_array2(3)


! 조작
int_array = [1, 2, 3, 4, 5]
print *, "Integer array:", int_array

! set zero to all elements in int_array2
int_array2(:) = 0
print *, "Integer array 2:", int_array2

int_array(1:3) = 99
print *, "Modified integer array:", int_array

! get element at index 2
print *, "Element at index 2:", int_array(2)

end program array_strings
```

