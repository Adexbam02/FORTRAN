program sum
    implicit none
    
    !Declared Variables
    real :: x, y, answer

    print *, 'Enter two numbers'
    read *, x
    read *, y

    answer = x + y

    print *, 'The answer is equal to', answer
end program sum