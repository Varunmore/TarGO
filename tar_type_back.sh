if [ $mode1 == 1 ]; then
              tar_menu
              read tar_type

                        if [ $tar_type == 1 ]; then
                                gz
                                echo "Path of Tarball: $(locate $file0.tar.gz)"

                        elif [ $tar_type == 2 ]; then
                                bz2
                                echo "path of Tarball: $(locate $file0.tar.bz2)"
                        elif [ $tar_type == 3 ]; then
                                xz
                                echo"Path of Tarball: $(locate $file0.tat.xz)"
                        else
                                sleep 3
                                menu
                        fi
fi

