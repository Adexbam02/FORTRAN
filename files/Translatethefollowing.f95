program Translatethefollowing

    implicit none
    REAL :: A, B, C, D, E, F, G, I, J, X

    ! (a) Add 1 to the value of I and store the result in I.
    I = I + 1

    ! (b) Cube I, add J to this, and store the result in I.
    I = I**3 + J

    ! (c) Set G equal to the larger of the two variables E and F.
    G = max(E, F)

    ! (d)If D is greater than zero,set X equal to minus B.
    if ( D > 0 ) then
        X = -B
    end if

    ! (e) Divide the sum of A and B by the product of C and D,and store the result in X
    X = (A + B) / (C * D)
end program Translatethefollowing
