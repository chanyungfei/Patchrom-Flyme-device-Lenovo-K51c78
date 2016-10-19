.class public Lcom/mediatek/internal/telephony/ImsSwitchController;
.super Landroid/os/Handler;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;
    }
.end annotation


# static fields
.field static final DEFAULT_IMS_STATE:I = 0x0

.field static final DEFAULT_MAJOR_CAPABILITY_PHONE_ID:I = 0x0

.field static final DEFAULT_PHONE_ID:I = 0x0

.field protected static final EVENT_DC_SWITCH_STATE_CHANGE:I = 0x5

.field protected static final EVENT_RADIO_AVAILABLE_PHONE1:I = 0x2

.field protected static final EVENT_RADIO_AVAILABLE_PHONE2:I = 0x4

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE1:I = 0x1

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE2:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "ImsSwitchController"

.field private static mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInVoLteCall:Z

.field protected final mLock:Ljava/lang/Object;

.field private mPhoneCount:I

.field private mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 84
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 86
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 88
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    .line 304
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$1;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    const-string v1, "Initialize ImsSwitchController"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 107
    iput p2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    .line 110
    const-string v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ro.mtk_tc1_feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    .line 122
    const-string v1, "ImsSwitchController"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V

    .line 124
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    .line 125
    const-string v1, "ims"

    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    iget v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    if-le v1, v4, :cond_1

    .line 131
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    :cond_1
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerForWfcSwitchChange()V

    .line 138
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->confirmPreCheckDetachIfNeed()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    return-void
.end method

.method private confirmPreCheckDetachIfNeed()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmPreCheckDetachIfNeed, phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 301
    :cond_0
    monitor-exit v1

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 362
    :goto_0
    return-object v0

    .line 344
    :pswitch_0
    const-string v0, "RADIO_NOT_AVAILABLE_PHONE1"

    .line 345
    goto :goto_0

    .line 347
    :pswitch_1
    const-string v0, "RADIO_NOT_AVAILABLE_PHONE2"

    .line 348
    goto :goto_0

    .line 350
    :pswitch_2
    const-string v0, "RADIO_AVAILABLE_PHONE1"

    .line 351
    goto :goto_0

    .line 353
    :pswitch_3
    const-string v0, "RADIO_AVAILABLE_PHONE2"

    .line 354
    goto :goto_0

    .line 356
    :pswitch_4
    const-string v0, "DC_SWITCH_STATE_CHANGE"

    .line 357
    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 6
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    const/4 v5, 0x1

    .line 200
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDcStateAttaching param.getPhoneId():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "volte_vt_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, "imsSetting":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDcStateAttaching, param.getPhoneId():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " imsSetting:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 208
    if-ne v0, v5, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 210
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 212
    :cond_0
    monitor-exit v2

    .line 213
    return-void

    .line 212
    .end local v0    # "imsSetting":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 7
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    const/4 v6, 0x1

    .line 216
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 217
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    if-ne v2, v6, :cond_0

    .line 218
    const-string v2, "handleDcStatePreCheckDisconnect, in volte call, suspend DcState preCheck"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 220
    monitor-exit v3

    .line 250
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "volte_vt_enabled"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 227
    .local v0, "imsSetting":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDcStatePreCheckDisconnect, param.getPhoneId():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " imsSetting:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 230
    if-ne v0, v6, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 232
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    if-eqz v2, :cond_2

    .line 233
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->getImsState()I

    move-result v1

    .line 235
    .local v1, "state":I
    if-eqz v1, :cond_1

    .line 236
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOffIms(I)V

    .line 237
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 249
    .end local v1    # "state":I
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "imsSetting":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 239
    .restart local v0    # "imsSetting":I
    .restart local v1    # "state":I
    :cond_1
    :try_start_1
    const-string v2, "handleDcStatePreCheckDisconnect: ims is disable and confirm directly"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    goto :goto_1

    .line 243
    .end local v1    # "state":I
    :cond_2
    const-string v2, "handleDcStatePreCheckDisconnect: ImsService not ready !!!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 244
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    goto :goto_1

    .line 247
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 453
    const-string v0, "ImsSwitchController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method private onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage param.getState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " param.getReason(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 266
    :cond_1
    :goto_1
    return-void

    .line 254
    :sswitch_0
    const-string v2, "predetachcheck"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "attaching"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_1

    .line 259
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lost Connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_1

    .line 254
    :sswitch_data_0
    .sparse-switch
        -0x1c8cb883 -> :sswitch_1
        0x523fead2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 269
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivePhoneStateChange phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " phoneType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " phoneState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsInVoLteCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 275
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    if-ne v0, v3, :cond_1

    .line 276
    if-ne p2, v4, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p3, v0, :cond_0

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOffIms(I)V

    .line 291
    :cond_0
    :goto_0
    monitor-exit v1

    .line 292
    return-void

    .line 286
    :cond_1
    if-ne p2, v4, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p3, v0, :cond_0

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onReceiveWifiStateChange(I)V
    .locals 4
    .param p1, "wifiState"    # I

    .prologue
    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveWifiStateChange wifiState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 442
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "when_to_make_wifi_calls"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 446
    .local v0, "wfcSetting":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 447
    const/4 v1, 0x1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 450
    .end local v0    # "wfcSetting":I
    :cond_0
    return-void
.end method

.method private registerEvent()V
    .locals 8

    .prologue
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerEvent, major phoneid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "ImsSwitchController"

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDcSwitchStateChange(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    .line 187
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 189
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    .line 191
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private registerForWfcSwitchChange()V
    .locals 4

    .prologue
    .line 406
    new-instance v0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$2;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Landroid/os/Handler;)V

    .line 436
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "when_to_make_wifi_calls"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 438
    return-void
.end method

.method private switchImsCapability(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchImsCapability, on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 164
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    if-eqz v1, :cond_0

    .line 165
    if-eqz p1, :cond_1

    .line 166
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOnIms(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "when_to_make_wifi_calls"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, "wfcSettings":I
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 175
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOffIms(I)V

    goto :goto_0
.end method

.method private unregisterEvent()V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterEvent, major phoneid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;->unregisterForDcSwitchStateChange(Landroid/os/Handler;)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 367
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage msg.what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, "phoneId":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 400
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 372
    :pswitch_0
    const/4 v2, 0x0

    .line 373
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 378
    :pswitch_1
    const/4 v2, 0x1

    .line 379
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 384
    :pswitch_2
    const/4 v2, 0x0

    .line 385
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 390
    :pswitch_3
    const/4 v2, 0x1

    .line 391
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 396
    :pswitch_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 397
    .local v1, "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
