program quadraticEquation
    implicit none
    
    real :: a, b, c, discriminant, root1, root2, realPart, imaginaryPart
    integer :: i

    do 
        ! Open and Read Input File
        open(10, file = "quadraticEquation.txt")
        read(10, *, iostat = i) a, b, c
        if ( i /= 0 ) exit

        ! Output File
        open(20, file = "quadraticEquationOutput.txt")

        ! Calculate the discriminant
        discriminant = b**2 - 4.0 * a * c

        ! Check the roots
        if (discriminant > 0.0) then
            ! Two distinct real roots
            root1 = (-b + sqrt(discriminant)) / (2.0 * a)
            root2 = (-b - sqrt(discriminant)) / (2.0 * a)
            write(20, '(A, F8.3)') "Root 1:", root1
            write(20, '(A, F8.3)') "Root 2:", root2
            write(20, '(A)') "------------------------"
        
        elseif (discriminant == 0.0) then
            ! One real root (repeated)
            root1 = -b / (2.0 * a)
            write(20, '(A, F8.3)') "Root:", root1
            write(20, '(A)') "------------------------"
        
        else
            ! Two complex roots
            realPart = -b / (2.0 * a)
            imaginaryPart = sqrt(-discriminant) / (2.0 * a)
            write(20, '(A, F8.3, A, F8.3, A)') "Root 1:", realPart, "+", imaginaryPart, "i"
            write(20, '(A, F8.3, A, F8.3, A)') "Root 2:", realPart, "-", imaginaryPart, "i"
            write(20, '(A)') "------------------------"
        end if 
    end do
end program quadraticEquation