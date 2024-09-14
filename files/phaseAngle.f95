program phaseAngle
    implicit none
    
    ! Variable Declaration
    real :: W, C, L, R, F, P
    integer :: i

    R = 10
    C = 5
    L = 20
    ! F = 80

    do i = 50, 75, 5
        F = i

        ! where W = 2piF
        W = 2 * 3.142 * F

        P = atan((W*L) - (1/(W*C))) / R

        ! Display phase angle in radians
        print*, 'For a frequency of ',i, 'the phase angle is', P * (180/3.142)
        
    end do
    
end program phaseAngle

!Bamidele