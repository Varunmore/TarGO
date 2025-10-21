tar_menu() {
	echo " "
	echo -n "Select the type of tar file:
	1) GunZip
	2) B2Zip
	3) XZip
	4) Back
	Option: "
}

info() {
	echo "Tarball Creating...."
	sleep 4
}

info_end() {
	sleep 5
	echo "Tarball Created...."
	$(updatedb)
}

gz() {
	info
	$(tar zcf $file0.tar.gz $file0)
	info_end
}

bz2() {
	info
	$(tar jcf $file0.tar.bz2 $file0)
	info_end
}

xz() {
	info
	$(tar Jcf $file0.tar.xz $file0)
	info_end
}

tar_mode(){
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
}


info_ext(){
	echo "Extracting the Tarball..."
	sleep 2
}

info_end_ext(){
	sleep 3
	echo "Tarball Extracted..."
	$(updatedb)
}

gz_ext(){
	info_ext
	tar zxf $file0
	info_end_ext
}

bz2_ext(){
	info_ext
	tar jxf $file0
	info_end_ext
}

xz_ext(){
	info_ext
	tar Jxf $file0
	info_end_ext
}

extract_tar(){
	tar_menu
	read tar_type

	if [ $tar_type == 1 ]; then
		gz_ext
	elif [ $tar_type == 2 ]; then
		bz2_ext
	elif [ $tar_type == 3 ]; then
		xz_ext
	else
		sleep 2
		menu
	fi
}

