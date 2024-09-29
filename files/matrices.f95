program matrixMultiplication

    implicit none
    integer :: i, j, m, n, p, q
    real, dimension(10, 10) :: mat1, mat2, res

    print*, "==================================================="
    print*, "MATRIX MULTIPLICATION USING SUBROUTINE"
    print*, "==================================================="

    print*, "For Matrix 1"
    print*, "Enter Number of rows"
    read(*, *) m
    print*, "Enter Number of coloums"
    read(*, *) n

    print*, "nter the elements"

    read(*, *) ((mat1(i, j), j = 1,n), i = 1,m)

    print*, "For Matrix 2"
    print*, "Enter Number of rows"
    read(*, *) p
    print*, "Enter Number of coloums"
    read(*, *) q

    print*, "nter the elements"
    read(*, *) ((mat2(i, j), j = 1,q), i = 1,p)

    if ( n == p ) then
        call matrixSub(mat1, mat2, res, m, n, q)

        do i = 1, m
            write(*, *) (res(i, j), j = 1, q)
        end do
    else
        print*, "Cannot Multiply"    
    end if
end program matrixMultiplication
