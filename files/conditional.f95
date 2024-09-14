program conditional
    implicit none
    
    real :: x, y, ans
    integer :: choice

    print *, "Please choose an option"
    print *, "1 Addition"
    print *, "2 Multiply"
    print *, "3 Divide"

    x = 12
    y = 23

    read *, choice

    if ( choice == 1 ) then
        ans = x + y
        print *, ans
    end if
    if ( choice == 2 ) then
        ans = x * y
        print *, ans
    end if
    if ( choice == 3 ) then
        ans = x / y
        print *, ans
    end if
end program conditional