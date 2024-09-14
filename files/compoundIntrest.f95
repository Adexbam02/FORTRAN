program compoundIntrest
    !money at bank $1000
    !Compound intrest 9%
    !Bank balance after one year

    ! Calculates balance after interest compounded
     real balance, intrest, rate

     balance = 1000
     rate = 0.09

     intrest = balance * rate
     balance = balance + intrest

     print *, balance


end PROGRAM compoundIntrest