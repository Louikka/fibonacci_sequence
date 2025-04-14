
program fib

  implicit none

  integer :: i, seq
  integer, allocatable :: arr(:)
  character :: e

  print *, 'Enter the length of Fibonacci sequence : '
  read(*,*) seq
  allocate(arr(seq))

  arr(1) = 0
  arr(2) = 1

  do i = 3, seq
    arr(i) = arr(i - 1) + arr(i - 2)
  end do

  print *, arr

  deallocate(arr)

end program fib
