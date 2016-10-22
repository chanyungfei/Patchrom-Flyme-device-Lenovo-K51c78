#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

umask 022


if [ $(getprop ro.hardware) = qcom ]; then
	LOGDIR=$(getprop persist.sys.lenovo.log.path)
else
	LOGDIR=$(getprop debug.MB.realpath)
fi



PMLOGSHELL="/system/bin/powerlog.sh"


PMLOGFILE=$LOGDIR"/pmlog"  
SMD_LOGFILE=$LOGDIR"/smd_log"  
MV_FILES_SHELL="/system/bin/mv_files.sh"

#$MV_FILES_SHELL  $PMLOGFILE
#$MV_FILES_SHELL  $SMD_LOGFILE

while [ 1 ]
do

	if [ -e $PMLOGSHELL ]; then
		. $PMLOGSHELL $SMD_LOGFILE $PMLOGFILE 
	fi

	sleep 2
done

