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