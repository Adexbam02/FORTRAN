program translateThree  
    implicit none
    
    real :: x, a, ans, formula, lg

    print *, 'Input the variables:'
    read *, x, a

    formula = x + x**2 + a**2

    if ( formula > 0.0 ) then
        ! ans = log(formula)
        ans = formula
        lg = log(ans)

        print *, 'The result is:', lg

    else
        print *, 'Error: The argument of the log function must be positive.'
    end if

end program translateThree