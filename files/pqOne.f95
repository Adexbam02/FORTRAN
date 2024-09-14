program deposit
    implicit none
    
    ! Suppose you deposit $50 per month in a bank account every month per year.
    ! Intrest at the rate of 1% is added to the balane after the deposit is made for each month.
    ! Write a program to compute and print the balance each month for a year.

    integer ::  year, period
    real :: rate, balance

    balance = 50
    period = 12
    rate = 0.01

    do year = 1, period
        balance = balance + rate * balance
        print*, year, balance
    end do
end program deposit

! 1   50.5000000    
! 2   51.0050011    
! 3   51.5150528
! 4   52.0302048
! 5   52.5505066
! 6   53.0760117
! 7   53.6067734
! 8   54.1428413
! 9   54.6842690
! 10  55.2311134
! 11  55.7834244
! 12  56.3412590
! ©Bamidele