.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$AcmSettingsObserver;,
        Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final ACM_PORT_INDEX_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_acm/port_index"

.field private static final AUDIO_MODE_NONE:I = 0x0

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final DEBUG:Z = true

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final IPO_POWER_OFF:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final MASS_STORAGE_FILE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_mass_storage/lun/file"

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ACM:I = 0x7

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_HANDLE_CTCLINET:I = 0xb

.field private static final MSG_SET_BYPASS:I = 0xe

.field private static final MSG_SET_BYPASS_MODE:I = 0xa

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SET_VIA_CDROM:I = 0xd

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_DISCONNECT_STATE:I = 0x6

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final MSG_VIA_CDROM_EDJECT:I = 0xc

.field private static final MTP_RESET_TIME:I = 0xea60

.field private static final MTP_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/mtp_usb"

.field private static final OTG_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/platform/nop_usb_xceiv"

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final RNDIS_UPDATE_DELAY:I = 0xafc8

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final UPDATE_DELAY_BICR:I = 0xbb8

.field private static final USBIF_U3D_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usbif_u3d_test_uevent"

.field private static final USBIF_U3H_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usbif_u3h_uevent"

.field private static final USBIF_U3H_TEST_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usbif_u3h_test_uevent"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field private static final XHCI_MISC_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/xhci_misc_uevent"

.field private static final bEvdoDtViaSupport:Z

.field private static final bMtkIpoSupport:Z


# instance fields
.field private mAccessoryModeRequestTime:J

