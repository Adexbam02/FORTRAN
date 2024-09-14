program mark
    implicit none
    
    ! Variables Declaration
    integer :: a, b, c, d, e, f, g, h, i, j, ans

    ! Reading the file
    open(2, file = 'MARKS.txt') 

    read(2, *)a, b, c, d, e, f, g, h, i, j

    ! Averaging it
    ans = (a + b + c + d + e + f + g + h + i + j)/10

    print*, 'The average mark of the student is:',ans
end program mark

!Bamidele
