! Write a program to find and display the sum of the successive even integers 2, 4, ..., 200.
! (Answer: 10100)

program sumEvenIntegers
    implicit none
    integer :: sum, i

    sum = 0

    do i = 2, 200, 2
        sum = sum + i
        print*, SUM
    end do

    print*, 'The sum of the successive even integers 2, 4, ..., 200 is:', sum

end program sumEvenIntegers