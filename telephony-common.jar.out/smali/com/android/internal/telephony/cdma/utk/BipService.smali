.class public Lcom/android/internal/telephony/cdma/utk/BipService;
.super Ljava/lang/Object;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BipService"

.field private static sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;


# instance fields
.field private final APN_DEFFAULT:Ljava/lang/String;

.field private final APN_ENABLE_FEATURE:Ljava/lang/String;

.field private final APN_PASSWORD:Ljava/lang/String;

.field private final APN_URI:Landroid/net/Uri;

.field private final APN_USER_NAME:Ljava/lang/String;

.field private final BIPCHANNEL_MAX:I

.field private final DEFAULT_NETWORK_TYPE:I

.field private mBipChannelHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/BipChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mBipChannelLock:Ljava/lang/Object;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

.field private mContext:Landroid/content/Context;

.field private mLocalIps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mUtkService:Landroid/os/Handler;

.field private mWaitConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 59
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->BIPCHANNEL_MAX:I

    .line 51
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    .line 52
    const-string v1, "ctwap"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_DEFFAULT:Ljava/lang/String;

    .line 53
    const-string v1, "ctwap@mycdma.cn"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_USER_NAME:Ljava/lang/String;

    .line 54
    const-string v1, "vnet.mobi"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_PASSWORD:Ljava/lang/String;

    .line 55
    const-string v1, "enableSUPL"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_ENABLE_FEATURE:Ljava/lang/String;

    .line 56
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->DEFAULT_NETWORK_TYPE:I

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    .line 62
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mPhoneId:I

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    .line 71
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    .line 76
    const-string v1, "BipService"

    const-string v2, "BipService version 1.3.1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    .line 81
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mPhoneId:I

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method private CreatNewBipChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .locals 9
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 440
    const-string v3, "BipService"

    const-string v5, " CreatNewBipChannel"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v1, 0x0

    .line 446
    .local v1, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    const/4 v2, 0x1

    .local v2, "id":I
    :goto_0
    if-gt v2, v8, :cond_0

    .line 447
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v5

    .line 448
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-object v1, v0

    .line 449
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-nez v1, :cond_1

    .line 455
    :cond_0
    if-le v2, v8, :cond_2

    .line 456
    const-string v3, "BipService"

    const-string v5, " no free channel"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 486
    :goto_1
    return-object v3

    .line 449
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 446
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 462
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;

    .end local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 464
    .restart local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v7, v4}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    .line 482
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v4

    .line 483
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v1

    .line 486
    goto :goto_1

    .line 466
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 468
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;

    .end local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 470
    .restart local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v7, v4}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    goto :goto_2

    .line 472
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 474
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " tcp server, immediateLink="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " backgrountMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;

    .end local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .restart local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    goto :goto_2

    .line 478
    :cond_5
    const-string v3, "BipService"

    const-string v5, " channel type not support"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 479
    goto :goto_1

    .line 484
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 510
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 512
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FindBipChannelById:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-object v0

    .line 512
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private FindBipChannelToLink()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/BipChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    const-string v3, "BipService"

    const-string v4, " FindBipChannelToLink"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v1, "chs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/BipChannel;>;"
    const/4 v2, 0x1

    .local v2, "id":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 496
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v4

    .line 497
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 498
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isBackgroudModOrImmediate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isLinked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 505
    :cond_1
    return-object v1
.end method

