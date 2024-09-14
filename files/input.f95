program namer
    implicit none
        !variable declaration
        character :: name*10

        print *, 'What is your name?'

        !Input
        read *, name

        print *, 'My name is ', name
end program namer