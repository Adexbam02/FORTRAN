program beam

    implicit none
    integer :: X, L, i
    real ::  P, M, a

    open(10, file = "beam.txt")
    read(10, *, iostat = i) L, P, a

    open(20, file = "beamOutput.txt")

    do X = 0, L
        if ( i /= 0 ) exit
        
        if ( X <= L ) then
            M = P * (L - a)**2 * (a * L - X * (L + 2*a)) / L**3

        else
            M = P * a**2 * (a*L - 2*L**2 + X * (3*L - 2*a)) / L**3  

        end if

        write(20,*) X, M
    end do

end program beam
