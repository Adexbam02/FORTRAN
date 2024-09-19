! Nurain Bamidele Garuba
! Matric No: 230000
! Agricultural and Environmental Engineering"

program projectileMotion

    implicit none

    real :: g = 9.8 ! acceleration due to gravity
    real :: Pi = 3.1415927 ! a well-known constant
    real Radian ! radian conversion
    real A ! launch angle in degrees
    real T ! time of flight
    real Theta ! direction at time T in degrees
    real U ! launch velocity
    real V ! resultant velocity
    real Vx ! horizontal velocity
    real Vy ! vertical velocity
    real X ! horizontal displacement
    real Y ! vertical displacement

    open(1, file = "projectileMotion.txt")

    read(1, *) A, T, U

    Radian =  Pi / 180

    A = A * Radian ! convert angle to radians
    X = U * COS( A ) * T
    Y = U * SIN( A ) * T - g * T**(2) / 2.
    Vx = U * COS( A )
    Vy = U * SIN( A ) - g * T
    V = SQRT( Vx **(2) + Vy **(2))
    Theta = ATAN( Vy / Vx ) * 180 / Pi
    
    write(1, *) X, Y, V, Theta
    
end program projectileMotion
!Bamidele