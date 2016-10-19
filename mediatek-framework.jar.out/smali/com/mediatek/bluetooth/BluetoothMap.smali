.class public Lcom/mediatek/bluetooth/BluetoothMap;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_AUTHORIZE_RESULT:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapService.action.AUTHORIZE_RESULT"

.field public static final ACTION_DISCONNECT_DEVICE:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapService.action.DISCONNECT_DEVICE"

.field public static final BLUETOOTH_SIM_CARD1:I = 0x1

.field public static final BLUETOOTH_SIM_CARD2:I = 0x2

.field private static final DBG:Z = true

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapService.extra.RESULT"

.field public static final STATE_ABNORMAL:I = 0xe

.field public static final STATE_AUTHORIZING:I = 0x6

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DISABLED:I = 0xd

.field public static final STATE_DISABLING:I = 0xc

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_DISCONNECTING:I = 0x4

.field public static final STATE_ENABLED:I = 0xb

.field public static final STATE_ENABLING:I = 0xa

.field public static final STATE_NONE:I = 0x7

.field public static final STATE_UNKNOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BluetoothMap"

.field private static final VDBG:Z = true


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

.field private mService:Lcom/mediatek/bluetooth/IBluetoothMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothMap$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BluetoothMap$1;-><init>(Lcom/mediatek/bluetooth/BluetoothMap;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    .line 143
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mListener:Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/IBluetoothMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "BluetoothMap"

    const-string v1, "Could not bind to Bluetooth Map Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothMap$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BluetoothMap$1;-><init>(Lcom/mediatek/bluetooth/BluetoothMap;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    .line 132
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mListener:Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/IBluetoothMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "BluetoothMap"

    const-string v1, "Could not bind to Bluetooth Map Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/BluetoothMap;Lcom/mediatek/bluetooth/IBluetoothMap;)Lcom/mediatek/bluetooth/IBluetoothMap;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothMap;
    .param p1, "x1"    # Lcom/mediatek/bluetooth/IBluetoothMap;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothMap;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mListener:Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v0, "BluetoothMap"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 288
    const-string v0, "connect(device), just return false"

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect(device): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/BluetoothMap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_1

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    invoke-interface {v1, p1}, Lcom/mediatek/bluetooth/IBluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    const/4 v1, 0x1

    .line 284
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    :cond_1
    const-string v1, "BluetoothMap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothMap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string v3, "getConnectedDevices()"

    invoke-static {v3}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 236
    .local v0, "connSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    if-eqz v3, :cond_0

    .line 238
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    invoke-interface {v4}, Lcom/mediatek/bluetooth/IBluetoothMap;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 246
    :goto_0
    return-object v2

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothMap"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "Proxy not attached to service"

    invoke-static {v3}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 293
    const/4 v1, -0x1

    .line 294
    .local v1, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(device) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    if-eqz v2, :cond_0

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    invoke-interface {v2, p1}, Lcom/mediatek/bluetooth/IBluetoothMap;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 306
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothMap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;

    invoke-interface {v1, p1}, Lcom/mediatek/bluetooth/IBluetoothMap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 261
    :cond_0
    const-string v1, "BluetoothMap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
