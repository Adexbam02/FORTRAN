program Final_Mark

    implicit none
    real :: CRM, ExmAvg, Final, P1, P2
    integer :: Stu
    character(len=20) name

    open(1, file = "MARKS.txt")
    
    print*, 'Name CRM Exam Avg Final Mark'
    print*

    do Stu = 1, 3
    read(1, *) Name, CRM, P1, P2
        ! read(1, *) 
        ExmAvg = (P1 + P2) / 2.0

        if ( ExmAvg > CRM ) then 
            Final = ExmAvg
        else 
            Final = (P1 + P2 + CRM)
        end if

        if ( Final > 50 ) then
            print*,Name, CRM, ExmAvg, Final, "Pass"

        else 
            print*,Name, CRM, ExmAvg, Final, "Fail"     
        end if        
        
    end do

    

end program Final_Mark
