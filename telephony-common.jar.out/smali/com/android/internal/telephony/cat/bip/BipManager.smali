.class public Lcom/android/internal/telephony/cat/bip/BipManager;
.super Ljava/lang/Object;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;,
        Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;,
        Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;
    }
.end annotation


# static fields
.field private static final BIP_NAME:Ljava/lang/String; = "__M-BIP__"

.field private static final CONN_DELAY_TIMEOUT:I = 0x1388

.field private static final CONN_MGR_TIMEOUT:I = 0x7530

.field public static final MSG_ID_BIP_CONN_DELAY_TIMEOUT:I = 0xb

.field public static final MSG_ID_BIP_CONN_MGR_TIMEOUT:I = 0xa

.field public static final MSG_ID_BIP_DISCONNECT_TIMEOUT:I = 0xc

.field private static final PROPERTY_OVERRIDE_APN:Ljava/lang/String; = "ril.pdn.overrideApn"

.field private static final PROPERTY_PDN_REUSE:Ljava/lang/String; = "ril.pdn.reuse"

.field private static mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

.field private static mSimCount:I


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

.field private mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

.field private mBipMgrHandler:Landroid/os/Handler;

.field mBufferSize:I

.field private mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

.field private final mCloseLock:Ljava/lang/Object;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field private mHandler:Landroid/os/Handler;

.field private mIsApnInserting:Z

.field private mIsCloseInProgress:Z

.field private mIsNetworkAvailableReceived:Z

.field private mIsOpenInProgress:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field mPassword:Ljava/lang/String;

.field private mSlotId:I

.field mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 120
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 100
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 104
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mAutoReconnected:Z

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCloseLock:Ljava/lang/Object;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    .line 112
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->NETWORK_TYPE:I

    .line 114
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 115
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    .line 116
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 118
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    .line 121
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 130
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 131
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 141
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 143
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$1;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    .line 1302
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$3;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    const-string v1, "[BIP]"

    const-string v2, "Construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v1, "[BIP]"

    const-string v2, "Fail to construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    .line 180
    iput p3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    .line 181
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Construct instance sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 183
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteApnParams()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->disconnect()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->connect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCloseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    return v0
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;
    .param p2, "exState"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v3, 0x0

    .line 999
    if-nez p1, :cond_0

    move v2, v3

    .line 1012
    :goto_0
    return v2

    .line 1003
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1004
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 1005
    .local v0, "state":Landroid/net/NetworkInfo$State;
    const-string v4, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v2, "MOBILE"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 1009
    const/4 v2, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    const-string v2, "WIFI"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1012
    goto :goto_0
.end method

.method private connect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "ret":I
    const-string v2, "[BIP]"

    const-string v3, "establishConnect"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->requestRouteToHost()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    const-string v2, "[BIP]"

    const-string v3, "requestNetwork: Fail - requestRouteToHost"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x2

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 260
    const-string v2, "[BIP]"

    const-string v3, "requestNetwork: establish data channel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v1

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "response":Landroid/os/Message;
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 265
    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 266
    :cond_1
    const-string v2, "[BIP]"

    const-string v3, "1 channel is activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    .line 272
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 273
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x28

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    :cond_2
    return-void

    .line 269
    :cond_3
    const-string v2, "[BIP]"

    const-string v3, "2 channel is un-activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    goto :goto_0
.end method

