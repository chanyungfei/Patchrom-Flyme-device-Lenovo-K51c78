#!/system/bin/sh

PARA_ALL=`getprop sys.jcommand_para`
#PARA_ALL=$1

if [ "$PARA_ALL" == "" ]; then
    echo "PARA_ALL is null" >>/data/jcommand_log.txt
else
    setprop sys.jcommand_para ""
fi

#PARA_M=MODE
#PARA_1=PA1
#PARA_2=PA2
#echo "all is :$PARA_ALL" >>/data/jcommand_log.txt

PARA_TEMP=${PARA_ALL%%\]*}
#echo "temp is :${PARA_TEMP}"
PARA_M=${PARA_TEMP#*\[}
#echo $PARA_M

PARA_TEMP=${PARA_ALL%%\]*}
#echo "temp is :$PARA_TEMP"
PARA_M=${PARA_TEMP#\[*}
#echo "mode : $PARA_M"

PARA_TEMP=${PARA_ALL#*\]}
PARA_TEMP_1=${PARA_TEMP%%\]*}
#echo "temp is :$PARA_TEMP"
PARA_1=${PARA_TEMP_1#\[*}
#echo "para 1 is :$PARA_1"

PARA_TEMP=${PARA_ALL##*\[}
#echo "temp is : $PARA_TEMP"
PARA_2=${PARA_TEMP%*\]}
#echo "para 2 : $PARA_2"


##  excute the setmtu from QC platform
##  para_1 :ifname ; para_2: MTU ; 
##  para_1 and para_2 shouldnt be null
function SetMtu() {
    echo " we would excute: ip link set dev $PARA_1 mtu $PARA_2"
    ip link set dev $PARA_1 mtu $PARA_2
}

##  excute the Wifi-Wapi-Cert from QC platform
##  para_1: NULL ; para_2 : NULL
##  para_1/ para_2 is not null, but we can  ignore it
function CopyCertfilefromSD() {
    echo " we would excute: CopyCertfilefromSD"
    DEFAULT_CERT_FILE_PATH=/data/wapi_certificate
    DEFAULT_SD_PATH=/sdcard
    mkdir ${DEFAULT_CERT_FILE_PATH}
    chmod 777 ${DEFAULT_CERT_FILE_PATH}
    cp ${DEFAULT_SD_PATH}/*.cer  ${DEFAULT_CERT_FILE_PATH}
    chmod 777  ${DEFAULT_CERT_FILE_PATH}/*.cer
}

## lenovo-sw wangsq2 modify for Antenner tuner gpio setting
##  set GPIO num
##  para_1 : gpio num
function SetGpionum() {
    echo " we would excute: echo $PARA_1 > /sys/private/tlmm_num"
    echo $PARA_1 > /sys/private/tlmm_num
}

##  set GPIO value
##  para_1 : gpio value
function SetGpio() {
    echo " we would excute: echo $PARA_1 > /sys/private/tlmm"
    echo $PARA_1 > /sys/private/tlmm
}
## end

## lenovo-sw wangsq2 add for iptables rule
function DisableAvatar() {
    echo " we add iptables rule for avatar:"
    iptables -A OUTPUT -d 223.202.27.39 -j REJECT
    iptables -A OUTPUT -d 223.202.19.68 -j REJECT
    iptables -A OUTPUT -d 223.202.19.39 -j REJECT
    iptables -A OUTPUT -d 223.202.27.41 -j REJECT
    iptables -A OUTPUT -d 223.202.62.190 -j REJECT
}

function EnableAvatar() {
    echo " we remove iptables rule for avatar:"
    iptables -D OUTPUT -d 223.202.27.39 -j REJECT
    iptables -D OUTPUT -d 223.202.19.68 -j REJECT
    iptables -D OUTPUT -d 223.202.19.39 -j REJECT
    iptables -D OUTPUT -d 223.202.27.41 -j REJECT
    iptables -D OUTPUT -d 223.202.62.190 -j REJECT
}

function DisableUmeng() {
    echo " we add iptables rule for Umeng:"
    iptables -A OUTPUT -d 110.173.196.36 -j REJECT
}

function EnableUmeng() {
    echo " we remove iptables rule for Umeng:"
    iptables -D OUTPUT -d 110.173.196.36 -j REJECT
}

function DisableGiftMoney() {
    echo " we remove iptables rule for GiftMoney, uid1: $PARA_1, uid2: $PARA_2"
    iptables -D OUTPUT -m owner --uid-owner $PARA_1 -j ACCEPT
    iptables -D OUTPUT -m owner --uid-owner $PARA_2 -j ACCEPT
    iptables -D OUTPUT -j REJECT
    iptables -D INPUT -m owner --uid-owner $PARA_1 -j ACCEPT
    iptables -D INPUT -m owner --uid-owner $PARA_2 -j ACCEPT
    iptables -D INPUT -j REJECT
}

function EnableGiftMoney() {
    echo " we add iptables rule for GiftMoney, uid1: $PARA_1, uid2: $PARA_2"
    iptables -I OUTPUT 1 -m owner --uid-owner $PARA_1 -j ACCEPT
    iptables -I OUTPUT 2 -m owner --uid-owner $PARA_2 -j ACCEPT
    iptables -I OUTPUT 3 -j REJECT
    iptables -I INPUT 1 -m owner --uid-owner $PARA_1 -j ACCEPT
    iptables -I INPUT 2 -m owner --uid-owner $PARA_2 -j ACCEPT
    iptables -I INPUT 3 -j REJECT
}

## end

#====================================
#main

if [ "$PARA_M" == "SETMTU" ]; then
    SetMtu
elif [ "$PARA_M" == "CPCER" ]; then
    CopyCertfilefromSD
elif [ "$PARA_M" == "SET_GPIO_NUM" ]; then
    SetGpionum
elif [ "$PARA_M" == "SET_GPIO" ]; then
    SetGpio
elif [ "$PARA_M" == "ENABLE_AVATAR" ]; then
    EnableAvatar
elif [ "$PARA_M" == "DISABLE_AVATAR" ]; then
    DisableAvatar
elif [ "$PARA_M" == "DISABLE_UMENG" ]; then
    DisableUmeng
elif [ "$PARA_M" == "ENABLE_UMENG" ]; then
    EnableUmeng
elif [ "$PARA_M" == "DISABLE_GIFT_MONEY" ]; then
    DisableGiftMoney
elif [ "$PARA_M" == "ENABLE_GIFT_MONEY" ]; then
    EnableGiftMoney
fi
