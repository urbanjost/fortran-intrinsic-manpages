          program demo_cosh
          use, intrinsic :: iso_fortran_env, only : real_kinds, real32, real64, real128
          implicit none
            real(kind=real64) :: x = 1.0_real64
            x = cosh(x)
          end program demo_cosh
