program main
    implicit none
    
    integer      :: n=1e7          ! the number of points
    real(kind=8) :: x=0.D0, y=0.D0 ! the coordinates of the last point
    integer      :: nin=0          ! the number of points within and outside of the circle
    
    integer      :: i              ! a counter for the loop
    
    real(kind=8) :: p              ! the end result
    
    ! initialize the random number generator
    CALL random_seed()
    
    do i=1,n
        ! draw the random coordinates
        CALL random_number(x)
        CALL random_number(y)
        
        ! check if the coordinates fall within a circle with radius one
        if(sqrt(x**2 + y**2) <= 1.D0) then
            nin=nin+1
        end if
    end do
    ! write the result
    p=real(nin)/real(n)*4.D0
    write(*, *)nin, n, p
end program main
