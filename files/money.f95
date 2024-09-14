program money
    implicit none
    
    real :: balance, profit, rate

    balance = 1000
    rate = 0.09

    profit = balance * rate
    balance = balance + profit

    print*, "The new balance is", balance
end program money