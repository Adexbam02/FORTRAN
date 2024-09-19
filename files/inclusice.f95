! Write a program that displays a list of integers from 10 to 20 inclusive, each with its square
! root next to it

program INCLUSIVE

    implicit none

    INTEGER :: I
    DO I = 10, 20
        print*, i, "has a squre root of", sqrt(REAL(i))
    END DO

end program INCLUSIVE
