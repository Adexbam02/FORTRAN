program namer
    implicit none

    character :: name*20    

    print *, 'What is my name?'

    read *, name

    print *, 'My name is ', name
    
end program namer