.field private mAccessoryStrings:[Ljava/lang/String;

.field private mAcmEnabled:Z

.field private mAcmPortIdx:Ljava/lang/String;

.field private mAdbEnabled:Z

.field private final mAdbUpdateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mAudioSourceEnabled:Z

.field private final mAutoCdromEnable:Z

.field private mBatteryChargingUnPlug:Z

.field private mBootCompleted:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private mHwDisconnected:Z

.field private mIsBicrSet:Z

.field private mIsPcKnowMe:Z

.field private mIsUsbBicrEvo:Z

.field private mIsUsbSimSecurity:Z

.field private mIsUserSwitch:Z

.field private final mLock:Ljava/lang/Object;

.field private mMtpAskDisconnect:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPCModeEnable:Z

.field private mSettingFunction:Ljava/lang/String;

.field private mSettingUsbBicr:Z

.field private mSettingUsbCharging:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbStorageType:Ljava/lang/String;

.field private mUseUsbNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-class v0, Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    .line 171
    const-string v0, "ro.mtk_ipo_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->bMtkIpoSupport:Z

    .line 172
    const-string v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->bEvdoDtViaSupport:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    .line 177
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 215
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbUpdateLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 221
    const-string v4, "sys.usb.pcmodem.disable"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mPCModeEnable:Z

    .line 222
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mPCModeEnable:Z

    if-eqz v4, :cond_5

    const-string v4, "sys.usb.autocdrom.enable"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAutoCdromEnable:Z

    .line 251
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 361
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 363
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 365
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHwDisconnected:Z

    .line 366
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbCharging:Z

    .line 367
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbBicr:Z

    .line 368
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbBicrEvo:Z

    .line 369
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsPcKnowMe:Z

    .line 370
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUserSwitch:Z

    .line 371
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbSimSecurity:Z

    .line 372
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mBatteryChargingUnPlug:Z

    .line 374
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpAskDisconnect:Z

    .line 376
    const-string v4, "android.hardware.usb.accessory"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 377
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    .line 379
    const-string v4, "persist.sys.usb.bicr_evo"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "value":Ljava/lang/String;
    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "Enable BICR evolution!!"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbBicrEvo:Z

    .line 383
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsPcKnowMe:Z

    .line 386
    :cond_0
    const-string v4, "1"

    const-string v7, "ro.mtk_usb_cba_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    const-string v4, "OP01"

    const-string v7, "ro.operator.optr"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "Have USB SIM Security!!"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbSimSecurity:Z

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->readOemUsbOverrideConfig()V

    .line 395
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 398
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "startObserving begin"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/platform/nop_usb_xceiv"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 402
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/misc/mtp_usb"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 408
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/misc/usbif_u3d_test_uevent"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 409
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/misc/usbif_u3h_uevent"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 410
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/misc/usbif_u3h_test_uevent"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/misc/xhci_misc_uevent"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 415
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "startObserving end"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "accessory attached at boot"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 422
    :cond_2
    const-string v4, "ro.adb.secure"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 423
    .local v2, "secureAdbEnabled":Z
    const-string v4, "1"

    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 424
    .local v0, "dataEncrypted":Z
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 425
    new-instance v4, Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v4, p1}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    .line 427
    :cond_3
    return-void

    .end local v0    # "dataEncrypted":Z
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "secureAdbEnabled":Z
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    move v4, v6

    .line 221
    goto/16 :goto_0

    :cond_5
    move v4, v6

    .line 222
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbBicrEvo:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHwDisconnected:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHwDisconnected:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBatteryChargingUnPlug:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mBatteryChargingUnPlug:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$3300(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmPortIdx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmPortIdx:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->bMtkIpoSupport:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAutoCdromEnable:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsBicrSet:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsBicrSet:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpAskDisconnect:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpAskDisconnect:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbSimSecurity:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->needsOemUsbOverride()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunctionBICR(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/usb/UsbDeviceManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    return-wide v0
.end method

.method static synthetic access$4800(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->bEvdoDtViaSupport:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUserSwitch:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUserSwitch:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/usb/UsbDeviceManager;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbUpdateLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mPCModeEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbCharging:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbCharging:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbBicr:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbBicr:Z

    return p1
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 552
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    .end local p1    # "function":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 556
    .restart local p1    # "function":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 560
    const-string v0, "adb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rndis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "acm"

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    const-string v0, "acm"

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 564
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 567
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 569
    const-string v0, "adb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rndis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "eem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "acm"

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 570
    const-string v0, "acm"

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    move-object p1, p0

    .line 573
    goto/16 :goto_0
.end method

.method private static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 600
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private containsFunctionBICR(Ljava/lang/String;)Z
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 2337
    const-string v0, "bicr"

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mtp,mass_storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mtp,mass_storage,adb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .locals 2

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initRndisAddress()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 531
    const/4 v0, 0x6

    .line 532
    .local v0, "ETH_ALEN":I
    const/4 v7, 0x6

    new-array v2, v7, [I

    .line 534
    .local v2, "address":[I
    aput v12, v2, v11

    .line 536
    const-string v7, "ro.serialno"

    const-string v8, "1234567890ABCDEF"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, "serial":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 539
    .local v6, "serialLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 540
    rem-int/lit8 v7, v4, 0x5

    add-int/lit8 v7, v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v7

    .line 539
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 542
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aget v10, v2, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aget v10, v2, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    aget v10, v2, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aget v10, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    aget v10, v2, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v15

    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "addrString":Ljava/lang/String;
    :try_start_0
    const-string v7, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_1
    return-void

    .line 546
    :catch_0
    move-exception v3

    .line 547
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private needsOemUsbOverride()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2280
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 2283
    :cond_0
    :goto_0
    return v1

    .line 2282
    :cond_1
    const-string v2, "ro.bootmode"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2283
    .local v0, "bootMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "usbFunctions"    # Ljava/lang/String;

    .prologue
    .line 2287
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 2301
    .end local p1    # "usbFunctions":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 2289
    .restart local p1    # "usbFunctions":Ljava/lang/String;
    :cond_1
    const-string v4, "ro.bootmode"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2291
    .local v0, "bootMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2292
    .local v2, "overrides":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    .line 2293
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2294
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2295
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM USB override: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ==> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object p1, v4

    goto :goto_0
.end method

.method private readOemUsbOverrideConfig()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2258
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:array@config_oemUsbModeOverride#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2261
    .local v2, "configList":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2262
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 2263
    .local v1, "config":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2264
    .local v4, "items":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 2265
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 2266
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    .line 2268
    :cond_0
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2269
    .local v6, "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v6, :cond_1

    .line 2270
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 2271
    .restart local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    :cond_1
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2262
    .end local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2277
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_3
    return-void
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 577
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 579
    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 578
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_2

    .line 584
    const-string v4, "none"

    .line 596
    :goto_1
    return-object v4

    .line 586
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 588
    aget-object v2, v3, v1

    .line 589
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 591
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 596
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private startAccessoryMode()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 503
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v5, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 506
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 508
    .local v1, "enableAudio":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_4

    move v0, v3

    .line 511
    .local v0, "enableAccessory":Z
    :goto_2
    const/4 v2, 0x0

    .line 513
    .local v2, "functions":Ljava/lang/String;
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 514
    const-string v2, "accessory,audio_source"

    .line 522
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    .line 524
    invoke-virtual {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0    # "enableAccessory":Z
    .end local v1    # "enableAudio":Z
    .end local v2    # "functions":Ljava/lang/String;
    :cond_3
    move v1, v4

    .line 506
    goto :goto_1

    .restart local v1    # "enableAudio":Z
    :cond_4
    move v0, v4

    .line 508
    goto :goto_2

    .line 516
    .restart local v0    # "enableAccessory":Z
    .restart local v2    # "functions":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    .line 517
    const-string v2, "accessory"

    goto :goto_3

    .line 518
    :cond_6
    if-eqz v1, :cond_2

    .line 519
    const-string v2, "audio_source"

    goto :goto_3
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 1
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 2306
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 2308
    :cond_0
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 2

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->clearUsbDebuggingKeys()V

    .line 2323
    return-void

    .line 2320
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot clear Usb Debugging keys, UsbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyUsbDebugging()V
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    .line 2314
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz v0, :cond_0

    .line 2327
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 2329
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 2330
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 2332
    :cond_1
    return-void
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()I
    .locals 4

    .prologue
    .line 2241
    const/4 v0, 0x0

    .line 2242
    .local v0, "state":I
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHwDisconnected:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPlugType:I
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2243
    const/4 v0, 0x1

    .line 2244
    :cond_0
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 2221
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 2222
    .local v0, "currentAccessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    .line 2223
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no accessory attached"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2225
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match current accessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2229
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2231
    .end local v1    # "error":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    .line 2232
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public setCurrentFunctions(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 2236
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    .line 2238
    return-void
.end method

.method public setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 2
    .param p1, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    .line 432
    monitor-exit v1

    .line 433
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMassStorageBackingFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2249
    if-nez p1, :cond_0

    const-string p1, ""

    .line 2251
    :cond_0
    :try_start_0
    const-string v1, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-static {v1, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2255
    :goto_0
    return-void

    .line 2252
    :catch_0
    move-exception v0

    .line 2253
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to write to /sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 442
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v9, "systemReady"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 449
    const-string v6, "persist.sys.usb.config"

    const-string v9, "mtp"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "config":Ljava/lang/String;
    const-string v6, "adb"

    invoke-static {v0, v6}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v6, "acm"

    invoke-static {v0, v6}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string v6, "ro.sys.usb.storage.type"

    const-string v9, "mtp"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    .line 454
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "systemReady - mUsbStorageType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", config: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 457
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    .line 458
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v9, "systemReady - mUsbStorageType = config"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    const-string v9, "mass_storage"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 462
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v9, "systemReady - UMS only"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    .line 465
    const/4 v3, 0x0

    .line 466
    .local v3, "massStorageSupported":Z
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v4

    .line 467
    .local v4, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 469
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_1

    .line 470
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 471
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 472
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "systemReady - massStorageSupported: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v3, 0x1

    .line 478
    .end local v2    # "i":I
    :cond_1
    if-nez v3, :cond_5

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    .line 484
    .end local v3    # "massStorageSupported":Z
    .end local v4    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_2
    const-string v6, "charging"

    invoke-static {v0, v6}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 485
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbCharging:Z

    .line 489
    :cond_2
    sget-boolean v6, Lcom/android/server/usb/UsbDeviceManager;->bEvdoDtViaSupport:Z

    if-eq v6, v7, :cond_3

    .line 492
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_enabled"

    iget-boolean v10, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    if-eqz v10, :cond_7

    :goto_3
    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_3
    :goto_4
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 500
    return-void

    .line 470
    .restart local v2    # "i":I
    .restart local v3    # "massStorageSupported":Z
    .restart local v4    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_5
    move v6, v8

    .line 478
    goto :goto_1

    .line 481
    .end local v3    # "massStorageSupported":Z
    .end local v4    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_6
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v9, "systemReady - MTP(+UMS)"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    goto :goto_2

    :cond_7
    move v7, v8

    .line 492
    goto :goto_3

    .line 494
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "ADB_ENABLED is restricted."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
