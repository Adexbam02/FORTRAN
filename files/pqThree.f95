program temperature
    implicit none
    
    ! Rewrite the program in Question 1(c) by using a DO loop to compute and write the Fahrenheit
    ! equivalent of Celsius temperatures ranging from 20° to 30° in step of 3°

    real :: C, F
    integer :: i

    
    do i = 20, 30, 3
        C = i
        F = ((9*C)/5) + 32
        ! print*, C
        print*, "The Fahrenheit temperature for ", i,"°C is: ", F
    end do

end program temperature

!The Fahrenheit temperature for           20 ┬░C is:    68.0000000    
!The Fahrenheit temperature for           23 ┬░C is:    73.4000015    
!The Fahrenheit temperature for           26 ┬░C is:    78.8000031
!The Fahrenheit temperature for           29 ┬░C is:    84.1999969

! ©Bamidele