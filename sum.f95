program sum
    implicit none
    
    !Declared Variables
    real :: x, y, answer

    print *, 'Enter two numbers'
    read *, x
    read *, y

    answer = x + y

    print *, answer
end program sum