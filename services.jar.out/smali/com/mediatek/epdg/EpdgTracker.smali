.class Lcom/mediatek/epdg/EpdgTracker;
.super Ljava/lang/Object;
.source "EpdgTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;,
        Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;
    }
.end annotation


# static fields
.field static final ACTION_EPDG_DPD:Ljava/lang/String; = "com.mediatek.epdg.action.dpd"

.field private static final DBG:Z = true

.field private static final DEFAULT_DPD_TIME:I = 0x12c

.field private static final DEFAULT_MTU_SIZE:I = 0x5dc

.field private static final EPDG_INTERFACE:Ljava/lang/String; = "epdg"

.field private static final EPDG_LOW_SCORE:I = -0x1

.field private static final FACTORY_NAME:Ljava/lang/String; = "Epdg"

.field private static final NETWORK_TYPE:Ljava/lang/String; = "EpdgNetworkFactory"

.field private static final TAG:Ljava/lang/String; = "EpdgTracker"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "EpdgConnection"

.field private static final WIFI_INTERFACE:Ljava/lang/String; = "wifi.interface"

.field private static sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

.field private static sIface:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

.field private mEpdgDpdWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInterfaceObserver:Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, ""

    sput-object v0, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/mediatek/epdg/EpdgTracker$1;

    invoke-direct {v0, p0}, Lcom/mediatek/epdg/EpdgTracker$1;-><init>(Lcom/mediatek/epdg/EpdgTracker;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    invoke-static {}, Lcom/mediatek/epdg/EpdgConnector;->getInstance()Lcom/mediatek/epdg/EpdgConnector;

    move-result-object v0

    sput-object v0, Lcom/mediatek/epdg/EpdgTracker;->sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/epdg/EpdgConnection;

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    .line 91
    const-string v0, "wifi.interface"

    const-string v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgTracker;->initNetworkCapabilities()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/epdg/EpdgTracker;)[Lcom/mediatek/epdg/EpdgConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/epdg/EpdgTracker;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/epdg/EpdgTracker;)Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/epdg/EpdgTracker;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgDpdWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400()Lcom/mediatek/epdg/EpdgConnector;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/mediatek/epdg/EpdgTracker;->sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/epdg/EpdgTracker;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private initNetworkCapabilities()V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 336
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 337
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 338
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 339
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 340
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 341
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 342
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 343
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 344
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/epdg/EpdgConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method getAllConfiguration()[Lcom/mediatek/epdg/EpdgConfig;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 371
    new-array v0, v3, [Lcom/mediatek/epdg/EpdgConfig;

    .line 372
    .local v0, "configs":[Lcom/mediatek/epdg/EpdgConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 373
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/epdg/EpdgConnection;->getConfiguration()Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v2

    aput-object v2, v0, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-object v0
.end method

.method getConfiguration(I)Lcom/mediatek/epdg/EpdgConfig;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mediatek/epdg/EpdgConnection;->getConfiguration()Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v0

    return-object v0
.end method

.method getReasonCode(I)I
    .locals 2
    .param p1, "capabilityType"    # I

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/epdg/EpdgConnection;->getReasonCode()I

    move-result v1

    return v1

    .line 354
    :pswitch_1
    const/4 v0, 0x0

    .line 355
    goto :goto_0

    .line 357
    :pswitch_2
    const/4 v0, 0x1

    .line 358
    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setAllConfiguration([Lcom/mediatek/epdg/EpdgConfig;)V
    .locals 3
    .param p1, "configs"    # [Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->setConfiguration(Lcom/mediatek/epdg/EpdgConfig;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method setConfiguration(ILcom/mediatek/epdg/EpdgConfig;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "config"    # Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/mediatek/epdg/EpdgConnection;->setConfiguration(Lcom/mediatek/epdg/EpdgConfig;)V

    .line 380
    return-void
.end method

.method declared-synchronized start(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 293
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mNMService:Landroid/os/INetworkManagementService;

    .line 295
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_0

    .line 296
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    new-instance v6, Lcom/mediatek/epdg/EpdgConnection;

    sget-object v7, Lcom/mediatek/epdg/EpdgTracker;->sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    sget-object v8, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    invoke-direct {v6, v2, v7, p2, v8}, Lcom/mediatek/epdg/EpdgConnection;-><init>(ILcom/mediatek/epdg/EpdgConnector;Landroid/os/Handler;Ljava/lang/String;)V

    aput-object v6, v5, v2

    .line 298
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1, p2}, Lcom/mediatek/epdg/EpdgConnection;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_0
    new-instance v5, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    const-string v6, "Epdg"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v6, p1, v7}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;-><init>(Lcom/mediatek/epdg/EpdgTracker;Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    .line 303
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v5, v6}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 304
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->setScoreFilter(I)V

    .line 305
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    invoke-virtual {v5}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->register()V

    .line 307
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgTracker;->mContext:Landroid/content/Context;

    .line 309
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 310
    .local v4, "powerManager":Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "EpdgConnection"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgDpdWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 311
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgDpdWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 315
    new-instance v5, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;-><init>(Lcom/mediatek/epdg/EpdgTracker;Lcom/mediatek/epdg/EpdgTracker$1;)V

    iput-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mInterfaceObserver:Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v5, "com.mediatek.epdg.action.dpd"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgTracker;->mInterfaceObserver:Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :goto_1
    monitor-exit p0

    return-void

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "EpdgTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not register InterfaceObserver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 292
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v4    # "powerManager":Landroid/os/PowerManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized stop()V
    .locals 1

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    sput-object v0, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    invoke-virtual {v0}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->unregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
