! 5 8 0 10 3 8 5 7 9 4 (Answer: 5.9)

program studentMarks    

    implicit none
    integer :: a, b, c, d, e, f, g, h, i, j, ans

    
    open(10, file = "studentMarks.text")

    read (10, *) a, b, c, d, e, f, g, h, i, j
    ans =  a + b + c + d + e + f + g + h + i + j 

    print*, ans / 10.0

    
end program studentMarks    
