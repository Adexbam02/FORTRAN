program fortrantut

    implicit none
    real :: period
    integer :: rate, balance, month

    rate = 0.02
    balance = 50
    period = 12

    do month = 1, 12
        balance = (rate + balance) * balance

        print*, month, balance
    end do

end program fortrantut
