program Final_Mark

    implicit none

    real :: CRM, ExmAvg, Final, P1, P2

    integer :: Stu

    OPEN( 1, FILE = 'MARKS' )
    PRINT*, ' CRM Exam Avg Final Mark'
    PRINT*
    DO Stu = 1, 3
        READ(1, *) CRM, P1, P2
        ExmAvg = (P1 + P2) / 2.0
        IF (ExmAvg > CRM) THEN
            Final = ExmAvg
        ELSE
            Final = (P1 + P2 + CRM) / 3.0
        END IF
        IF (Final >= 50) THEN
            PRINT*, CRM, ExmAvg, Final, 'PASS'
        ELSE
            PRINT*, CRM, ExmAvg, Final, 'FAIL'
        END IF
    END DO
end program Final_Mark
