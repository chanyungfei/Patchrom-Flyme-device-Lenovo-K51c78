.class Lcom/mediatek/epdg/EpdgConnection;
.super Lcom/android/internal/util/StateMachine;
.source "EpdgConnection.java"

# interfaces
.implements Lcom/mediatek/epdg/EpdgCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epdg/EpdgConnection$1;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;
    }
.end annotation


# static fields
.field protected static final ALL_MATCH_APN:Ljava/lang/String; = "*"

.field static final BASE:I = 0x0

.field static final CMD_DISCONNECT:I = 0x2

.field static final CMD_RECONNECT:I = 0x1

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z = true

.field private static final DEFAULT_DPD_INTERVAL:I = 0x78

.field static final EVENT_CONNECTED_DONE:I = 0x10

.field static final EVENT_CONNECTED_FAILURE:I = 0x12

.field static final EVENT_CONNECT_EXPIRED:I = 0x15

.field static final EVENT_DISCONNECTED_DONE:I = 0x11

.field static final EVENT_WIFI_CONNECTED:I = 0x13

.field static final EVENT_WIFI_DISCONNECTED:I = 0x14

.field private static final MAX_CONNECTION_GUARD_TIMER:I = 0x15f90

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final NETWORKT_TYPE:Ljava/lang/String; = "Wi-Fi"

.field private static final OK_AKA_RESPONSE:B = -0x25t

.field private static final PROPERTIES_DIR:Ljava/lang/String;

.field private static final RETRY_INTERVAL:I = 0x7530

.field private static final SYNC_FAIL_RESPONSE:B = -0x24t

.field private static final TAG:Ljava/lang/String; = "EpdgConnection"

.field private static final TELEPHONY_CONTACT:Ljava/lang/String; = "content://telephony/carriers"

.field private static final WO_DPD_SYSNAME:Ljava/lang/String; = "persist.net.wo.dpd_timer"


# instance fields
.field private mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

.field private mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApnType:I

.field private mApnTypeName:Ljava/lang/String;

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

.field private mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

.field private mDpdSeconds:I

.field private mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

.field private mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

.field private mEpdgPendingIntent:Landroid/app/PendingIntent;

.field private mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

.field private mItelEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOuterInterface:Ljava/lang/String;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProperties:Ljava/util/Properties;

.field private mReasonCode:I

.field private mRefCount:I

.field private final mRefCountLock:Ljava/lang/Object;

.field private mRetryCount:I

