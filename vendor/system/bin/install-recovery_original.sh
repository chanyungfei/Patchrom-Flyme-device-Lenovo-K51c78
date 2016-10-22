#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#koshi   
if ! applypatch -c EMMC:recovery:12070912:f0542b45a27799f3fed0c5e254300f698263d421; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:8407040:e131b396e2dfdb3364f758572f0fe1afffc89350 EMMC:recovery f0542b45a27799f3fed0c5e254300f698263d421 12070912 e131b396e2dfdb3364f758572f0fe1afffc89350:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
  if applypatch -c EMMC:recovery:12070912:f0542b45a27799f3fed0c5e254300f698263d421; then		#koshi
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
if ! applypatch -c EMMC:tee2:162304:fce8a9fe6523d91e292e23f0046f711161bfff06; then
  log -t recovery "Installing new t-base image"
  applypatch -t /system/etc/trustzone.bin EMMC:tee2:162304:fce8a9fe6523d91e292e23f0046f711161bfff06 
else
  log -t recovery "t-base image already installed"
fi
