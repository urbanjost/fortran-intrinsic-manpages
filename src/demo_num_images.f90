          program demo_num_images
          integer :: value[*]
          integer :: i
          value = this_image()
             sync all
             if (this_image() == 1) then
               do i = 1, num_images()
                 write(*,'(2(a,i0))') 'value[', i, '] is ', value[i]
               end do
             end if
          end program demo_num_images
