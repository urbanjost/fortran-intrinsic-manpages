          program demo_iall
          use, intrinsic :: iso_fortran_env, only : integer_kinds, int8, int16, int32, int64
          implicit none
          integer(kind=int8) :: a(2)

            a(1) = int(b'00100100')
            a(2) = int(b'01101010')

            ! prints 00100000
            print '(b8.8)', iall(a)
       end program demo_iall
