program sphere

    implicit none
    real :: m1, m2, e, a, B
    real :: Pi = 3.1415927, Radian

    Radian = Pi / 180.0

    print*, "Enter value of m1:"
    read*, m1
    print*, "Enter value of m2:"
    read*, m2
    print*, "Enter value of e:"
    read*, e
    print*, "Enter value of a:"
    read*, a

    ! Convert degrees to radians
    m1 = m1 * Radian
    m2 = m2 * Radian
    e = e * Radian
    a = a * Radian

    ! formula
    B = atan((m2 * (1 + e) * tan(a)) / (m1 - e * m2 + (m1 + m2) * tan(a)**2))

    ! Convert result from radians to degrees
    B = B / Radian

    ! Print the result
    print*, "B (in degrees):", B

end program sphere
 