! Suppose you deposit $50 per month in a bank account every month for a year. Every month,
! after the deposit has been made, interest at the rate of 1% is added to the balance. E.g. after one 
! month,the balance is $50.50, and aftertwo monthsitis $101.51.
! Write a program to compute and print the balance each month for a year. Arrange the output to look 
! something like this:
 
! MONTH         MONTH-END BALANCE
!  1            50.50
!  2            101.51
!  3            153.02
!  ...
!  12           640.47

! program monthlyIntrest

!     implicit none
    
!     integer :: i
!     real :: initialDeposit, formula

!     initialDeposit = 50
!     ! formula = ((1.0/100) * 50)

!     print*, "MONTH                  MONTH-END BALANCE"
!     print*, ""
!     print*, initialDeposit + formula
!     ! do i = 50, 600, 50
!     do i = 1, 12
!         formula = ((1.0/100) * i)

!         print*, 50 + i + formula

!     end do

! end program monthlyIntrest


program monthlyInterest
    implicit none
    integer :: i
    real :: initialDeposit, balance, interestRate

    initialDeposit = 50.0
    interestRate = 0.01
    balance = 0.0

    print*, "MONTH         MONTH-END BALANCE"
    print*, ""

    do i = 1, 12
        balance = balance + initialDeposit
        balance = balance + (balance * interestRate)
        print*, i, balance
    end do

end program monthlyInterest