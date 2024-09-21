program population

    implicit none

    integer :: year
    real :: totalPopulation, malePopulation, femalePopulation, childrenPopulation
    real :: maleGrowthRate, femaleGrowthRate, childrenGrowthRate

    ! Initial population in 1990
    totalPopulation = 120000000
    malePopulation = totalPopulation * 0.40
    femalePopulation = totalPopulation * 0.35
    childrenPopulation = totalPopulation * 0.25

    ! Growth rates
    maleGrowthRate = 0.025
    femaleGrowthRate = 0.03
    childrenGrowthRate = 0.05

    ! Print headers
    print*, "Year   Total Population   Male Population   Female Population   Children Population"
    print*, "-----------------------------------------------------------------------------------"

    ! Loop through each year from 1990 to 2020
    do year = 1990, 2020

        ! Print the population distribution for the current year
        print*, year, totalPopulation, malePopulation, femalePopulation, childrenPopulation

        ! Update the populations for the next year
        malePopulation = malePopulation * (1.0 + maleGrowthRate)
        femalePopulation = femalePopulation * (1.0 + femaleGrowthRate)
        childrenPopulation = childrenPopulation * (1.0 + childrenGrowthRate)
        totalPopulation = malePopulation + femalePopulation + childrenPopulation

        
    end do

    ! Determine the year when the female population exceeds 80 million
    year = 1990
    femalePopulation = totalPopulation * 0.35
    do while (femalePopulation <= 80.0e6)
        year = year + 1
        femalePopulation = femalePopulation * (1.0 + femaleGrowthRate)
    end do

    print*, "The female population exceeds 80 million in the year", year

end program population