program temperatureLoop

    implicit none
    REAL :: C, F
    INTEGER :: I

    do I = 20, 30, 3
        C = I

        F = ((9 * C) / 5) + 32

        print*, "The Fahrenheit temperature", F, "at", C
    end do

end program temperatureLoop
