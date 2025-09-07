## 변수

대부분의 프로그래밍 언어와 마찬가지로 포트란 역시 프로그램 내부에서 변수가 저장되고 조작된다.
포트란은 강타입 언어로 코드내에서 선언된 모든 변수는 타입을 반드시 가져야한다.

기본적으로 포트란에서는 5개의 변수를 제공한다.

1. integer : 정수다, 부호를 포함한다.
2. real : 소수점이 포함된 실수
3. complex : 소수부와 허수부가 페어를 이루는 복소수..?
4. character : 문자데이터 다룰때 사용하는듯
5. logical : 다른 언어에서 사용되는 bool과 같은

강타입 특성을 갖는 언어답게, 반드시 사용하기전에 언어를 선언해야한다.
또한 포트란은 정적타입 언어 성격도 갖는데 이것이 의미하는 바는 타입이 fixed 되었을때 런타임에서 변수의 타입은 변경될 수 없다는 것을 의미하기도한다.

변수는 다음과 같이 선언된다.
```
<variable_type> :: <variable_name>, <variable_name>, <variable_name> . . .
```

### Usage
```
program hello_fortran
  implicit none

  integer :: integer_var
  integer :: integer_var_2
  real :: real_var
  complex :: complex_var
  character :: char_var
  logical :: logical_var
  print *, "Hello, Fortran from HelloFortran!"
end program hello_fortran
```

변수는 상단에 '타입 :: 타입이름' 이렇게 선언해준다
타입:: 뒤에 타입이름을 ,를 붙여서 선언해줘도된다. 그리고 
integer::
integer::
이렇게 행을 연달아서 선언하는것도 가능하다.

선언된 변수들은 아래와 같이 사용할 수 있다.

```
program hello_fortran
  implicit none

  integer :: integer_var
  integer :: integer_var_2
  real :: real_var
  complex :: complex_var
  character :: char_var
  logical :: logical_var

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


```



