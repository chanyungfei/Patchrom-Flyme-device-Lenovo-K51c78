.class public final Landroid/bluetooth/BluetoothHealth;
.super Ljava/lang/Object;
.source "BluetoothHealth.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
    }
.end annotation


# static fields
.field public static final APP_CONFIG_REGISTRATION_FAILURE:I = 0x1

.field public static final APP_CONFIG_REGISTRATION_SUCCESS:I = 0x0

.field public static final APP_CONFIG_UNREGISTRATION_FAILURE:I = 0x3

.field public static final APP_CONFIG_UNREGISTRATION_SUCCESS:I = 0x2

.field public static final CHANNEL_TYPE_ANY:I = 0xc

.field public static final CHANNEL_TYPE_RELIABLE:I = 0xa

.field public static final CHANNEL_TYPE_STREAMING:I = 0xb

.field private static final DBG:Z = true

.field public static final HEALTH_OPERATION_ERROR:I = 0x1771

.field public static final HEALTH_OPERATION_GENERIC_FAILURE:I = 0x1773

.field public static final HEALTH_OPERATION_INVALID_ARGS:I = 0x1772

.field public static final HEALTH_OPERATION_NOT_ALLOWED:I = 0x1775

.field public static final HEALTH_OPERATION_NOT_FOUND:I = 0x1774

.field public static final HEALTH_OPERATION_SUCCESS:I = 0x1770

.field public static final SINK_ROLE:I = 0x2

.field public static final SOURCE_ROLE:I = 0x1

.field public static final STATE_CHANNEL_CONNECTED:I = 0x2

.field public static final STATE_CHANNEL_CONNECTING:I = 0x1

.field public static final STATE_CHANNEL_DISCONNECTED:I = 0x0

.field public static final STATE_CHANNEL_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothHealth"

.field private static final VDBG:Z = true


# instance fields
.field mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHealth;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v2, Landroid/bluetooth/BluetoothHealth$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHealth$1;-><init>(Landroid/bluetooth/BluetoothHealth;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 529
    new-instance v2, Landroid/bluetooth/BluetoothHealth$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHealth$2;-><init>(Landroid/bluetooth/BluetoothHealth;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    .line 476
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    .line 477
    iput-object p2, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 478
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 479
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 480
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 482
    :try_start_0
    const-string v2, "BluetoothHealth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register mBluetoothStateChangeCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHealth;->doBind()Z

    .line 490
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHealth"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHealth;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHealth;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHealth;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHealth;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothHealth;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHealth;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHealth;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private checkAppParam(Ljava/lang/String;IILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "role"    # I
    .param p3, "channelType"    # I
    .param p4, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;

    .prologue
    const/16 v3, 0xc

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 564
    if-eqz p1, :cond_2

    if-eq p2, v1, :cond_0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    :cond_0
    const/16 v2, 0xa

    if-eq p3, v2, :cond_1

    const/16 v2, 0xb

    if-eq p3, v2, :cond_1

    if-ne p3, v3, :cond_2

    :cond_1
    if-nez p4, :cond_3

    .line 571
    :cond_2
    :goto_0
    return v0

    .line 570
    :cond_3
    if-ne p2, v1, :cond_4

    if-eq p3, v3, :cond_2

    :cond_4
    move v0, v1

    .line 571
    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 3

    .prologue
    .line 548
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 550
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 552
    :goto_0
    return v1

    .line 551
    :cond_0
    const-string v1, "Bluetooth is Not enabled"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->log(Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 556
    if-nez p1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 558
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v0, "BluetoothHealth"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method


# virtual methods
.method close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 505
    const-string v3, "close()"

    invoke-static {v3}, Landroid/bluetooth/BluetoothHealth;->log(Ljava/lang/String;)V

    .line 506
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 507
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 509
    :try_start_0
    const-string v3, "BluetoothHealth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregister mBluetoothStateChangeCallback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 517
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 519
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    .line 520
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 525
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 526
    iput-object v6, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 527
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothHealth"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 522
    .local v2, "re":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothHealth"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 525
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelType"    # I

    .prologue
    .line 266
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHealth;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 274
    :cond_0
    const-string v1, "BluetoothHealth"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 237
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHealth;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 245
    :cond_0
    const-string v1, "BluetoothHealth"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelId"    # I

    .prologue
    .line 295
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 298
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHealth;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 306
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 303
    :cond_0
    const-string v1, "BluetoothHealth"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 493
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothHealth;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 495
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 496
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 498
    :cond_0
    const-string v3, "BluetoothHealth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Health Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHealth;->getConnectedHealthDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 392
    :goto_0
    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHealth"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 355
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHealth;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 365
    :goto_0
    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 362
    :cond_0
    const-string v1, "BluetoothHealth"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHealth;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 424
    :goto_0
    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHealth"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 324
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 327
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHealth;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 332
    :cond_0
    const-string v1, "BluetoothHealth"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerAppConfiguration(Ljava/lang/String;IIILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "role"    # I
    .param p4, "channelType"    # I
    .param p5, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "result":Z
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/bluetooth/BluetoothHealth;->checkAppParam(Ljava/lang/String;IILandroid/bluetooth/BluetoothHealthCallback;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v2

    .line 195
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 180
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerApplication("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/BluetoothHealth;->log(Ljava/lang/String;)V

    .line 181
    new-instance v4, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;

    invoke-direct {v4, p5}, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothHealthCallback;)V

    .line 182
    .local v4, "wrapper":Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHealthAppConfiguration;-><init>(Ljava/lang/String;III)V

    .line 185
    .local v0, "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    iget-object v5, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v5, :cond_2

    .line 187
    :try_start_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v5, v0, v4}, Landroid/bluetooth/IBluetoothHealth;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 195
    .restart local v3    # "result":I
    goto :goto_0

    .line 188
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "BluetoothHealth"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v5, "BluetoothHealth"

    const-string v6, "Proxy not attached to service"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v5, "BluetoothHealth"

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerSinkAppConfiguration(Ljava/lang/String;ILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSinkApplication("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->log(Ljava/lang/String;)V

    .line 155
    const/4 v3, 0x2

    const/16 v4, 0xc

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHealth;->registerAppConfiguration(Ljava/lang/String;IIILandroid/bluetooth/BluetoothHealthCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 211
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHealth;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothHealth"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v2, "BluetoothHealth"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
