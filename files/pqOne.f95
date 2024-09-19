program deposit
    implicit none

    integer ::  month, period
    real :: rate, balance

    balance = 50
    period = 12
    rate = 0.01
    
    do month = 1, period
        balance = balance + rate * balance
        print*, month, balance
    end do
end program deposit
