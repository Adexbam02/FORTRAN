program quadraticEquation
    implicit none
    real :: a, b, c, discriminant, root1, root2, realPart, imaginaryPart

    ! Asking the user for input
    print*, "Enter coefficient a:"
    read*, a
    print*, "Enter coefficient b:"
    read*, b
    print*, "Enter coefficient c:"
    read*, c

    ! Calculate the discriminant
    discriminant = b**2 - 4.0 * a * c

    ! Check the roots
    if (discriminant > 0.0) then
        ! Two distinct real roots
        root1 = (-b + sqrt(discriminant)) / (2.0 * a)
        root2 = (-b - sqrt(discriminant)) / (2.0 * a)
        print*, "Root 1:", root1
        print*, "Root 2:", root2
        
    elseif (discriminant == 0.0) then
        ! One real root (repeated)
        root1 = -b / (2.0 * a)
        print*, "Root:", root1
        
    else
        ! Two complex roots
        realPart = -b / (2.0 * a)
        imaginaryPart = sqrt(-discriminant) / (2.0 * a)
        print*, "Root 1:", realPart, "+", imaginaryPart, "i"
        print*, "Root 2:", realPart, "-", imaginaryPart, "i"
    end if

end program quadraticEquation