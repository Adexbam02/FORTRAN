program malaria
    implicit none
    character(len=20) :: headache, bodyAche, shivering, temperature, fatigue, sweating

    print*, "Do you feel a headache?"
    read*, headache ! a

    print*, "Do you have a body ache?"
    read*, bodyAche ! b
    
    print*, "Any feeling of shivering?"
    read*, shivering ! c

    
    if (headache == "yes" .and. bodyAche == "yes" .and. shivering == "yes") then
        print*, "There's a strong likehood you have Malaria"
        call additionalQuestions(temperature, fatigue, sweating)

    elseif ( headache == "yes" .and. shivering == "yes" .or. bodyAche == "yes" .and. shivering == "yes" ) then
        print*, "There's a likehood you have Malaria"
        call additionalQuestions(temperature, fatigue, sweating)

    elseif ( headache == "yes" .and. bodyAche == "yes" ) then
        print*, "Kindly go to room 1, you are probably stressed out"

    elseif ( headache == "yes" .or. bodyAche == "yes" .or. shivering == "yes" ) then
        print*, "Kindly give further complain in room 2"
    else
        print*, "No malaria symptoms, go have a rest"
    end if

end program malaria

! ########## subroutine #########

subroutine additionalQuestions(temperature, fatigue, sweating)
    implicit none
    character(len=20) :: temperature, fatigue, sweating

    ! Additional questions
    print*, "Is your measured temperature reading greater than 37.5C?"
    read*, temperature ! d

    print*, "Do you have any feeling of being fatigue?"
    read*, fatigue ! e

    print*, "Any unusual sweating?"
    read*, sweating ! f

    ! Determine next line of action based on additional questions
    if (temperature == "yes" .and. fatigue == "yes" .and. sweating == "yes") then
        print*, "Please, you need a doctor immediately."

    elseif (temperature == "yes" .or. fatigue == "yes" .and. sweating == "yes") then
        print*, "Monitor your symptoms and consult a doctor if they worsen."

    else
        print*, "Continue to monitor your health and stay hydrated."
    end if

end subroutine additionalQuestions