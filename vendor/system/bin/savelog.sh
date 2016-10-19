#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

umask 022



APLOG_DIR=$(getprop debug.MB.realpath)


DATAAPLOG="/data/local/log/aplog"
[ -d $DATAAPLOG ]  && cp -a $DATAAPLOG/* $APLOG_DIR && cd $DATAAPLOG && rm -rf *


                 



	



