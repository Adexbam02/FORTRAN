program petrolConsumption
    implicit none

    real :: distance, litresUsed, kmPerLitre, litrePer100Km

    open(10, file = "petrolConsumption.txt")
    read (10, *) distance, litresUsed

    open(20, file = "petrolConsumptionOutput.txt")

    ! Calculate consumption in km/litre and litres/100km
    kmPerLitre = distance / litresUsed
    litrePer100Km = (litresUsed / distance) * 100.0

   
    write(20, *) "Distance Litres Used  Km/L  L/100Km"
    write(20, *) "-----------------------------------"

    write(20, '(F8.2, F8.2, F8.2, F8.2)') distance, litresUsed, kmPerLitre, litrePer100Km

end program petrolConsumption