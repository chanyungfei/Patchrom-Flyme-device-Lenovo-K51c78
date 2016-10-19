#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#koshi   
if ! applypatch -c EMMC:recovery:12070912:87585dcfa5123e72c1b6d603513c72366be7586a; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:8409088:d35f272950b85992f92b240fda894024fee3a9df EMMC:recovery 87585dcfa5123e72c1b6d603513c72366be7586a 12070912 d35f272950b85992f92b240fda894024fee3a9df:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
  if applypatch -c EMMC:recovery:12070912:87585dcfa5123e72c1b6d603513c72366be7586a; then		#koshi
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
if ! applypatch -c EMMC:tee2:162304:7c8d4c84b6610145cdb42b9a8e6b6596ea9b43a2; then
  log -t recovery "Installing new t-base image"
  applypatch -t /system/etc/trustzone.bin EMMC:tee2:162304:7c8d4c84b6610145cdb42b9a8e6b6596ea9b43a2 
else
  log -t recovery "t-base image already installed"
fi
