.class public Lcom/mediatek/bluetooth/BleTimeProfileService;
.super Lcom/mediatek/bluetooth/BleProfileService;
.source "BleTimeProfileService.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BleTimeProfileService"

.field private static final VDBG:Z = true


# instance fields
.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

.field private mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;)V
    .locals 5
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfileService;-><init>()V

    .line 67
    new-instance v3, Lcom/mediatek/bluetooth/BleTimeProfileService$1;

    invoke-direct {v3, p0}, Lcom/mediatek/bluetooth/BleTimeProfileService$1;-><init>(Lcom/mediatek/bluetooth/BleTimeProfileService;)V

    iput-object v3, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 86
    new-instance v3, Lcom/mediatek/bluetooth/BleTimeProfileService$2;

    invoke-direct {v3, p0}, Lcom/mediatek/bluetooth/BleTimeProfileService$2;-><init>(Lcom/mediatek/bluetooth/BleTimeProfileService;)V

    iput-object v3, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mConnection:Landroid/content/ServiceConnection;

    .line 108
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .line 111
    const-string v3, "bluetooth_manager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 113
    .local v1, "mBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 114
    invoke-static {v1}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 116
    .local v2, "mgr":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->doBind()Z

    .line 122
    return-void

    .line 117
    .restart local v2    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BleTimeProfileService"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/BleTimeProfileService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleTimeProfileService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleTimeProfileService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/BleTimeProfileService;Lcom/mediatek/bluetoothle/tip/ITimeProfileService;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleTimeProfileService;
    .param p1, "x1"    # Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleTimeProfileService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    return-object v0
.end method


# virtual methods
.method final close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 125
    const-string v3, "bluetooth_manager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 127
    .local v1, "mBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 128
    invoke-static {v1}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 130
    .local v2, "mgr":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v2    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 136
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 138
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    .line 139
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    iput-object v6, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .line 146
    return-void

    .line 131
    .restart local v2    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BleTimeProfileService"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BleTimeProfileService"

    const-string v5, ""

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method final doBind()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 149
    const-string v2, "BleTimeProfileService"

    const-string v3, "doBind"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.bluetoothle"

    const-string v3, "com.mediatek.bluetoothle.tip.TipServerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    const-string v2, "BleTimeProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind to TipServerService with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final notifyTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 167
    :try_start_0
    const-string v1, "BleTimeProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyTime: time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService;->mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/bluetoothle/tip/ITimeProfileService;->notifyTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleTimeProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
