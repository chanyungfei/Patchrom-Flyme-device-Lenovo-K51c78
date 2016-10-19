.class public final Lcom/mediatek/hdmi/MtkHdmiManagerService;
.super Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field private static final ACTION_IPO_BOOT:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final ACTION_IPO_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final AP_CFG_RDCL_FILE_HDCP_KEY_LID:I = 0x2d

.field private static final HDMI_COLOR_SPACE_DEFAULT:I = 0x0

.field private static final HDMI_DEEP_COLOR_DEFAULT:I = 0x1

.field private static final HDMI_ENABLE_STATUS_DEFAULT:I = 0x1

.field private static final HDMI_VIDEO_RESOLUTION_DEFAULT:I = 0x64

.field private static final HDMI_VIDEO_SCALE_DEFAULT:I = 0x0

.field private static final KEY_CLEARMOTION_DIMMED:Ljava/lang/String; = "sys.display.clearMotion.dimmed"

.field private static final MSG_CABLE_STATE:I = 0x2

.field private static final MSG_DEINIT:I = 0x1

.field private static final MSG_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtkHdmiService"

.field private static sHdmi:Ljava/lang/String;

.field private static sMhl:Ljava/lang/String;


# instance fields
.field private mActionReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioOutputDialog:Landroid/app/AlertDialog;

.field private mAudioOutputMode:I

.field private mCablePlugged:Z

.field private mCallComing:Z

.field private mCallRestore:Z

