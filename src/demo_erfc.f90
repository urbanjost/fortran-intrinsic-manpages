          program demo_erfc
          use, intrinsic :: iso_fortran_env, only : real_kinds, real32, real64, real128
          real(kind=real64) :: x = 0.17_real64
            x = erfc(x)
          end program demo_erfc
