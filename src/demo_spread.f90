           program demo_spread
             integer :: a = 1, b(2) = (/ 1, 2 /)
             write(*,*) spread(a, 1, 2)            ! "1 1"
             write(*,*) spread(b, 1, 2)            ! "1 1 2 2"
           end program demo_spread
            program demo_spread
            !  Author:
            !    John Burkardt, 03 July 2006
            implicit none
            !
            integer ( kind = 4 ) a1(4,3)
            integer ( kind = 4 ) a2(3,4)
            integer i
            integer ( kind = 4 ) s
            integer ( kind = 4 ) v(4)
            !
            write ( *, '(a)' ) ' '
            write ( *, '(a)' ) 'TEST_SPREAD'
            write ( *, '(a)' ) '  SPREAD is a FORTRAN90 function which replicates'
            write ( *, '(a)' ) '  an array by adding a dimension.'
            write ( *, '(a)' ) ' '
            !
            s = 99
            !
            write ( *, '(a,i6)' ) '  Suppose we have a scalar S = ', s
            write ( *, '(a)' ) ' '
            !
            v = spread ( s, 1, 4 )
            !
            write ( *, '(a)' ) '  V = spread ( s, 1, 4 )'
            write ( *, '(a)' ) ' '
            write ( *, '(a)' ) '  adds a new dimension (1) of extent 4'
            write ( *, '(a)' ) ' '
            write ( *, '(4i6)' ) v(1:4)
            write ( *, '(a)' ) ' '
            write ( *, '(a)' ) '  Now first reset V to (1,2,3,4)'
            v = (/ 1, 2, 3, 4 /)
            !
            a1 = spread ( v, 2, 3 )
            !
            write ( *, '(a)' ) ' '
            write ( *, '(a)' ) '  A1 = spread ( v, 2, 3 )'
            write ( *, '(a)' ) ' '
            write ( *, '(a)' ) '  adds a new dimension (2) of extent 3'
            write ( *, '(a)' ) ' '
            do i = 1, 4
              write ( *, '(3i6)' ) a1(i,1:3)
            end do
            !
            a2 = spread ( v, 1, 3 )
            !
            write ( *, '(a)' ) ' '
            write ( *, '(a)' ) '  A2 = spread ( v, 1, 3 )'
            write ( *, '(a)' ) ' '
            write ( *, '(a)' ) '  adds a new dimension (1) of extent 3'
            write ( *, '(a)' ) ' '
            do i = 1, 3
              write ( *, '(4i6)' ) a2(i,1:4)
            end do
            end program demo_spread
