program invest
    implicit none
    
    integer :: period, year
    real :: bal, rate

    print*, "Initial Balance"
    read*, bal
    print*, "Period of Investment(year)"
    read*, period

    print*, "rate (per annum, as a decimal fraction):"
    read*, rate

    print*, "Year Balance"
    
    do year = 1, period
        bal = bal + rate*bal
        print*, year, bal
        
    end do
end program invest