.field private mRetryingState:Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/epdg/EpdgConnection;->CONTENT_URI:Landroid/net/Uri;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/epdg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILcom/mediatek/epdg/EpdgConnector;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 5
    .param p1, "netType"    # I
    .param p2, "epdgConnector"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p3, "target"    # Landroid/os/Handler;
    .param p4, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCountLock:Ljava/lang/Object;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mSubId:I

    .line 108
    iput v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    .line 110
    iput v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 111
    iput v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    .line 112
    iput v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mDpdSeconds:I

    .line 976
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    .line 1014
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    .line 1030
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryingState:Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;

    .line 1082
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    .line 1130
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    .line 1163
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    .line 144
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    .line 147
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->setLogRecSize(I)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->setLogOnlyTransitions(Z)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryingState:Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 160
    iput p1, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    .line 161
    iput-object p4, p0, Lcom/mediatek/epdg/EpdgConnection;->mOuterInterface:Ljava/lang/String;

    .line 163
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x2a

    const-string v2, "Wi-Fi"

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 166
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 167
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    invoke-direct {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->makeNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 168
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 169
    iput-object p2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/epdg/EpdgConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/epdg/EpdgConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/epdg/EpdgConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->disconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/epdg/EpdgConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/epdg/EpdgConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDpdSeconds:I

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/epdg/EpdgConnection;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/epdg/EpdgConnection;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$402(Lcom/mediatek/epdg/EpdgConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/epdg/EpdgConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->prepareConfig()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/epdg/EpdgConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->connect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private canHandleType(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "types"    # [Ljava/lang/String;

    .prologue
    .line 378
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 379
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    const/4 v4, 0x1

    .line 384
    .end local v3    # "t":Ljava/lang/String;
    :goto_1
    return v4

    .line 378
    .restart local v3    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v3    # "t":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private connect()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 407
    const-string v0, ""

    .line 409
    .local v0, "connectCmd":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-boolean v5, v5, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    if-nez v5, :cond_1

    .line 410
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-static {v5, v3}, Lcom/mediatek/epdg/EpdgCommand;->getCommandByType(Lcom/mediatek/epdg/EpdgConfig;I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectCmd:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "i":I
    :goto_1
    const/4 v3, 0x6

    if-gt v1, v3, :cond_0

    .line 429
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v3, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendEpdgCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v3, v4

    .line 442
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 413
    :cond_1
    iget v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    if-ne v5, v4, :cond_2

    .line 414
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/mediatek/epdg/EpdgCommand;->getCommandByType(Lcom/mediatek/epdg/EpdgConfig;I)Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v3, "net.handover.flag"

    const-string v5, "true"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 420
    const-string v4, "Don\'t retry handover"

    invoke-virtual {p0, v4}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 431
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 432
    .local v2, "se":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 435
    const-wide/16 v6, 0x1388

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 436
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 446
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgCommand;->getCommandByType(Lcom/mediatek/epdg/EpdgConfig;I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "disconnectCmd":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendEpdgCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "se":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method private getApnName(Ljava/lang/String;)V
    .locals 11
    .param p1, "apnTypeName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 300
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "operator":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 303
    const-string v0, "No operator info"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/epdg/EpdgConnection;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 313
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    :cond_2
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, "types":[Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/mediatek/epdg/EpdgConnection;->canHandleType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 321
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const-string v1, "apn"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    .line 324
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    if-eq v9, v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iput v9, v0, Lcom/mediatek/epdg/EpdgConfig;->accessIpType:I

    .line 337
    .end local v8    # "types":[Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    if-ne v0, v9, :cond_8

    .line 342
    const-string v0, "No APN info in database; Use default setting: ims"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const-string v1, "ims"

    iput-object v1, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iput v10, v0, Lcom/mediatek/epdg/EpdgConfig;->accessIpType:I

    goto/16 :goto_0

    .line 328
    .restart local v8    # "types":[Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const-string v1, "protocol"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/epdg/EpdgConnection;->parseIpProtocol(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mediatek/epdg/EpdgConfig;->accessIpType:I

    goto :goto_1

    .line 333
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 345
    .end local v8    # "types":[Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    :cond_9
    const-string v0, "No APN info in database; Use default setting: tmus"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const-string v1, "tmus"

    iput-object v1, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iput v10, v0, Lcom/mediatek/epdg/EpdgConfig;->accessIpType:I

    goto/16 :goto_0
.end method

.method private getAutoEpdgServer()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 627
    const/4 v3, 0x0

    .line 629
    .local v3, "plmn":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 630
    :cond_0
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mSubId:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 633
    :cond_1
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "mnc":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    :cond_2
    const-string v4, "epdg.epc.mnc%s.mcc%s.pub.3gppnetwork.org"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "addr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EPDG Server:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 642
    return-object v0
.end method

.method private getEpdgConfig()Lcom/mediatek/epdg/EpdgConfig;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 173
    new-instance v0, Lcom/mediatek/epdg/EpdgConfig;

    invoke-direct {v0}, Lcom/mediatek/epdg/EpdgConfig;-><init>()V

    .line 175
    .local v0, "config":Lcom/mediatek/epdg/EpdgConfig;
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "server"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    .line 178
    const-string v2, "*"

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "auth"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    .line 183
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "sim_index"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    .line 185
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "mobility_protocol"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "cert_path"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "ikea_algo"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "esp_algo"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EPDG config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 202
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 189
    iput v5, v0, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    .line 190
    iput v5, v0, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    .line 191
    iput v5, v0, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    goto :goto_0
.end method

.method private getIntFromByte(B)I
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "ret":I
    move v0, p1

    .line 824
    if-gez p1, :cond_0

    .line 825
    add-int/lit16 v0, p1, 0x100

    .line 828
    :cond_0
    return v0
.end method

.method private getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 257
    packed-switch p1, :pswitch_data_0

    .line 267
    const-string v0, ""

    :goto_0
    return-object v0

    .line 259
    :pswitch_0
    const-string v0, "FAST"

    goto :goto_0

    .line 261
    :pswitch_1
    const-string v0, "IMS"

    goto :goto_0

    .line 263
    :pswitch_2
    const-string v0, "NET"

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isMatchApn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private makeNetworkCapabilities(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # I

    .prologue
    .line 832
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 833
    .local v0, "result":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 835
    packed-switch p1, :pswitch_data_0

    .line 848
    const-string v1, "EpdgConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reserved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_0
    :pswitch_0
    return-object v0

    .line 837
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 840
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 841
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 842
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 843
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseIpProtocol(Ljava/lang/String;)I
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 366
    const/4 v0, 0x1

    .line 368
    .local v0, "protocolId":I
    const-string v1, "IPV4V6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    const/4 v0, 0x3

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    const-string v1, "IPV6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 355
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 357
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 362
    :goto_0
    return-object v0

    .line 359
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private prepareConfig()Z
    .locals 26

    .prologue
    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/epdg/EpdgConnection;->updateDefaultSubId()V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mSubId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v20

    .line 468
    .local v20, "operator":Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_4

    .line 469
    :cond_0
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mSubId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/telephony/SubscriptionManager;->getSimStateForSubscriber(I)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 471
    const-string v23, "No sim is inserted"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 472
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 473
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v24, "No SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 474
    const/16 v23, 0x0

    .line 622
    :goto_0
    return v23

    .line 476
    :cond_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sim is not ready: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    .line 478
    const-string v23, "Failure to establish ePDG due to SIM is not ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 479
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 480
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v24, "SIM Not Ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 481
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    .line 482
    const/16 v23, 0x0

    goto :goto_0

    .line 483
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 484
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v24, "SIM Not Ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 486
    :cond_3
    const/16 v23, 0x1

    const-wide/16 v24, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->sendMessageDelayed(IJ)V

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    .line 488
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 491
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConfig;->mcc:Ljava/lang/String;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConfig;->mnc:Ljava/lang/String;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->getApnName(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mSubId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConfig;->imsi:Ljava/lang/String;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_5

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/epdg/EpdgConnection;->getAutoEpdgServer()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    .line 502
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    .line 503
    const-string v23, "connectivity"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    .line 507
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 510
    .local v15, "linkProperty":Landroid/net/LinkProperties;
    if-nez v15, :cond_7

    .line 511
    const-string v23, "The link property is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 512
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 515
    :cond_7
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkAddress;

    .line 516
    .local v13, "l":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConfig;->wifiIpv4Address:Ljava/net/InetAddress;

    .line 522
    .end local v13    # "l":Landroid/net/LinkAddress;
    :cond_9
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkAddress;

    .line 523
    .restart local v13    # "l":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v23

    if-nez v23, :cond_a

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConfig;->wifiIpv6Address:Ljava/net/InetAddress;

    .line 530
    .end local v13    # "l":Landroid/net/LinkAddress;
    :cond_b
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    move/from16 v23, v0

    if-nez v23, :cond_16

    .line 531
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    const/16 v19, 0xb

    .line 534
    .local v19, "nwType":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    .line 536
    .local v17, "nwInfo":Landroid/net/NetworkInfo;
    if-nez v17, :cond_e

    .line 537
    const-string v23, "The network info is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 538
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 531
    .end local v17    # "nwInfo":Landroid/net/NetworkInfo;
    .end local v19    # "nwType":I
    :cond_d
    const/16 v19, 0x2

    goto :goto_1

    .line 541
    .restart local v17    # "nwInfo":Landroid/net/NetworkInfo;
    .restart local v19    # "nwType":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    .line 542
    if-eqz v17, :cond_16

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    if-eqz v23, :cond_16

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v16

    .line 546
    .local v16, "mobileLinkProperty":Landroid/net/LinkProperties;
    if-nez v16, :cond_f

    .line 547
    const-string v23, "The mobile link property is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 548
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 551
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    .line 553
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkAddress;

    .line 554
    .restart local v13    # "l":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv4Address:Ljava/net/InetAddress;

    .line 560
    .end local v13    # "l":Landroid/net/LinkAddress;
    :cond_11
    const/4 v10, 0x0

    .line 561
    .local v10, "isLinkLocal":Z
    const/4 v14, 0x0

    .line 562
    .local v14, "linkLocalAddress":Ljava/net/InetAddress;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkAddress;

    .line 563
    .restart local v13    # "l":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 566
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v23

    if-nez v23, :cond_17

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv6Address:Ljava/net/InetAddress;

    .line 575
    .end local v13    # "l":Landroid/net/LinkAddress;
    :cond_13
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 576
    .local v9, "interfaceName":Ljava/lang/String;
    if-eqz v10, :cond_16

    if-eqz v9, :cond_16

    .line 577
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Check interface name"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    const/16 v18, 0x0

    .line 580
    .local v18, "nwInterface":Ljava/net/NetworkInterface;
    :try_start_1
    invoke-static {v9}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 585
    :goto_3
    if-eqz v18, :cond_16

    .line 586
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    .line 588
    .local v8, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 589
    .local v7, "inetAddress":Ljava/net/InetAddress;
    instance-of v0, v7, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_14

    invoke-virtual {v7}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v23

    if-nez v23, :cond_14

    .line 591
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "found:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 593
    .local v4, "b1":[B
    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 594
    .local v5, "b2":[B
    const/4 v11, 0x1

    .line 595
    .local v11, "isMatch":Z
    const/16 v12, 0x8

    .local v12, "j":I
    :goto_4
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_15

    .line 596
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "data:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-byte v24, v4, v12

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-byte v24, v5, v12

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 597
    aget-byte v23, v4, v12

    aget-byte v24, v5, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 598
    const/4 v11, 0x0

    .line 602
    :cond_15
    if-eqz v11, :cond_14

    .line 603
    const-string v23, "found done"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v7, v0, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv6Address:Ljava/net/InetAddress;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 617
    .end local v4    # "b1":[B
    .end local v5    # "b2":[B
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "inetAddress":Ljava/net/InetAddress;
    .end local v8    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v9    # "interfaceName":Ljava/lang/String;
    .end local v10    # "isLinkLocal":Z
    .end local v11    # "isMatch":Z
    .end local v12    # "j":I
    .end local v14    # "linkLocalAddress":Ljava/net/InetAddress;
    .end local v15    # "linkProperty":Landroid/net/LinkProperties;
    .end local v16    # "mobileLinkProperty":Landroid/net/LinkProperties;
    .end local v17    # "nwInfo":Landroid/net/NetworkInfo;
    .end local v18    # "nwInterface":Ljava/net/NetworkInterface;
    .end local v19    # "nwType":I
    :cond_16
    :goto_5
    const-string v23, "persist.net.wo.dpd_timer"

    const/16 v24, 0x78

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/epdg/EpdgConnection;->mDpdSeconds:I

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 622
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 569
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v10    # "isLinkLocal":Z
    .restart local v13    # "l":Landroid/net/LinkAddress;
    .restart local v14    # "linkLocalAddress":Ljava/net/InetAddress;
    .restart local v15    # "linkProperty":Landroid/net/LinkProperties;
    .restart local v16    # "mobileLinkProperty":Landroid/net/LinkProperties;
    .restart local v17    # "nwInfo":Landroid/net/NetworkInfo;
    .restart local v19    # "nwType":I
    :cond_17
    :try_start_3
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    .line 570
    const/4 v10, 0x1

    .line 572
    goto/16 :goto_2

    .line 582
    .end local v13    # "l":Landroid/net/LinkAddress;
    .restart local v9    # "interfaceName":Ljava/lang/String;
    .restart local v18    # "nwInterface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v22

    .line 583
    .local v22, "se":Ljava/net/SocketException;
    invoke-virtual/range {v22 .. v22}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 613
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "interfaceName":Ljava/lang/String;
    .end local v10    # "isLinkLocal":Z
    .end local v14    # "linkLocalAddress":Ljava/net/InetAddress;
    .end local v15    # "linkProperty":Landroid/net/LinkProperties;
    .end local v16    # "mobileLinkProperty":Landroid/net/LinkProperties;
    .end local v17    # "nwInfo":Landroid/net/NetworkInfo;
    .end local v18    # "nwInterface":Ljava/net/NetworkInterface;
    .end local v19    # "nwType":I
    .end local v22    # "se":Ljava/net/SocketException;
    :catch_1
    move-exception v21

    .line 614
    .local v21, "re":Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 595
    .end local v21    # "re":Landroid/os/RemoteException;
    .restart local v4    # "b1":[B
    .restart local v5    # "b2":[B
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "inetAddress":Ljava/net/InetAddress;
    .restart local v8    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v9    # "interfaceName":Ljava/lang/String;
    .restart local v10    # "isLinkLocal":Z
    .restart local v11    # "isMatch":Z
    .restart local v12    # "j":I
    .restart local v14    # "linkLocalAddress":Ljava/net/InetAddress;
    .restart local v15    # "linkProperty":Landroid/net/LinkProperties;
    .restart local v16    # "mobileLinkProperty":Landroid/net/LinkProperties;
    .restart local v17    # "nwInfo":Landroid/net/NetworkInfo;
    .restart local v18    # "nwInterface":Ljava/net/NetworkInterface;
    .restart local v19    # "nwType":I
    :cond_18
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4
.end method

.method private updateDefaultSubId()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 251
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 252
    aget v1, v0, v2

    iput v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mSubId:I

    .line 254
    :cond_0
    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 10
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x50

    const/4 v9, 0x0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, v9}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mCsHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    const-string v4, "EpdgNetworkAgent"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;-><init>(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 682
    :cond_1
    :goto_0
    return-void

    .line 662
    :cond_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 664
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 665
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_5

    .line 666
    const-string v0, "send disconnected"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez v0, :cond_4

    .line 668
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mCsHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    const-string v4, "EpdgNetworkAgent"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;-><init>(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 672
    :cond_4
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 673
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 674
    iput-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    goto :goto_0

    .line 675
    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    .line 676
    const-string v0, "failure"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 678
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 679
    iput-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    goto :goto_0
.end method


# virtual methods
.method decRefCount()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCountLock(-)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/mediatek/epdg/EpdgConnection;->teardown()Z

    .line 296
    :cond_0
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1173
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgConfig:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reference counter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1180
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason Code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1192
    return-void
.end method

.method getApnType()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    return v0
.end method

.method getConfiguration()Lcom/mediatek/epdg/EpdgConfig;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    return-object v0
.end method

.method getReasonCode()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    return v0
.end method

.method incRefCount()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v2

    .line 277
    :try_start_0
    const-string v1, "epdg.force.run"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 279
    .local v0, "forRun":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRefCountLock(+):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 281
    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    if-nez v1, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/mediatek/epdg/EpdgConnection;->reconnect()Z

    .line 286
    :cond_0
    :goto_0
    monitor-exit v2

    .line 287
    return-void

    .line 283
    :cond_1
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/mediatek/epdg/EpdgConnection;->reconnect()Z

    goto :goto_0

    .line 286
    .end local v0    # "forRun":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyWifiConnected()V
    .locals 2

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare to connect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 893
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    if-eqz v0, :cond_0

    .line 894
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 896
    :cond_0
    return-void
.end method

.method notifyWifiDisconnected()V
    .locals 2

    .prologue
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare to disconnect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 904
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    if-eqz v0, :cond_0

    .line 905
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 907
    :cond_0
    return-void
.end method

.method public onEpdgConnectFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->isMatchApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 739
    iput p2, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 740
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 742
    :cond_0
    return-void
.end method

.method public onEpdgConnected(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "nwInterface"    # Ljava/lang/String;
    .param p4, "tunnelIpv4"    # Ljava/lang/String;
    .param p5, "tunnelIpv6"    # Ljava/lang/String;
    .param p6, "pcscfIpv4Addr"    # Ljava/lang/String;
    .param p7, "pcscfIpv6Addr"    # Ljava/lang/String;
    .param p8, "dnsIpv4Addr"    # Ljava/lang/String;
    .param p9, "dnsIpv6Addr"    # Ljava/lang/String;

    .prologue
    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEpdgConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v3, v3, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 690
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->isMatchApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 691
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 692
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-virtual {v1, p3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 696
    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 697
    .local v0, "ia":Ljava/net/InetAddress;
    new-instance v2, Landroid/net/LinkAddress;

    const/16 v3, 0x20

    invoke-direct {v2, v0, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 698
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 702
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 704
    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 705
    .restart local v0    # "ia":Ljava/net/InetAddress;
    new-instance v2, Landroid/net/LinkAddress;

    const/16 v3, 0x80

    invoke-direct {v2, v0, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 706
    new-instance v2, Landroid/net/RouteInfo;

    sget-object v3, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v2, v3}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 709
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 710
    invoke-static {p8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 713
    :cond_2
    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 714
    invoke-static {p9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 717
    :cond_3
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 718
    invoke-static {p6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    .line 721
    :cond_4
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 722
    invoke-static {p7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    .line 725
    :cond_5
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 726
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 727
    iput-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 730
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLinkProperties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 731
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 733
    .end local v1    # "newLp":Landroid/net/LinkProperties;
    :cond_7
    return-void
.end method

.method public onEpdgDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->isMatchApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 749
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 751
    :cond_0
    return-void
.end method

.method public onEpdgSimAuthenticate(Ljava/lang/String;[B[B)V
    .locals 11
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B

    .prologue
    const/4 v10, 0x2

    .line 756
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->isMatchApn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 757
    const-string v0, ""

    .line 758
    .local v0, "cmdStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 761
    .local v2, "res":[B
    :try_start_0
    const-string v7, "phoneEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mItelEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    .line 764
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mItelEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    iget-object v8, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v8, v8, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x3

    invoke-interface {v7, v8, v9, p2, p3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->simAkaAuthentication(II[B[B)[B

    move-result-object v4

    .line 767
    .local v4, "response":[B
    if-nez v4, :cond_1

    .line 768
    const-string v7, "EpdgConnection"

    const-string v8, "Can\'t get SIM Response"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v7, "EAUTH:%d,%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x98

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x62

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 770
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v7, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendSimCommand(Ljava/lang/String;)V

    .line 814
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "res":[B
    .end local v4    # "response":[B
    :cond_0
    :goto_0
    return-void

    .line 774
    .restart local v0    # "cmdStr":Ljava/lang/String;
    .restart local v2    # "res":[B
    .restart local v4    # "response":[B
    :cond_1
    const/16 v5, 0x90

    .line 775
    .local v5, "sw1":I
    const/4 v6, 0x0

    .line 776
    .local v6, "sw2":I
    const-string v7, "EpdgConnection"

    const-string v8, "Process auth"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    const/16 v8, -0x25

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    aget-byte v7, v4, v7

    const/16 v8, -0x24

    if-ne v7, v8, :cond_4

    .line 779
    :cond_2
    array-length v7, v4

    add-int/lit8 v3, v7, -0x2

    .line 780
    .local v3, "resLen":I
    new-array v2, v3, [B

    .line 781
    const/4 v7, 0x0

    invoke-static {v4, v7, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 783
    array-length v7, v4

    add-int/lit8 v8, v3, 0x2

    if-lt v7, v8, :cond_3

    .line 784
    aget-byte v7, v4, v3

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v5

    .line 785
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v4, v7

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v6

    .line 788
    :cond_3
    const-string v7, "EAUTH:%d,%d,\"%s\""

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x90

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 790
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v7, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendSimCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    .end local v3    # "resLen":I
    .end local v4    # "response":[B
    .end local v5    # "sw1":I
    .end local v6    # "sw2":I
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 792
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "response":[B
    .restart local v5    # "sw1":I
    .restart local v6    # "sw2":I
    :cond_4
    :try_start_1
    array-length v7, v4

    if-ne v7, v10, :cond_5

    .line 793
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v5

    .line 794
    const/4 v7, 0x1

    aget-byte v7, v4, v7

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v6

    .line 795
    const-string v7, "EAUTH:%d,%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 796
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v7, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendSimCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 798
    :cond_5
    array-length v3, v4

    .line 799
    .restart local v3    # "resLen":I
    if-le v3, v10, :cond_0

    .line 800
    add-int/lit8 v7, v3, -0x2

    aget-byte v7, v4, v7

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v5

    .line 801
    add-int/lit8 v7, v3, -0x1

    aget-byte v7, v4, v7

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v6

    .line 802
    new-array v2, v3, [B

    .line 803
    const/4 v7, 0x0

    add-int/lit8 v8, v3, -0x2

    invoke-static {v4, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 804
    const-string v7, "EAUTH:%d,%d,\"%s\""

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 806
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v7, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendSimCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method reconnect()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 401
    const-string v0, "reconnect"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v1}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 403
    return v1
.end method

.method setConfiguration(Lcom/mediatek/epdg/EpdgConfig;)V
    .locals 7
    .param p1, "newConfig"    # Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 910
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v4, p1, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    .line 911
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v4, p1, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    iput v4, v3, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    .line 912
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v4, p1, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    iput v4, v3, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    .line 913
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v4, p1, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    iput v4, v3, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    .line 914
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v4, p1, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    .line 915
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v4, p1, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    .line 916
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v4, p1, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    .line 918
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "server"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v5, v5, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 919
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "auth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v6, v6, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 920
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "sim_index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v6, v6, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 921
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "mobility_protocol"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v6, v6, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 923
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "cert_path"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v5, v5, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 924
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "ikea_algo"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v5, v5, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 925
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "esp_algo"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v5, v5, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 928
    :try_start_0
    const-string v3, "commit EPDG config"

    invoke-virtual {p0, v3}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 929
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 931
    .local v2, "stream":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setEpdgDpdAlarm()V
    .locals 6

    .prologue
    .line 881
    const/4 v0, 0x1

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    if-ne v0, v1, :cond_0

    .line 882
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mDpdSeconds:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 885
    :cond_0
    return-void
.end method

.method startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 212
    iput-object p2, p0, Lcom/mediatek/epdg/EpdgConnection;->mCsHandler:Landroid/os/Handler;

    .line 213
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    .line 215
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 218
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.mediatek.epdg.action.dpd"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgPendingIntent:Landroid/app/PendingIntent;

    .line 221
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mAlarmManager:Landroid/app/AlarmManager;

    .line 224
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    .line 226
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    .local v4, "stream":Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 229
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->getEpdgConfig()Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    .line 241
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 242
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    iget v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    invoke-virtual {v5, v6, p0}, Lcom/mediatek/epdg/EpdgConnector;->registerEpdgCallback(ILcom/mediatek/epdg/EpdgCallback;)V

    .line 245
    invoke-virtual {p0}, Lcom/mediatek/epdg/EpdgConnection;->start()V

    .line 246
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "EpdgConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not open configuration file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 234
    const-string v5, "EpdgConnection"

    const-string v6, "Make epdg directory"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method teardown()Z
    .locals 1

    .prologue
    .line 392
    const-string v0, "teardown"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 394
    const/4 v0, 0x1

    return v0
.end method
