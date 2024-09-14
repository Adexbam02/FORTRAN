program translateTwo
    implicit none

    real a, b, ans

    print *, 'Input the variables:'
    read *, a, b

    !This is the translated version of ((a^2 + b^2)^(1/2)) / 2a
    ans = sqrt(a**2 + b**2) / (2 * a)

    print *, ans

end program translateTwo
