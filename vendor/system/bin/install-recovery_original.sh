#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#koshi   
if ! applypatch -c EMMC:recovery:12070912:4ff97a4f28e8bbb755e857bc9dcd43f8af65db33; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:8409088:1670524dffe037536a189b8291f3e2a53d9619c0 EMMC:recovery 4ff97a4f28e8bbb755e857bc9dcd43f8af65db33 12070912 1670524dffe037536a189b8291f3e2a53d9619c0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
  if applypatch -c EMMC:recovery:12070912:4ff97a4f28e8bbb755e857bc9dcd43f8af65db33; then		#koshi
	echo 0 > /sys/module/sec/parameters/recovery_done		#koshi
        log -t recovery "Install new recovery image completed"
        
  if applysig /system/etc/recovery.sig recovery; then
    sync
    log -t recovery "Apply recovery image signature completed"
  else
    log -t recovery "Apply recovery image signature fail!!"
  fi

    
  else
	echo 2 > /sys/module/sec/parameters/recovery_done		#koshi
        log -t recovery "Install new recovery image not completed"
  fi
else
  echo 0 > /sys/module/sec/parameters/recovery_done         #koshi
  log -t recovery "Recovery image already installed"
fi
if ! applypatch -c EMMC:tee2:162304:ad8d9e489a64017d71c807972df235664c712872; then
  log -t recovery "Installing new t-base image"
  applypatch -t /system/etc/trustzone.bin EMMC:tee2:162304:ad8d9e489a64017d71c807972df235664c712872 
else
  log -t recovery "t-base image already installed"
fi
