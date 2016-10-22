.class public Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
.super Landroid/os/Handler;
.source "ViaGpsProcess.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cdma/IGpsProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;,
        Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    }
.end annotation


# static fields
.field private static final CLOSE_DATA_CONNECTION:I = 0x1

.field private static final DATACALL_CONNECTED:I = 0x1

.field private static final DATACALL_DISCONNECTED:I = 0x0

.field private static final DATACALL_OTHER:I = 0x3

.field private static final DATACALL_WIFI:I = 0x2

.field private static final EVENT_DATA_CONNECT_STATUS_CHANGE:I = 0x3

.field private static final EVENT_GPS_APPLY_WAP_SRV:I = 0x1

.field private static final EVENT_GPS_MPC_SET_COMPLETE:I = 0x2

.field public static final EXTRAL_VIA_SIMU_REQUEST_PARAM:Ljava/lang/String; = "com.android.internal.telephony.via-simu-request-param"

.field private static final GPS_FIX_RESULT:I = 0x3

.field private static final GPS_START:I = 0x2

.field private static final GPS_STOP:I = 0x4

.field public static final INTENT_VIA_GPS_FIX_RESULT_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-fix-result-notify"

.field public static final INTENT_VIA_GPS_FIX_RESULT_NOTIFY_EXTRA:Ljava/lang/String; = "via-gps-fix-result"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-mpc-setting-notify"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY_IP_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-ip"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY_PORT_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-port"

.field public static final INTENT_VIA_GPS_MPC_SETTING_RESULT_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-mpc-setting-result-notify"

.field public static final INTENT_VIA_GPS_MPC_SETTING_RESULT_NOTIFY_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-result"

.field public static final INTENT_VIA_SIMU_REQUEST:Ljava/lang/String; = "com.android.internal.telephony.via-simu-request"

.field static final LOG_TAG:Ljava/lang/String; = "VIA_GPS"

.field private static final LTE_DC_PHONE_PROXY_ID:I

.field private static final REQUEST_DATA_CONNECTION:I


# instance fields
.field private mAgpsDataEnabled:Z

.field private mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataEnabled:Z

.field private final mLteNetworkRequest:Landroid/net/NetworkRequest;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mNotifiedNetworkType:I

.field private mNotifiedStatus:I

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mPhoneCount:I

.field private mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedState:I

.field private mSimId:I

.field private mSlotCount:I

