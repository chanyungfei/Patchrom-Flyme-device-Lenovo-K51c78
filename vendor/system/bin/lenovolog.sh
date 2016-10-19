#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: liuyc7@lenovo.com


while true;do
MBLOGFLAG=$(getprop ro.boot.mblogenable)
if [ $MBLOGFLAG -eq 1 ] || [ $MBLOGFLAG -eq 0 ]; then
   stop mobile_log_dlr
   echo 'success to stop mobile_log_d !'
   break
fi
sleep 0.1
done

DIR=/mnt/shell/emulated/0/lenovolog
if [ -d $DIR ];then
  echo "$DIR already exist."
else
  mkdir $DIR
	echo "$DIR mkdir ok."
fi

cat /proc/kmsg > /mnt/shell/emulated/0/lenovolog/meta_kmsg.txt &
echo "cat /proc/kmsg > /mnt/shell/emulated/0/lenovolog/meta_kmsg.txt"
logcat -v time > //mnt/shell/emulated/0/lenovolog/meta_logcat.txt &
echo "logcat -v time > /mnt/shell/emulated/0/lenovolog/meta_logcat.txt"
getprop > /mnt/shell/emulated/0/lenovolog/property
#chown -R media_rw:media_rw /mnt/shell/emulated/0/lenovolog
