program angleTable

    implicit none
    
    integer :: i
    real :: x

    print*, "cos(x) Table     sin(x) Table"
    print*, "-----------------------------"

    do i = 0, 90, 15
        x = i

        print*, cos(x), sin(x)
    end do

end program angleTable