.field private mTeleMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "simId"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    .line 130
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I

    .line 132
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneCount:I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneStateListeners:Ljava/util/List;

    .line 137
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I

    .line 144
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataEnabled:Z

    .line 145
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsDataEnabled:Z

    .line 421
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;-><init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 158
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 159
    iput p4, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSimId:I

    .line 160
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 162
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    invoke-direct {v0, p2, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    .line 163
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;

    .line 166
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 169
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mLteNetworkRequest:Landroid/net/NetworkRequest;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;ILandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # [I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneStateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/cdma/CDMAPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I

    return p1
.end method

.method private getAgpsDataEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 248
    .local v0, "defaultSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 249
    .local v2, "subIds":[I
    if-nez v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v3

    .line 252
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 253
    aget v4, v2, v1

    if-lez v4, :cond_2

    .line 254
    const-string v4, "VIA_GPS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slot0 Sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", defaultSub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    aget v4, v2, v1

    if-ne v4, v0, :cond_2

    .line 256
    const/4 v3, 0x1

    goto :goto_0

    .line 252
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getDataConnectState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 4

    .prologue
    .line 323
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 326
    .local v0, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 328
    .local v1, "psPhone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v1, :cond_0

    .line 329
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getDataConnectState(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 339
    .end local v0    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v1    # "psPhone":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    return-object v2

    .line 331
    .restart local v0    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v1    # "psPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    const-string v2, "VIA_GPS"

    const-string v3, "Cannot get PS Phone"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v1    # "psPhone":Lcom/android/internal/telephony/PhoneBase;
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 334
    :cond_1
    const-string v2, "VIA_GPS"

    const-string v3, "Cannot get LteDcPhoneProxy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    .end local v0    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getDataConnectState(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    goto :goto_0
.end method

.method private getDataConnectState(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 342
    const-string v3, "default"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 344
    .local v0, "defaultState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "mms"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    .line 346
    .local v1, "mmsState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "supl"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 348
    .local v2, "suplState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIA] getDataConnectState default: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", supl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phoneName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v3, :cond_1

    .line 355
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 361
    :goto_0
    return-object v3

    .line 356
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v3, :cond_3

    .line 359
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 361
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private onFixResultHandler(I)V
    .locals 4
    .param p1, "gpsStatus"    # I

    .prologue
    .line 310
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VIA] onFixResultHandler, gpsStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.via-gps-fix-result-notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "via-gps-fix-result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method private onGpsMpcSetComplete(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 413
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VIA] onGpsMpcSetComplete, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.via-gps-mpc-setting-result-notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "via-gps-mpc-setting-result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 417
    return-void
.end method

.method private requestAGPSTcpConnected(ILandroid/os/Message;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 405
    const-string v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VIA] requestAGPSTcpConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mReportedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    if-eq v0, p1, :cond_0

    .line 408
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    .line 409
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 411
    :cond_0
    return-void
.end method

.method private sendDataEnabledStatus()V
    .locals 6

    .prologue
    .line 264
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    .line 265
    .local v1, "dataEnable":Z
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data connection Enabled ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-eqz v1, :cond_4

    .line 267
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getAgpsDataEnabled()Z

    move-result v0

    .line 268
    .local v0, "agpsDataEnable":Z
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataEnabled:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsDataEnabled:Z

    if-eq v0, v3, :cond_1

    .line 270
    :cond_0
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 273
    .local v2, "status":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setMobileDataStatus(I)V

    .line 275
    .end local v2    # "status":I
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsDataEnabled:Z

    .line 276
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Agps Data connection Enabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "agpsDataEnable":Z
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataEnabled:Z

    .line 283
    return-void

    .line 270
    .restart local v0    # "agpsDataEnable":Z
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 278
    .end local v0    # "agpsDataEnable":Z
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataEnabled:Z

    if-eq v3, v1, :cond_2

    .line 279
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setMobileDataStatus(I)V

    goto :goto_1
.end method

.method private startGpsWapService()V
    .locals 5

    .prologue
    .line 365
    const-string v3, "VIA_GPS"

    const-string v4, "[VIA] startGpsWapService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getDataConnectState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 370
    .local v0, "dataState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    .line 372
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v3, v0, :cond_0

    .line 373
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 403
    :goto_0
    return-void

    .line 375
    :cond_0
    const-string v3, "VIA_GPS"

    const-string v4, "[VIA] start requestNetwork"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;-><init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 392
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 394
    .local v1, "networkType":I
    const/16 v3, 0xd

    if-eq v1, v3, :cond_1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_2

    .line 396
    :cond_1
    const-string v3, "VIA_GPS"

    const-string v4, "Lte network request"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mLteNetworkRequest:Landroid/net/NetworkRequest;

    .line 401
    .local v2, "request":Landroid/net/NetworkRequest;
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v2, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 399
    .end local v2    # "request":Landroid/net/NetworkRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkRequest:Landroid/net/NetworkRequest;

    .restart local v2    # "request":Landroid/net/NetworkRequest;
    goto :goto_1
.end method

.method private stopGpsWapService()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "VIA_GPS"

    const-string v1, "[VIA] stopGpsWapService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 320
    :cond_0
    return-void
.end method

.method private viaGpsEventHandler([I)V
    .locals 4
    .param p1, "data"    # [I

    .prologue
    .line 286
    const/4 v2, 0x0

    aget v0, p1, v2

    .line 287
    .local v0, "event":I
    const/4 v2, 0x1

    aget v1, p1, v2

    .line 289
    .local v1, "gpsStatus":I
    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    const-string v2, "VIA_GPS"

    const-string v3, "[VIA] GPS Request data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V

    goto :goto_0

    .line 295
    :pswitch_2
    const-string v2, "VIA_GPS"

    const-string v3, "[VIA] GPS Stop data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->stopGpsWapService()V

    goto :goto_0

    .line 301
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->onFixResultHandler(I)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 240
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 243
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 222
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 223
    .local v1, "data":[I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V

    goto :goto_0

    .line 228
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 229
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 230
    .local v2, "success":Z
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->onGpsMpcSetComplete(Z)V

    goto :goto_0

    .line 229
    .end local v2    # "success":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 235
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->sendDataEnabledStatus()V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public start()V
    .locals 4

    .prologue
    .line 189
    const-string v1, "VIA_GPS"

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForViaGpsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.via-gps-mpc-setting-notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "com.android.internal.telephony.via-simu-request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "VIA_GPS"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForViaGpsEvent(Landroid/os/Handler;)V

    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    return-void
.end method
