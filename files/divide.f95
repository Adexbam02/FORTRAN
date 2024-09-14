program divide
    implicit none
    
    real :: x, y

    read *, x
    y = x/5

    !Fortran does not like mixing number types i.e integer + real
    print *, y
end program divide