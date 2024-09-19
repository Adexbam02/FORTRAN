program discount

    implicit none
    real :: bill, discountt

    ! ask the employee for bill amount
    print*, "How much is the bill?"
    read*, bill

    if (bill < 2000.00) then
        ! no discount
        print*, "No Discount!:", bill

    elseif (bill >= 2000.00 .and. bill < 5000.00) then
        ! 5% discount
        discountt = bill * 0.05
        bill = bill - discountt
        print*, "5% Discount:", bill

    elseif (bill >= 5000.00 .and. bill < 10000.00) then
        ! 7% discount
        discountt = bill * 0.07
        bill = bill - discountt
        print*, "7% Discount:", bill

    elseif (bill >= 10000.00) then
        ! 10% discount
        discountt = bill * 0.10
        bill = bill - discountt
        print*, "10% Discount:", bill
    end if

end program discount