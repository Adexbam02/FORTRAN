program studentPassMark
    implicit none
    integer :: a, b, c, d, e, f, g, h, i, j, ans, passCount
    integer, dimension(10) :: marks

    passCount = 0

    open(10, file = "studentMarks.text")

    read (10, *) a, b, c, d, e, f, g, h, i, j
    marks = (/ a, b, c, d, e, f, g, h, i, j /)

    ans = a + b + c + d + e + f + g + h + i + j
    print*, "Average mark:", ans / 10.0

    ! Count the number of students who passed
    do i = 1, 10
        if (marks(i) >= 5) then
            passCount = passCount + 1
        end if
    end do

    print*, "Number of students who passed:", passCount
end program studentPassMark