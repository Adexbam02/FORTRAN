program writeData
    implicit none
    
    real :: x, y, z

    x = 39; y = 59; z = 9

    open(1, file = 'write.txt')
    
    write(1, *) x, y, z

    print*, 'Your data has been stored to Write'


end program writeData