.field private mCapabilities:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEdid:[I

.field private mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdVideoRestore:Z

.field private mHdmiColorSpace:I

.field private mHdmiDeepColor:I

.field private mHdmiEnabled:Z

.field private mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

.field private mHdmiSettingsObserver:Landroid/database/ContentObserver;

.field private mHdmiVideoResolution:I

.field private mHdmiVideoScale:I

.field private mInitialized:Z

.field private mIsHdVideoPlaying:Z

.field private mIsSmartBookPluggedIn:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreEdid:[I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "HDMI"

    sput-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    .line 105
    const-string v0, "MHL"

    sput-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 473
    invoke-direct {p0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    .line 122
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    .line 123
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 124
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    .line 125
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 127
    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 129
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 289
    iput v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    .line 425
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mActionReceiver:Landroid/content/BroadcastReceiver;

    .line 461
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$5;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$5;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 474
    const-string v0, "MtkHdmiService"

    const-string v1, "MtkHdmiManagerService constructor"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    .line 476
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 477
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->initial()V

    .line 478
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCallStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->registerCallListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setAudioParameters(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleNotification(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/hdmi/MtkHdmiManagerService;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateWakeLock(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setDrmKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setHdcpKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getCapabilities()V

    return-void
.end method

.method static synthetic access$2302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 85
    sput-object p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 85
    sput-object p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->hdmiCableStateChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->unregisterCallListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->loadHdmiSettings()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    return p1
.end method

.method private enableHdmiImpl(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 645
    monitor-enter p0

    .line 646
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeEnableHdmi(Z)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCapabilities()V
    .locals 3

    .prologue
    .line 950
    monitor-enter p0

    .line 951
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeGetCapabilities()I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    .line 952
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    return-void

    .line 952
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSuitableResolution(I)I
    .locals 13
    .param p1, "videoResolution"    # I

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutions()[I

    move-result-object v9

    .line 770
    .local v9, "supportedResolutions":[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v8, "resolutionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v1, v9

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v7, v1, v3

    .line 772
    .local v7, "res":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 774
    .end local v7    # "res":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->needUpdate(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 775
    const-string v10, "MtkHdmiService"

    const-string v11, "upate resolution"

    invoke-static {v10, v11}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    iget-object v10, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    if-eqz v10, :cond_3

    .line 777
    iget-object v10, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    or-int v2, v10, v11

    .line 778
    .local v2, "edidTemp":I
    const/4 v4, 0x0

    .line 779
    .local v4, "index":I
    sget-boolean v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_HDMI_SUPPORT:Z

    if-nez v10, :cond_1

    sget-boolean v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_MHL_SUPPORT:Z

    if-eqz v10, :cond_4

    .line 781
    :cond_1
    const/4 v4, 0x1

    .line 789
    :goto_1
    invoke-static {v4}, Lcom/mediatek/hdmi/HdmiDef;->getPreferedResolutions(I)[I

    move-result-object v6

    .line 790
    .local v6, "prefered":[I
    move-object v1, v6

    array-length v5, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    aget v7, v1, v3

    .line 791
    .restart local v7    # "res":I
    move v0, v7

    .line 792
    .local v0, "act":I
    const/16 v10, 0x64

    if-lt v7, v10, :cond_2

    .line 793
    add-int/lit8 v0, v7, -0x64

    .line 795
    :cond_2
    sget-object v10, Lcom/mediatek/hdmi/HdmiDef;->sResolutionMask:[I

    aget v10, v10, v0

    and-int/2addr v10, v2

    if-eqz v10, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 797
    move p1, v7

    .line 803
    .end local v0    # "act":I
    .end local v2    # "edidTemp":I
    .end local v4    # "index":I
    .end local v6    # "prefered":[I
    .end local v7    # "res":I
    :cond_3
    const-string v10, "MtkHdmiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "suiteable video resolution: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    return p1

    .line 782
    .restart local v2    # "edidTemp":I
    .restart local v4    # "index":I
    :cond_4
    sget-boolean v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDMI_SUPPORT:Z

    if-eqz v10, :cond_5

    .line 783
    const/4 v4, 0x0

    goto :goto_1

    .line 784
    :cond_5
    sget-boolean v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_TB6582_HDMI_SUPPORT:Z

    if-eqz v10, :cond_6

    .line 785
    const/4 v4, 0x2

    goto :goto_1

    .line 787
    :cond_6
    const/4 v4, 0x3

    goto :goto_1

    .line 790
    .restart local v0    # "act":I
    .restart local v6    # "prefered":[I
    .restart local v7    # "res":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getSupportedResolutionsImpl()[I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 855
    iget-object v10, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    if-nez v10, :cond_1

    .line 856
    sget-boolean v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_TB6582_HDMI_SUPPORT:Z

    if-eqz v10, :cond_0

    .line 857
    const/4 v10, 0x2

    invoke-static {v10}, Lcom/mediatek/hdmi/HdmiDef;->getDefaultResolutions(I)[I

    move-result-object v9

    .line 890
    :goto_0
    return-object v9

    .line 859
    :cond_0
    const/4 v10, 0x3

    invoke-static {v10}, Lcom/mediatek/hdmi/HdmiDef;->getDefaultResolutions(I)[I

    move-result-object v9

    goto :goto_0

    .line 863
    :cond_1
    sget-boolean v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_HDMI_SUPPORT:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_MHL_SUPPORT:Z

    if-eqz v10, :cond_3

    .line 865
    :cond_2
    invoke-static {v12}, Lcom/mediatek/hdmi/HdmiDef;->getDefaultResolutions(I)[I

    move-result-object v9

    goto :goto_0

    .line 866
    :cond_3
    sget-boolean v10, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDMI_SUPPORT:Z

    if-eqz v10, :cond_5

    .line 867
    invoke-static {v11}, Lcom/mediatek/hdmi/HdmiDef;->getDefaultResolutions(I)[I

    move-result-object v9

    .line 871
    .local v9, "resolutions":[I
    :goto_1
    iget-object v10, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    aget v10, v10, v11

    iget-object v11, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    aget v11, v11, v12

    or-int v2, v10, v11

    .line 872
    .local v2, "edidTemp":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, v9

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_6

    aget v8, v0, v4

    .line 875
    .local v8, "res":I
    :try_start_0
    sget-object v10, Lcom/mediatek/hdmi/HdmiDef;->sResolutionMask:[I

    aget v7, v10, v8

    .line 876
    .local v7, "mask":I
    and-int v10, v2, v7

    if-eqz v10, :cond_4

    .line 877
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 878
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v7    # "mask":I
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 869
    .end local v0    # "arr$":[I
    .end local v2    # "edidTemp":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "res":I
    .end local v9    # "resolutions":[I
    :cond_5
    invoke-static {}, Lcom/mediatek/hdmi/HdmiDef;->getAllResolutions()[I

    move-result-object v9

    .restart local v9    # "resolutions":[I
    goto :goto_1

    .line 881
    .restart local v0    # "arr$":[I
    .restart local v2    # "edidTemp":I
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "res":I
    :catch_0
    move-exception v1

    .line 882
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v10, "MtkHdmiService"

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 885
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v8    # "res":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [I

    .line 886
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 887
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v3

    .line 886
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 889
    :cond_7
    const-string v10, "MtkHdmiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSupportedResolutionsImpl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleCablePlugged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateClearMotionDimmed(Z)V

    .line 265
    if-eqz p1, :cond_3

    .line 266
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->refreshEdid(Z)V

    .line 267
    sget-boolean v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDMI_SUPPORT:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_HDMI_SUPPORT:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_MHL_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 270
    :cond_0
    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setColorAndDeepImpl(II)Z

    .line 272
    :cond_1
    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->initVideoResolution(II)V

    .line 277
    :goto_0
    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 278
    .local v0, "isShowNotification":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleNotification(Z)V

    .line 279
    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    invoke-direct {p0, p1, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateWakeLock(ZZ)V

    .line 280
    if-eqz p1, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleMultiChannel()V

    .line 283
    :cond_2
    return-void

    .line 274
    .end local v0    # "isShowNotification":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->refreshEdid(Z)V

    goto :goto_0

    .line 277
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleCallStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 137
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallComing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCallRestore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    if-ne p1, v6, :cond_2

    .line 139
    iput-boolean v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    .line 140
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isSignalOutputting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x80500c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "contentStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 143
    sget-object v1, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 146
    iput-boolean v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 147
    invoke-virtual {p0, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    .line 156
    .end local v0    # "contentStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    iput-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    .line 151
    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    if-eqz v1, :cond_1

    .line 152
    iput-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 153
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    goto :goto_0
.end method

.method private handleMultiChannel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 293
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isSupportMultiChannel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "hdmi_audio_output_mode"

    const/4 v6, -0x2

    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    .line 296
    const-string v4, "MtkHdmiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current mode from setting provider : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 298
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x80500c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x80500ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "stereo":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x80500cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "multiChannel":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v8

    const/4 v6, 0x1

    aput-object v0, v5, v6

    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    new-instance v7, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;

    invoke-direct {v7, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;

    invoke-direct {v6, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    .line 318
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 319
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 320
    .local v3, "win":Landroid/view/Window;
    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 322
    .end local v0    # "multiChannel":Ljava/lang/String;
    .end local v1    # "stereo":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "win":Landroid/view/Window;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-direct {p0, v8}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setAudioParameters(Z)V

    goto :goto_0
.end method

.method private handleNotification(Z)V
    .locals 12
    .param p1, "plugged"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const v11, 0x8020065

    .line 384
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 386
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-nez v8, :cond_0

    .line 387
    const-string v0, "MtkHdmiService"

    const-string v1, "Fail to get NotificationManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_0
    return-void

    .line 390
    :cond_0
    if-eqz p1, :cond_2

    .line 391
    const-string v0, "MtkHdmiService"

    const-string v3, "HDMI cable is pluged in, show notification now"

    invoke-static {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 393
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x80500c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "titleStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x80500c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "contentStr":Ljava/lang/String;
    iput v11, v7, Landroid/app/Notification;->icon:I

    .line 398
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 399
    sget-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 400
    sget-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    const v0, 0x8020073

    iput v0, v7, Landroid/app/Notification;->icon:I

    .line 403
    :cond_1
    iput-object v10, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 404
    const/16 v0, 0x23

    iput v0, v7, Landroid/app/Notification;->flags:I

    .line 407
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.HDMISettings"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 411
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 413
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, v10, v6, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 415
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v11, v7, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 419
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "contentStr":Ljava/lang/String;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "titleStr":Ljava/lang/String;
    :cond_2
    const-string v0, "MtkHdmiService"

    const-string v1, "HDMI cable is pluged out, clear notification now"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v11, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private hdmiCableStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 206
    if-ne p1, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    .line 207
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    if-eqz v2, :cond_1

    .line 208
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    if-eqz v2, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v1

    .line 210
    .local v1, "type":I
    if-eq v1, v3, :cond_5

    .line 211
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80500c5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "contentStr":Ljava/lang/String;
    if-ne v1, v6, :cond_0

    .line 214
    sget-object v2, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    const-string v2, "MtkHdmiService"

    const-string v5, "disable hdmi when play HD video"

    invoke-static {v2, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 219
    iput-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 220
    const-string v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsHdVideoPlaying: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mHdVideoRestore: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    .line 245
    .end local v0    # "contentStr":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 206
    goto :goto_0

    .line 224
    :cond_3
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    if-eqz v2, :cond_5

    .line 225
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80500c6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0    # "contentStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 228
    sget-object v2, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_4
    const-string v2, "MtkHdmiService"

    const-string v5, "disable hdmi when call coming"

    invoke-static {v2, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 232
    iput-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 233
    const-string v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCallComing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mCallRestore: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    goto :goto_1

    .line 237
    .end local v0    # "contentStr":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getCapabilities()V

    .line 238
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    invoke-direct {p0, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V

    .line 241
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_cable_plugged"

    const/4 v4, -0x2

    invoke-static {v2, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method private initVideoResolution(II)V
    .locals 6
    .param p1, "resolution"    # I
    .param p2, "scale"    # I

    .prologue
    .line 722
    const-string v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVideoResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isResolutionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    invoke-direct {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(II)Z

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSuitableResolution(I)I

    move-result v1

    .line 727
    .local v1, "suitableResolution":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    add-int/lit8 v0, v1, -0x64

    .line 729
    .local v0, "finalResolution":I
    :goto_1
    const-string v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVideoResolution final video resolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    invoke-direct {p0, v0, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    iput v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 733
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_video_resolution"

    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .end local v0    # "finalResolution":I
    :cond_2
    move v0, v1

    .line 727
    goto :goto_1
.end method

.method private initial()V
    .locals 7

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HdmiService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 483
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 484
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    .line 485
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_SMARTBOOK_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 493
    const-string v0, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mActionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 499
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 502
    .local v6, "mPowerManager":Landroid/os/PowerManager;
    const v0, 0x2000000a

    const-string v1, "HDMI"

    invoke-virtual {v6, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 505
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 507
    .end local v6    # "mPowerManager":Landroid/os/PowerManager;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    if-nez v0, :cond_4

    .line 508
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    .line 509
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    invoke-virtual {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->startObserve()V

    .line 511
    :cond_4
    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDCP_SUPPORT:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_HDMI_HDCP_SUPPORT:Z

    if-eqz v0, :cond_6

    .line 513
    :cond_5
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    new-instance v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;

    invoke-direct {v1, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->post(Ljava/lang/Runnable;)Z

    .line 525
    :cond_6
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    new-instance v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$7;

    invoke-direct {v1, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$7;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->post(Ljava/lang/Runnable;)Z

    .line 537
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->observeSettings()V

    .line 538
    return-void
.end method

.method private isResolutionSupported(I)Z
    .locals 9
    .param p1, "resolution"    # I

    .prologue
    const/4 v5, 0x0

    .line 741
    const-string v6, "MtkHdmiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isResolutionSupported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 742
    const/16 v6, 0x64

    if-lt p1, v6, :cond_1

    .line 752
    :cond_0
    :goto_0
    return v5

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutions()[I

    move-result-object v4

    .line 746
    .local v4, "supportedResolutions":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 747
    .local v3, "res":I
    if-ne v3, p1, :cond_2

    .line 748
    const-string v5, "MtkHdmiService"

    const-string v6, "resolution is supported"

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    const/4 v5, 0x1

    goto :goto_0

    .line 746
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isSupportMultiChannel()Z
    .locals 2

    .prologue
    .line 286
    const/16 v0, 0x78

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getAudioParameter(II)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadHdmiSettings()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_enable_status"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    .line 579
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_video_resolution"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 582
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_video_scale"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    .line 585
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_color_space"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    .line 588
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hdmi_deep_color"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    .line 591
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    .line 592
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 593
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    .line 594
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 595
    return-void

    :cond_0
    move v0, v2

    .line 576
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 958
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    return-void
.end method

.method private needUpdate(I)Z
    .locals 4
    .param p1, "videoResolution"    # I

    .prologue
    .line 808
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    const/4 v0, 0x1

    .line 810
    .local v0, "needUpdate":Z
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    const/4 v0, 0x0

    .line 813
    :cond_0
    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    .line 814
    const/4 v0, 0x1

    .line 816
    :cond_1
    return v0
.end method

.method private observeSettings()V
    .locals 5

    .prologue
    .line 598
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hdmi_enable_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 601
    return-void
.end method

.method private refreshEdid(Z)V
    .locals 8
    .param p1, "plugged"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    if-eqz p1, :cond_4

    .line 361
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getResolutionMask()[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    .line 362
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    if-eqz v1, :cond_0

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 364
    const-string v1, "MtkHdmiService"

    const-string v2, "mEdid[%d] = %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "i":I
    :cond_0
    const-string v1, "MtkHdmiService"

    const-string v2, "mEdid is null!"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    if-eqz v1, :cond_2

    .line 371
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 372
    const-string v1, "MtkHdmiService"

    const-string v2, "mPreEdid[%d] = %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    .end local v0    # "i":I
    :cond_2
    const-string v1, "MtkHdmiService"

    const-string v2, "mPreEdid is null!"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    :cond_3
    :goto_2
    return-void

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    goto :goto_2
.end method

.method private registerCallListener()V
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 259
    const-string v0, "MtkHdmiService"

    const-string v1, "register phone state change listener..."

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    :cond_1
    return-void
.end method

.method private setAudioParameters(Z)V
    .locals 7
    .param p1, "isStereoChecked"    # Z

    .prologue
    .line 329
    const/16 v3, 0x78

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getAudioParameter(II)I

    move-result v1

    .line 330
    .local v1, "maxChannel":I
    if-eqz p1, :cond_0

    .line 331
    const/4 v1, 0x2

    .line 333
    :cond_0
    const/16 v3, 0x380

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getAudioParameter(II)I

    move-result v2

    .line 334
    .local v2, "maxSampleate":I
    const/16 v3, 0xc00

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getAudioParameter(II)I

    move-result v0

    .line 335
    .local v0, "maxBitwidth":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI_channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI_maxsamplingrate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI_bitwidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 338
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hdmi_audio_output_mode"

    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 340
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioParameters mAudioOutputMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,maxChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,maxSampleate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,maxBitwidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method private setColorAndDeepImpl(II)Z
    .locals 1
    .param p1, "color"    # I
    .param p2, "deep"    # I

    .prologue
    .line 687
    monitor-enter p0

    .line 688
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeSetDeepColor(II)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setDrmKey()Z
    .locals 1

    .prologue
    .line 570
    monitor-enter p0

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeSetHdmiDrmKey()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setHdcpKey()Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 549
    const/4 v4, 0x0

    .line 550
    .local v4, "key":[B
    const-string v6, "NvRAMAgent"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 551
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/NvRAMAgent;

    move-result-object v0

    .line 552
    .local v0, "agent":Lcom/mediatek/hdmi/NvRAMAgent;
    if-eqz v0, :cond_1

    .line 554
    :try_start_0
    const-string v6, "MtkHdmiService"

    const-string v7, "Read HDCP key from nvram"

    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    const/16 v6, 0x2d

    invoke-interface {v0, v6}, Lcom/mediatek/hdmi/NvRAMAgent;->readFile(I)[B

    move-result-object v4

    .line 556
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v6, 0x11f

    if-ge v3, v6, :cond_0

    .line 557
    const-string v6, "MtkHdmiService"

    const-string v7, "HDCP key[%d] = %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aget-byte v10, v4, v3

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 559
    :cond_0
    if-eqz v4, :cond_1

    .line 560
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeSetHdcpKey([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 566
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return v5

    .line 562
    :catch_0
    move-exception v2

    .line 563
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "MtkHdmiService"

    const-string v7, "NvRAMAgent read file fail"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setVideoResolutionImpl(II)Z
    .locals 5
    .param p1, "resolution"    # I
    .param p2, "scale"    # I

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v1

    .line 757
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 758
    const-string v2, "MtkHdmiService"

    const-string v3, "revise resolution for SMB to 2"

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    const/4 p1, 0x2

    .line 761
    :cond_0
    and-int/lit16 v2, p1, 0xff

    and-int/lit16 v3, p2, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 762
    .local v0, "param":I
    const-string v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set video resolution&scale: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    monitor-enter p0

    .line 764
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeSetVideoConfig(I)Z

    move-result v2

    monitor-exit p0

    return v2

    .line 765
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private unregisterCallListener()V
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 251
    :cond_0
    return-void
.end method

.method private updateClearMotionDimmed(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    .line 352
    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_CLEARMOTION_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 353
    const-string v1, "sys.display.clearMotion.dimmed"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 357
    :cond_0
    return-void

    .line 353
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private updateWakeLock(ZZ)V
    .locals 1
    .param p1, "plugged"    # Z
    .param p2, "hdmiEnabled"    # Z

    .prologue
    .line 541
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeIsHdmiForceAwake()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "MtkHdmiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "MTK HDMI MANAGER (dumpsys HDMI)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiVideoResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiVideoScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiColorSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mHdmiDeepColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mCablePlugged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mEdid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mPreEdid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI mInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 619
    return-void
.end method

.method public enableHdmi(Z)Z
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 623
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableHdmi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    const/4 v2, 0x0

    .line 625
    .local v2, "ret":Z
    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    if-ne p1, v3, :cond_1

    .line 626
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHdmiEnabled is the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    :cond_0
    :goto_0
    return v2

    .line 628
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z

    move-result v2

    .line 629
    if-eqz v2, :cond_0

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 632
    .local v0, "ident":J
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    .line 633
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "hdmi_enable_status"

    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 633
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 637
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public enableHdmiPower(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 925
    const-string v1, "MtkHdmiService"

    const-string v2, "enableHdmiPower"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, "ret":Z
    monitor-enter p0

    .line 928
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeHdmiPowerEnable(Z)Z

    move-result v0

    .line 929
    monitor-exit p0

    .line 930
    return v0

    .line 929
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAudioParameter(II)I
    .locals 4
    .param p1, "mask"    # I
    .param p2, "offsets"    # I

    .prologue
    .line 346
    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    and-int/2addr v1, p1

    shr-int v0, v1, p2

    .line 347
    .local v0, "param":I
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioParameter() mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,offsets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mCapabilities: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    return v0
.end method

.method public getDisplayType()I
    .locals 3

    .prologue
    .line 895
    const-string v1, "MtkHdmiService"

    const-string v2, "getDisplayType"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, "ret":I
    monitor-enter p0

    .line 898
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeGetDisplayType()I

    move-result v0

    .line 899
    monitor-exit p0

    .line 900
    return v0

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResolutionMask()[I
    .locals 2

    .prologue
    .line 652
    const-string v0, "MtkHdmiService"

    const-string v1, "getResolutionMask"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    monitor-enter p0

    .line 654
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeGetEdid()[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSupportedResolutions()[I
    .locals 2

    .prologue
    .line 850
    const-string v0, "MtkHdmiService"

    const-string v1, "getSupportedResolutions"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutionsImpl()[I

    move-result-object v0

    return-object v0
.end method

.method public hasCapability(I)Z
    .locals 3
    .param p1, "mask"    # I

    .prologue
    .line 945
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCapability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    iget v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignalOutputting()Z
    .locals 2

    .prologue
    .line 660
    const-string v0, "MtkHdmiService"

    const-string v1, "isSignalOutputting"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native nativeEnableAudio(Z)Z
.end method

.method public native nativeEnableCec(Z)Z
.end method

.method public native nativeEnableHdcp(Z)Z
.end method

.method public native nativeEnableHdmi(Z)Z
.end method

.method public native nativeEnableHdmiIpo(Z)Z
.end method

.method public native nativeEnableVideo(Z)Z
.end method

.method public native nativeGetCapabilities()I
.end method

.method public native nativeGetCecAddr()[C
.end method

.method public native nativeGetCecCmd()[I
.end method

.method public native nativeGetDisplayType()I
.end method

.method public native nativeGetEdid()[I
.end method

.method public native nativeHdmiPortraitEnable(Z)Z
.end method

.method public native nativeHdmiPowerEnable(Z)Z
.end method

.method public native nativeIsHdmiForceAwake()Z
.end method

.method public native nativeNeedSwDrmProtect()Z
.end method

.method public native nativeNotifyOtgState(I)Z
.end method

.method public native nativeSetAudioConfig(I)Z
.end method

.method public native nativeSetCecAddr(B[BCC)Z
.end method

.method public native nativeSetCecCmd(BBC[BIB)Z
.end method

.method public native nativeSetDeepColor(II)Z
.end method

.method public native nativeSetHdcpKey([B)Z
.end method

.method public native nativeSetHdmiDrmKey()Z
.end method

.method public native nativeSetVideoConfig(I)Z
.end method

.method public needSwDrmProtect()Z
    .locals 3

    .prologue
    .line 935
    const-string v1, "MtkHdmiService"

    const-string v2, "needSwDrmProtect"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "ret":Z
    monitor-enter p0

    .line 938
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeNeedSwDrmProtect()Z

    move-result v0

    .line 939
    monitor-exit p0

    .line 940
    return v0

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyHdVideoState(Z)V
    .locals 3
    .param p1, "playing"    # Z

    .prologue
    .line 905
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyHdVideoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 906
    monitor-enter p0

    .line 907
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    if-ne v0, p1, :cond_0

    .line 908
    monitor-exit p0

    .line 921
    :goto_0
    return-void

    .line 910
    :cond_0
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsHdVideoPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNeedRestore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    .line 913
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    if-nez v0, :cond_1

    .line 914
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    if-eqz v0, :cond_1

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 916
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    .line 920
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColorAndDeep(II)Z
    .locals 6
    .param p1, "color"    # I
    .param p2, "deep"    # I

    .prologue
    .line 666
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColorAndDeep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    invoke-direct {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setColorAndDeepImpl(II)Z

    move-result v2

    .line 668
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 671
    .local v0, "ident":J
    :try_start_0
    iput p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    .line 672
    iput p2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    .line 673
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hdmi_color_space"

    const/4 v5, -0x2

    invoke-static {v3, v4, p1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 676
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hdmi_deep_color"

    const/4 v5, -0x2

    invoke-static {v3, v4, p2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    .end local v0    # "ident":J
    :cond_0
    return v2

    .line 680
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setVideoResolution(I)Z
    .locals 9
    .param p1, "resolution"    # I

    .prologue
    const/16 v8, 0x64

    .line 694
    const-string v5, "MtkHdmiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVideoResolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    const/4 v1, 0x0

    .line 696
    .local v1, "ret":Z
    move v4, p1

    .line 697
    .local v4, "suitableResolution":I
    if-lt p1, v8, :cond_0

    .line 698
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSuitableResolution(I)I

    move-result v4

    .line 700
    :cond_0
    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    if-ne v4, v5, :cond_1

    .line 701
    const-string v5, "MtkHdmiService"

    const-string v6, "setVideoResolution is the same"

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    :cond_1
    if-lt v4, v8, :cond_3

    add-int/lit8 v0, v4, -0x64

    .line 705
    .local v0, "finalResolution":I
    :goto_0
    const-string v5, "MtkHdmiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "final video resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-direct {p0, v0, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(II)Z

    move-result v1

    .line 707
    if-eqz v1, :cond_2

    .line 708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 710
    .local v2, "ident":J
    :try_start_0
    iput v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 711
    iget-object v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "hdmi_video_resolution"

    iget v7, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    .end local v2    # "ident":J
    :cond_2
    return v1

    .end local v0    # "finalResolution":I
    :cond_3
    move v0, v4

    .line 703
    goto :goto_0

    .line 715
    .restart local v0    # "finalResolution":I
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setVideoScale(I)Z
    .locals 8
    .param p1, "scale"    # I

    .prologue
    .line 822
    const-string v4, "MtkHdmiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVideoScale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    const/4 v1, 0x0

    .line 824
    .local v1, "ret":Z
    if-ltz p1, :cond_0

    const/16 v4, 0xa

    if-gt p1, v4, :cond_0

    .line 825
    const/4 v1, 0x1

    .line 827
    :cond_0
    if-eqz v1, :cond_1

    .line 828
    iput p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    .line 829
    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_2

    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    add-int/lit8 v0, v4, -0x64

    .line 831
    .local v0, "finalResolution":I
    :goto_0
    const-string v4, "MtkHdmiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set video resolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-direct {p0, v0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(II)Z

    move-result v1

    .line 834
    if-eqz v1, :cond_1

    .line 835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 837
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "hdmi_video_scale"

    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    .end local v0    # "finalResolution":I
    .end local v2    # "ident":J
    :cond_1
    return v1

    .line 829
    :cond_2
    iget v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    goto :goto_0

    .line 841
    .restart local v0    # "finalResolution":I
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
