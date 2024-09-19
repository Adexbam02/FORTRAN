program plumber

    implicit none
    integer :: i
    real :: monthlyDeposit, balance, interestRate, interestAmount

    monthlyDeposit = 1000.0
    balance = 100000.0

    print*, "       Month   Interest Rate (%)    Interest Amount   New Balance($)"
    print*, "---------------------------------------------------------------------"

    do i = 1, 12
        ! Determine the interest rate based on the balance
        if (balance <= 110000.0) then
            interestRate = 0.01

        elseif (balance > 110000.0 .and. balance <= 125000.0) then
            interestRate = 0.15
            
        else
            interestRate = 0.02
        end if

        ! Calculate the interest amount
        interestAmount = balance * interestRate

        ! Update the balance with the interest amount
        balance = balance + interestAmount

        ! Print the month, interest rate, interest amount, and new balance
        print*, i, interestRate * 100, interestAmount, balance

        ! Add the monthly deposit
        balance = balance + monthlyDeposit
    end do

end program plumber