.method private deleteApnParams()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1102
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cat/bip/BipManager;->getUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 1103
    .local v4, "uri":Landroid/net/Uri;
    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1104
    .local v3, "subId":[I
    const/4 v0, 0x0

    .line 1106
    .local v0, "numeric":Ljava/lang/String;
    const-string v5, "[BIP]"

    const-string v6, "BM-deleteApnParams: enter. "

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    aget v5, v3, v7

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1109
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1112
    :cond_0
    if-nez v4, :cond_1

    .line 1113
    const-string v5, "[BIP]"

    const-string v6, "BM-deleteApnParams: Invalid uri"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :goto_0
    return-void

    .line 1116
    :cond_1
    const-string v2, "name = \'__M-BIP__\'"

    .line 1117
    .local v2, "selection":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1118
    .local v1, "rows":I
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-deleteApnParams:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 280
    const/4 v7, 0x0

    .line 281
    .local v7, "ret":I
    const/4 v6, 0x0

    .line 283
    .local v6, "response":Landroid/os/Message;
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect: opening ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteApnParams()V

    .line 287
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    if-ne v12, v8, :cond_1

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 289
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 290
    .local v2, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const/4 v7, 0x2

    .line 292
    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 294
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 299
    :goto_0
    iput v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 300
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 301
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 302
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 303
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x28

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8, v9, v7, v11, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 304
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :goto_1
    return-void

    .line 296
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v10, v10, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    goto :goto_0

    .line 306
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_1
    const/4 v3, 0x0

    .line 307
    .local v3, "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v1, "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 309
    .local v0, "additionalInfo":[B
    const-string v8, "[BIP]"

    const-string v9, "this is a drop link"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iput v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 311
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 312
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 314
    new-instance v5, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v8, 0xa

    invoke-direct {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 316
    .local v5, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v3, 0x1

    :goto_2
    const/4 v8, 0x7

    if-gt v3, v8, :cond_5

    .line 317
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v8

    if-ne v12, v8, :cond_3

    .line 319
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 320
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "channel protocolType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-eq v12, v8, :cond_2

    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v13, v8, :cond_3

    .line 323
    :cond_2
    const-string v8, "ro.mtk_gemini_support"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v12, :cond_4

    .line 326
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 327
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    .line 333
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 334
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 335
    const/16 v8, -0x48

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    or-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 330
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 331
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 340
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_0
    move-exception v4

    .line 341
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string v8, "[BIP]"

    const-string v9, "NPE, channel null."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 346
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [B

    .line 348
    const/4 v3, 0x0

    :goto_5
    array-length v8, v0

    if-ge v3, v8, :cond_6

    .line 349
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v0, v3

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 351
    :cond_6
    const/16 v8, 0x82

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 352
    const/16 v8, 0x81

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 353
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 354
    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 355
    const-string v8, "[BIP]"

    const-string v9, "onEventDownload: for channel status"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v8, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 358
    :cond_7
    const-string v8, "[BIP]"

    const-string v9, "onEventDownload: No client channels are opened."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private establishLink()I
    .locals 12

    .prologue
    .line 1016
    const/4 v11, 0x0

    .line 1017
    .local v11, "ret":I
    const/4 v9, 0x0

    .line 1019
    .local v9, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1020
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a TCPServer link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v6, Lcom/android/internal/telephony/cat/CatService;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;-><init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1030
    if-eqz v11, :cond_0

    const/4 v1, 0x3

    if-ne v11, v1, :cond_2

    .line 1031
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1032
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    .line 1087
    :cond_1
    :goto_0
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-establishLink: ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v11

    .line 1088
    :goto_1
    return v1

    .line 1024
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_0
    move-exception v10

    .line 1025
    .local v10, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new TCP server channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1027
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1034
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1035
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 1037
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1038
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a TCP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/TcpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1051
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1052
    const/16 v1, 0xa

    if-eq v11, v1, :cond_1

    .line 1053
    if-eqz v11, :cond_4

    const/4 v1, 0x3

    if-ne v11, v1, :cond_6

    .line 1054
    :cond_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1055
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    goto :goto_0

    .line 1043
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_1
    move-exception v10

    .line 1044
    .restart local v10    # "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new TCP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1046
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-nez v1, :cond_5

    .line 1047
    const/16 v1, 0x9

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1049
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_5
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1057
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1058
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 1061
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1063
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a UDP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/cat/bip/UdpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1073
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1074
    if-eqz v11, :cond_8

    const/4 v1, 0x3

    if-ne v11, v1, :cond_9

    .line 1075
    :cond_8
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1076
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    goto/16 :goto_0

    .line 1068
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_2
    move-exception v10

    .line 1069
    .restart local v10    # "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1071
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto/16 :goto_1

    .line 1078
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1079
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 1082
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_a
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: unsupported channel type"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const/4 v11, 0x4

    .line 1084
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto/16 :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 243
    const/4 v0, -0x1

    .line 245
    .local v0, "currentDataConnectionSimId":I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    const/4 v3, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 247
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Data Setting value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cat/bip/BipManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    const/4 v1, 0x0

    .line 205
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance sim : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v2, :cond_0

    .line 207
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    .line 208
    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    new-array v2, v2, [Lcom/android/internal/telephony/cat/bip/BipManager;

    sput-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ge v0, v2, :cond_0

    .line 210
    sget-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aput-object v1, v2, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    if-ltz p2, :cond_1

    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-le p2, v2, :cond_2

    .line 214
    :cond_1
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance invalid sim : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    return-object v1

    .line 217
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, p2

    if-nez v1, :cond_3

    .line 218
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    new-instance v2, Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    aput-object v2, v1, p2

    .line 220
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, p2

    goto :goto_1
.end method

.method private getUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "slodId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1092
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1094
    .local v0, "subId":[I
    aget v1, v0, v3

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1098
    :goto_0
    return-object v1

    .line 1097
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "BM-getUri: invalid subId."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 788
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 789
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/android/internal/telephony/cat/bip/BipManager$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$2;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 842
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 843
    .local v1, "subId":[I
    aget v2, v1, v3

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 856
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v4, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 859
    const-string v2, "[BIP]"

    const-string v3, "Start request network timer."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 861
    return-void

    .line 850
    :cond_0
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    goto :goto_0
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 877
    if-eqz p1, :cond_0

    .line 878
    const-string v1, "[BIP]"

    const-string v2, "releaseRequest"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 880
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 884
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 882
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "releaseRequest: networkCallback is null."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 981
    const-string v3, "[BIP]"

    const-string v4, "requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v1, 0x0

    .line 983
    .local v1, "addressBytes":[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v3, :cond_0

    .line 984
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 989
    const/4 v0, 0x0

    .line 990
    .local v0, "addr":I
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v3, v2

    .line 995
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .end local v0    # "addr":I
    :goto_0
    return v2

    .line 986
    :cond_0
    const-string v3, "[BIP]"

    const-string v4, "mDataDestinationAddress is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 867
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 868
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    .line 869
    return-void
.end method

.method private sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 960
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 961
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 962
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 963
    return-void
.end method

.method private sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 967
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 968
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 969
    return-void
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1121
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: enter"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    if-nez p1, :cond_0

    .line 1123
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :goto_0
    return-void

    .line 1127
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->getUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 1128
    .local v2, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1129
    .local v12, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1130
    .local v9, "mcc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1131
    .local v10, "mnc":Ljava/lang/String;
    const-string v7, "supl"

    .line 1132
    .local v7, "apnType":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 1138
    .local v13, "subId":[I
    const/4 v1, 0x0

    aget v1, v13, v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v12

    .line 1141
    :cond_1
    if-nez v2, :cond_2

    .line 1142
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    .line 1146
    const/4 v8, 0x0

    .line 1147
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v12, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1148
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1149
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM-setApnParams: apn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mcc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mnc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "numeric"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "sub_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1154
    .local v4, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1157
    if-eqz v8, :cond_3

    .line 1158
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1159
    .local v14, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v3, "__M-BIP__"

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const-string v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const-string v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string v1, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v1, "sub_id"

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1169
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 1172
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: insert one record"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1174
    .local v11, "newRow":Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 1175
    const-string v1, "[BIP]"

    const-string v3, "insert a new record into db"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    .line 1184
    .end local v11    # "newRow":Landroid/net/Uri;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1188
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: exit"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1178
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "newRow":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string v1, "[BIP]"

    const-string v3, "Fail to insert apn params into db"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1181
    .end local v11    # "newRow":Landroid/net/Uri;
    :cond_5
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: do not update one record"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateCurrentChannelStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->updateChannelStatus(II)V

    .line 974
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput p1, v1, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public acquireNetwork()V
    .locals 6

    .prologue
    .line 364
    const/4 v1, 0x2

    .line 365
    .local v1, "result":I
    const/4 v2, 0x0

    .line 367
    .local v2, "ret":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 368
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_1

    .line 370
    const-string v3, "[BIP]"

    const-string v4, "acquireNetwork: already available"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v0

    .line 372
    .local v0, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->connect()V

    .line 380
    .end local v0    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestNetwork: slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->newRequest()V

    goto :goto_0
.end method

.method public closeChannel(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 660
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new closeChannel, mCloseCid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 663
    return-void
.end method

.method public closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 12
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x7

    .line 583
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x0

    .line 586
    .local v3, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 588
    .local v1, "cId":I
    iput v9, p2, Landroid/os/Message;->arg1:I

    .line 589
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 590
    if-ltz v1, :cond_0

    if-ge v8, v1, :cond_1

    .line 591
    :cond_0
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel id is wrong"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iput v8, p2, Landroid/os/Message;->arg1:I

    .line 646
    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 647
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    if-nez v5, :cond_a

    .line 648
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 653
    :goto_1
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-void

    .line 595
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 596
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v2

    .line 642
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iput v8, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 597
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-ne v10, v5, :cond_3

    .line 598
    const/16 v5, 0x8

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 600
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v3

    .line 601
    if-nez v3, :cond_4

    .line 602
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel has already been closed"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 606
    :cond_4
    const/4 v4, 0x0

    .line 607
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
    iget v5, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_7

    .line 608
    instance-of v5, v3, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    if-eqz v5, :cond_5

    .line 609
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object v4, v0

    .line 610
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 627
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteApnParams()V

    .line 628
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    move-result v5

    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 629
    iget v5, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_9

    .line 630
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 631
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 637
    :cond_6
    :goto_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

    .line 638
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 613
    :cond_7
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: stop data connection"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    .line 615
    const-string v5, "ro.mtk_gemini_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_8

    .line 616
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopUsingNetworkFeature getDataConnectionFromSetting  =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 620
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    goto :goto_2

    .line 623
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 624
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    goto :goto_2

    .line 634
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 651
    .end local v4    # "tcpSerCh":Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_1
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "i":I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispose slotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    aput-object v4, v1, v2

    .line 232
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 233
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 238
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ne v0, v1, :cond_2

    .line 239
    sput-object v4, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 241
    :cond_2
    return-void

    .line 232
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBipChannelManager()Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 1192
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 773
    const-string v1, "[BIP]"

    const-string v2, "new getChannelStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 776
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 777
    return-void
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 937
    const/4 v3, 0x0

    .line 938
    .local v3, "ret":I
    const/4 v0, 0x1

    .line 939
    .local v0, "cId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v1, "csList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/bip/ChannelStatus;>;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    const/4 v4, 0x7

    if-gt v0, v4, :cond_1

    .line 943
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 944
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChannelStatus: cId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    :catch_0
    move-exception v2

    .line 950
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string v4, "[BIP]"

    const-string v5, "getChannelStatus: NE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 953
    .end local v2    # "ne":Ljava/lang/NullPointerException;
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 954
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 955
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 956
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 957
    return-void
.end method

.method public getFreeChannelId()I
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method public openChannel(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 780
    const-string v1, "[BIP]"

    const-string v2, "new openChannel"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 782
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 783
    return-void
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 12
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 383
    const/4 v2, 0x2

    .line 384
    .local v2, "result":I
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: enter"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, "ret":I
    const/4 v0, 0x0

    .line 388
    .local v0, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: init channel status object"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 392
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->acquireChannelId(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    .line 393
    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    if-nez v5, :cond_0

    .line 394
    const-string v5, "[BIP]"

    const-string v6, "BM-openChannel: acquire channel id = 0"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iput v11, p2, Landroid/os/Message;->arg1:I

    .line 396
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 398
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-direct {v5, v8, v6, v6}, Lcom/android/internal/telephony/cat/bip/ChannelStatus;-><init>(III)V

    iput-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 402
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 404
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 405
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v5, :cond_3

    .line 406
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: bearer type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    .line 412
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: buffer size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 415
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v5, :cond_4

    .line 416
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: local address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_2
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 422
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    if-eqz v5, :cond_5

    .line 423
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_3
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 430
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v5, :cond_6

    .line 431
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: dest address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_4
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    .line 437
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 438
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: apn "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_5
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    .line 444
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: login "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    .line 446
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: password "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_8

    move v5, v6

    :goto_6
    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    .line 451
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: mLinkMode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9

    move v5, v6

    :goto_7
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mAutoReconnected:Z

    .line 455
    const-string v5, "ril.pdn.reuse"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "isPdnReuse":Ljava/lang/String;
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: isPdnReuse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v5, :cond_c

    .line 459
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-ne v5, v10, :cond_a

    .line 461
    const-string v5, "ril.pdn.reuse"

    const-string v8, "2"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_1
    :goto_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v5, "gsm.stk.bip"

    const-string v8, "1"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v5, "[BIP]"

    const-string v8, "MAXCHANNELID :7"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-ne v10, v5, :cond_e

    .line 500
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v3

    .line 502
    if-eqz v3, :cond_2

    if-ne v3, v10, :cond_d

    .line 503
    :cond_2
    const-string v5, "[BIP]"

    const-string v6, "BM-openChannel: channel is activated"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v0

    .line 505
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget-object v6, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v6, v6, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 511
    :goto_9
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 512
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 513
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 579
    :goto_a
    const-string v5, "[BIP]"

    const-string v6, "BM-openChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .end local v1    # "isPdnReuse":Ljava/lang/String;
    :cond_3
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: bearer type is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    :cond_4
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: local address is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 426
    :cond_5
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: transport protocol is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 433
    :cond_6
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: dest address is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 440
    :cond_7
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: apn is null."

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    move v5, v7

    .line 448
    goto/16 :goto_6

    :cond_9
    move v5, v7

    .line 453
    goto/16 :goto_7

    .line 464
    .restart local v1    # "isPdnReuse":Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 465
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: override apn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v5, "ril.pdn.overrideApn"

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_b
    const-string v5, "ril.pdn.reuse"

    const-string v8, "0"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 471
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v10, v5, :cond_1

    const/4 v5, 0x4

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v5, v8, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v11, v5, :cond_1

    .line 474
    const-string v5, "[BIP]"

    const-string v6, "BM-openChannel: miss bearer info."

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iput v11, p2, Landroid/os/Message;->arg1:I

    .line 476
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 477
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 507
    :cond_d
    const-string v5, "[BIP]"

    const-string v7, "BM-openChannel: channel is un-activated"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    goto/16 :goto_9

    .line 517
    :cond_e
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    if-ne v7, v5, :cond_f

    .line 518
    const-string v5, "[BIP]"

    const-string v7, "BM-openChannel: startUsingNetworkFeature delay trigger."

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 520
    .local v4, "timerMsg":Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 522
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    goto/16 :goto_a

    .line 527
    .end local v4    # "timerMsg":Landroid/os/Message;
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->acquireNetwork()V

    goto/16 :goto_a
.end method

.method public openChannelCompleted(ILcom/android/internal/telephony/cat/bip/Channel;)V
    .locals 6
    .param p1, "ret"    # I
    .param p2, "lChannel"    # Lcom/android/internal/telephony/cat/bip/Channel;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1201
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-openChannelCompleted: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    if-ne p1, v5, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 1206
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v5, :cond_3

    .line 1207
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1208
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    .line 1213
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, p2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 1215
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    if-nez v1, :cond_2

    .line 1216
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 1217
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 1218
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1219
    .local v0, "response":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1220
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1221
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1223
    .end local v0    # "response":Landroid/os/Message;
    :cond_2
    return-void

    .line 1210
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1211
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto :goto_0
.end method

.method public receiveData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 699
    const-string v1, "[BIP]"

    const-string v2, "new receiveData"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 701
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 702
    return-void
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x5

    .line 666
    iget v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 667
    .local v2, "requestCount":I
    new-instance v3, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 668
    .local v3, "result":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    const/4 v7, 0x0

    .line 669
    .local v7, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget v6, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    .line 671
    .local v6, "cId":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v7

    .line 672
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: receiveData enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    if-nez v7, :cond_0

    .line 675
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lChannel is null cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 677
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 696
    :goto_0
    return-void

    .line 681
    :cond_0
    iget v0, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 683
    :cond_1
    const/16 v0, 0xed

    if-le v2, v0, :cond_2

    .line 684
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/16 v2, 0xed

    .line 687
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 688
    .local v8, "recvThread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 691
    .end local v8    # "recvThread":Ljava/lang/Thread;
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 693
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 767
    const-string v1, "[BIP]"

    const-string v2, "new sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 769
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 770
    return-void
.end method

.method public sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 706
    const-string v1, "[BIP]"

    const-string v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 762
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 763
    const-string v1, "[BIP]"

    const-string v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1323
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 1324
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1326
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 1327
    return-void
.end method
