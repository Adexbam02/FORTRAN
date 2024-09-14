program readData
    implicit none
    
    integer :: x, y, z

    open(1, file = 'DATA.txt')

    read(1, *) x, y, z

    print*, x, y, z
end program readData