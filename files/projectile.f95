program projectile
    implicit none
    real :: U, B, g, t, x, y, vx, vy, v, Pi, Radian
    real :: t_max, dt
    integer :: i

    Pi = 3.1415927
    Radian = Pi / 180.0
    g = 9.81
    dt = 0.5

    ! Input initial velocity and angle
    print*, "Enter initial velocity (U) in m/s:"
    read*, U
    print*, "Enter launch angle (B) in degrees:"
    read*, B

    ! Convert angle to radians
    B = B * Radian

    ! Calculate the maximum time in the air
    t_max = 2 * U * sin(B) / g

    ! Print headers
    print*, "Time (s)", "Horizontal Displacement (m)", "Vertical Displacement (m)", "Resultant Velocity (m/s)"

    ! Loop to calculate and print values every 0.5 seconds
    t = 0.0
    do while (t <= t_max)
        x = U * t * cos(B)
        y = U * t * sin(B) - 0.5 * g * t**2
        vx = U * cos(B)
        vy = U * sin(B) - g * t
        v = sqrt(vx**2 + vy**2)

        print*, t, x, y, v

        t = t + dt
    end do

end program projectile