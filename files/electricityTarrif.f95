! The electricity accounts of residents in a very small town are calculated as
! follows:endexercises
! • if 500 units orless are used the costis 2 cents(100 cents =$1) per unit;
! • if more than 500, but not more than 1000 units are used, the cost is $10 for the first 500 units,
! and then 5 centsfor every unitin excess of 500;

! • if more than 1000 units are used, the cost is $35 for the first 1000 units plus 10 cents for every 
! unitin excessof 1000;
! • in addition, a basic servicefee of $5is charged, no matter how much electricityis used. 
! Write a program which reads the names and consumptions of the following users from an external
! file and displays the name, consumption and total chargefor each user:
 
! Ahmed, A B 200
! Baker, C D 500
! Essop, S A 700
! Jansen, G M 1000
! Smith, Q G 1500
 
! (Answers: $9,$15, $25, $40,$90)

! tarrif <= 500 then tarrif  = 0.02 cent + $5
! tarrif >= 1000 then tarrif  = $10 + $5

program electricityTarrif

    implicit none

    character(len=40) Name
    real :: Used, tarrif
    integer :: remainder, basicServiceFee, i, ios
    
    open(10, file = "electricityTarrif.txt")

    basicServiceFee = 5

    do
        read(10, *, iostat = ios) Name, Used
        if (ios /= 0) exit

        if ( Used <= 500 ) then
            tarrif = 0.02 * Used + basicServiceFee
        end if

        if ( Used >= 500  ) then
            remainder = Used - 500
            tarrif = (remainder * 0.05) + 10 + basicServiceFee
        end if

        if (Used > 1000) then
            remainder = Used - 1000
            tarrif = remainder * 0.10 + 35 + basicServiceFee
        end if

        print*,Name, "used", Used,"unit of electricity and the tarrif is$",int(tarrif)

    end do
end program electricityTarrif
!Bamidele