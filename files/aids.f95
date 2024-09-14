program aids
    implicit none
    ! Calculates number of accumulated AIDS cases in USA
    integer :: T !Year
    real :: A ! Number of cases

    !T = 1984
    print*, "What year?"
    read *, T
    A = 174.6 * (T - 1981.2) ** 3
    print*, 'Accumulated AIDS cases in US by year', T, ':', A

end program aids