program payroll

    implicit none

    real :: tax, exemptedTax, taxAfterExemptedTax, totalTax, remainingSalary
    integer :: salary, codeNumber, i
    character(len=30) :: name

    print*, "Worker's Name   Code Number  Monthly Salary(N)   Income Tax(N)"
    print*, "---------------------------------------------------------"

    do 
        ! Open and Read the file
        open(1, file = "payroll.txt")
        read(1, *, iostat = i) name, codeNumber, salary
        if ( i /= 0 ) exit

        if ( salary < 3000.00 ) then
            ! tax is 40Naira
            totalTax =  40
            print*, name, codeNumber, salary, totalTax

        elseif ( salary > 3000.00 .and. salary <= 6000.00 ) then
            exemptedTax = salary - 1000.00
            totalTax = exemptedTax * 0.03
            print*, name, codeNumber, salary, totalTax

        elseif ( salary > 6000.00  ) then
            exemptedTax = salary - 2000.00

            taxAfterExemptedTax = 3000.00 * 0.05

            remainingSalary = (exemptedTax - 3000.00) * 0.08

            totalTax = taxAfterExemptedTax + remainingSalary

            print*, name, codeNumber, salary, totalTax    
        end if
    end do
    
end program payroll
