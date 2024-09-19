program temperature
    implicit none

    real :: C, F

    print*, "What is your Celcius value?"
    read*, C

    F = ((9*C)/5) + 32

    print*, "The Fahrenheit temperature is: ", F
end program temperature