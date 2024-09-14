program triangle
    implicit none
    
    integer :: B, H, I, N
    real :: Area

    dimension B(100), H(100)

    open(unit = 10, file = 'Base_Height')

    do I = 1, N
        read(10, *) B(I), H(I)
        Area = 0.5*B(I)*H(I)

        print*, 'The area of triangle', I, '=', Area
    end do
    N = 10
end program triangle