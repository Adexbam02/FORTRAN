program temperature
    implicit none
    
    ! If C and F are in Celcius and Fahrenheit tempratures respectively. the formula for conversion from
    ! Celcius to Fahrenheit if F = 9C/5 + 32. Write a program which will ask you for the celcius 
    ! temperature and display the equivalent Fahrenheit one with some sort of comment, like 
    ! The Fahrenheit temperature is:...

    real :: C, F

    print*, "What is your Celcius value?"
    read*, C

    F = ((9*C)/5) + 32

    print*, "The Fahrenheit temperature is: ", F
end program temperature

! The Fahrenheit temperature is:    89.5999985   
! ©Bamidele
