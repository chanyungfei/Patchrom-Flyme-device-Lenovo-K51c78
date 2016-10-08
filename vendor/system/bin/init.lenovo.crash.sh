#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

LOGDISK=$(getprop persist.sys.lenovo.crash.path)

#add this for lenovo sdcard 0/1 switch, and we fix save log in phone storage
if [ $(getprop persist.sys.emmc) = "/storage/sdcard1" ]; then
        setprop persist.sys.lenovo.crash.disk "/storage/sdcard1"
        setprop persist.sys.lenovo.crash.out "/storage/sdcard1/log_out"
else 
	setprop persist.sys.lenovo.crash.disk "/storage/sdcard0"
        setprop persist.sys.lenovo.crash.out "/storage/sdcard0/log_out"
fi

if [ $1 = KE ]; then	
	setprop ctl.start last_dmsglog
else
	setprop ctl.start last_mainlog
	sleep 8
	setprop ctl.stop last_mainlog	
	sleep 8
	if [ -s $LOGDISK"/mainlog" ]; then
    	setprop ctl.start diag_system
	fi
fi




