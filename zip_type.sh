zip_menu(){
	echo -n "Select mode of Zip file:
	1) GZip
	2) BZip2
	3) Menu
	Option: "
}


info() {
	echo "Zip file Creating...."
	sleep 3
}

info_end() {
	echo "Zip File Crearted...."
	sleep 4
	$(updatedb)
}

gzip(){
	info
	$(gzip $file0)
	info_end
}

bzip2(){
	info
	$(bzip $file0)
	info_end
}



zip(){
	zip_menu
                read zip_mode
                if [ $zip_mode == 1 ]; then
                        gzip
                        echo "Path to Zip File: $(locate $file0.gz)"
                elif [ $zip_mode == 2]; then
                        bzip2
                        echo "Path to Zip File: $(locate $file0.bz2)"
                else
                        sleep 2
                        menu
                fi
	}

info_ext(){
        echo "Extracting the Zip File..."
        sleep 2
}

info_end_ext(){
        sleep 3
        echo "Zip File Extracted..."
        $(updatedb)
}

gz_ext(){
        info_ext
        gzip -d $file0
        info_end_ext
}

bz2_ext(){
        info_ext
        b2zip -d $file0
        info_end_ext
}


extract_zip(){
        zip_menu
        read zip_mode

        if [ $zip_mode == 1 ]; then
                gz_ext
        elif [ $zip_mode == 2 ]; then
                bz2_ext
        else
                sleep 2
                menu
        fi
}
	
