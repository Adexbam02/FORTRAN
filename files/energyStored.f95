!The energy stored on a condenser is, CV 2 / 2 where Cis the capacitance and Vis the potential
!difference. Write a program to computethe energy for some sample valuesof C and V

program energy
    implicit none
    
    real C, V, E

    print *, 'Input the variables:'
    read *, C, V

    E = (C*V**2) / 2

    print *, 'The Energy stored on the condenser is ', E,'J'
end program energy