.method private RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    const-string v0, "BipService"

    const-string v1, " RemoveBipChannel null ch"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    return-void

    .line 525
    :cond_0
    const-string v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RemoveBipChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/utk/BipService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/utk/BipService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/utk/BipService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelToLink()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cdma/utk/BipService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I

    .prologue
    .line 109
    const-string v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Bip getInstance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-nez p2, :cond_1

    .line 111
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " new BipService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 115
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 124
    :goto_0
    return-object v0

    .line 116
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3

    .line 117
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-nez v0, :cond_2

    .line 118
    const-string v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " new BipService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 121
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    goto :goto_0

    .line 123
    :cond_3
    const-string v0, "BipService"

    const-string v1, "Invalid phone Id and just return null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 10
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 135
    const-string v5, "BipService"

    const-string v6, " onNetworkConnected"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkEstablish()I

    move-result v4

    .line 142
    .local v4, "ret":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelParams()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v2

    .line 144
    .local v2, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    if-nez v4, :cond_4

    .line 145
    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v5, :cond_0

    .line 147
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 149
    .local v3, "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 150
    iget-object v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 151
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 152
    iget-object v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 154
    :try_start_0
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/utk/OtherAddress;-><init>()V

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 155
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    const/16 v6, 0x21

    iput v6, v5, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->addressType:I

    .line 156
    iget-object v6, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    iput-object v5, v6, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 163
    .local v0, "arg2":I
    iget v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    iget v6, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    if-eq v5, v6, :cond_3

    .line 164
    const/4 v0, 0x4

    .line 167
    :cond_3
    invoke-virtual {p0, v9, v8, v0, v3}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 157
    .end local v0    # "arg2":I
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v5, "BipService"

    const-string v6, " UnknownHostException"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v3    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 172
    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v5, :cond_0

    .line 173
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {p0, v9, v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setBipApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 534
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setBipApnParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passwd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v11, 0x0

    .line 537
    .local v11, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 538
    .local v9, "mcc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 539
    .local v10, "mnc":Ljava/lang/String;
    const-string v7, "supl"

    .line 541
    .local v7, "apnType":Ljava/lang/String;
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 543
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 544
    const/4 v8, 0x0

    .line 545
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 546
    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 548
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = \'BIP\' and numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 553
    if-eqz v8, :cond_0

    .line 554
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 555
    .local v13, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "BIP"

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "apn"

    invoke-virtual {v13, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "type"

    invoke-virtual {v13, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "mcc"

    invoke-virtual {v13, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v1, "mnc"

    invoke-virtual {v13, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 566
    .local v12, "row":Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 567
    const-string v1, "BipService"

    const-string v2, " insert a new record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local v12    # "row":Landroid/net/Uri;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 578
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 569
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "row":Landroid/net/Uri;
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v1, "BipService"

    const-string v2, " fail to insert a new record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    .end local v12    # "row":Landroid/net/Uri;
    :cond_2
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " record"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v13, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeChannel(IZ)V
    .locals 9
    .param p1, "chId"    # I
    .param p2, "listen"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x17

    .line 288
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " closeChannel id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 291
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkDisconnect(Z)I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const-string v1, "BipService"

    const-string v2, " closeChannel OK"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, v4, v6, v6, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 302
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 307
    :goto_1
    return-void

    .line 297
    :cond_0
    const-string v1, "BipService"

    const-string v2, " closeChannel fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v4, v7, v8, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0, v4, v7, v8, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mPhoneId:I

    if-nez v0, :cond_0

    .line 100
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mPhoneId:I

    if-ne v0, v1, :cond_1

    .line 102
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "invalid dispose"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChannelStatus(I)V
    .locals 7
    .param p1, "chId"    # I

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x0

    .line 358
    const-string v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getChannelStatus id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 361
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getChannelStatus()Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    move-result-object v1

    .line 363
    .local v1, "cs":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    invoke-virtual {p0, v6, v5, v5, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 369
    .end local v1    # "cs":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :goto_0
    return-void

    .line 366
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v6, v2, v3, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public openChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)V
    .locals 13
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v9, 0x14

    const/4 v8, 0x1

    .line 180
    const-string v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " openChannel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    if-eq v5, v12, :cond_0

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 184
    const-string v5, "BipService"

    const-string v6, " not surpot bearerType"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v5, 0x5

    invoke-virtual {p0, v9, v8, v5, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 285
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->CreatNewBipChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v1

    .line 197
    .local v1, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-nez v1, :cond_1

    .line 198
    const-string v5, "BipService"

    const-string v6, " get null channel"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v5, 0x2

    invoke-virtual {p0, v9, v8, v5, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_1
    const/4 v2, -0x1

    .line 205
    .local v2, "netConnected":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 206
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_2

    .line 207
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 208
    invoke-virtual {p0, v9, v8, v12, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_2
    const-string v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " openChannel network tate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    .line 215
    const/4 v2, 0x0

    .line 235
    :cond_3
    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_4

    .line 237
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 239
    invoke-virtual {p0, v9, v8, v12, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_4
    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-nez v5, :cond_5

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v5, :cond_5

    .line 246
    const-string v5, "BipService"

    const-string v6, " open channel ondemand"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 250
    .local v4, "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 251
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 252
    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 254
    invoke-virtual {p0, v9, v10, v10, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 261
    .end local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_5
    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v5, :cond_7

    .line 262
    const-string v5, "BipService"

    const-string v6, " open channel background mode"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 266
    .restart local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 267
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 268
    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "arg2":I
    iget v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    if-eq v5, v6, :cond_6

    .line 272
    const-string v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " bufferSize chanded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x4

    .line 276
    :cond_6
    invoke-virtual {p0, v9, v10, v0, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 280
    .end local v0    # "arg2":I
    .end local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_7
    if-nez v2, :cond_8

    .line 281
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    goto/16 :goto_0

    .line 283
    :cond_8
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    goto/16 :goto_0
.end method

.method public receiveData(II)V
    .locals 5
    .param p1, "chId"    # I
    .param p2, "reqDataLen"    # I

    .prologue
    .line 310
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " receiveData id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqDataLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 313
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_1

    .line 314
    const/16 v1, 0xe4

    if-le p2, v1, :cond_0

    .line 315
    const/16 p2, 0xe4

    .line 316
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " change reqDataLen to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->receiveData(I)V

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_1
    const/16 v1, 0x16

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sendData(I[BZ)V
    .locals 8
    .param p1, "chId"    # I
    .param p2, "data"    # [B
    .param p3, "sendImmediately"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x15

    const/4 v5, 0x1

    .line 327
    const-string v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sendData chId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sendImmediately:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-nez p2, :cond_0

    .line 329
    const-string v2, "BipService"

    const-string v3, " sendData, but no data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v2, 0x3

    invoke-virtual {p0, v6, v5, v2, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 355
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sendData length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 338
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelParams()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v1

    .line 340
    .local v1, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isLinked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v2, :cond_1

    .line 343
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkEstablish()I

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {p0, v6, v5, v5, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendData([BZ)V

    goto :goto_0

    .line 352
    .end local v1    # "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v6, v5, v2, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sendResponseToUtk(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 129
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendResponseToUtk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 131
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method
