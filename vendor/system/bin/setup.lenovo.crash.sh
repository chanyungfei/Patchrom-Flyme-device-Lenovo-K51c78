#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

#in rc file, starting lenovolog with class main, it will work abnormal.
#so I add the trigger.lenovo.crash.sh file to trigger it. and add this delay. logcat will work well.
#and start logging from system boot.

INIT_SHELL="/system/bin/init.lenovo.crash.sh"

$INIT_SHELL "KE"

