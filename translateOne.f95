program translateOne
    implicit none
    
    real :: G, M, E, R, F

    print *, 'Input the variables:'

    read *, G
    read *, M
    read *, E
    read *, R
    read *, F

    !This is the translated version of GME/R^2
    F = G*M*E/(R ** 2)

    print *, F
end program translateOne