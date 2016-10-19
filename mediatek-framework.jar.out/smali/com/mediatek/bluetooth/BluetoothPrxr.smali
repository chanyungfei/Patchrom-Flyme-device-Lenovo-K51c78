.class public Lcom/mediatek/bluetooth/BluetoothPrxr;
.super Ljava/lang/Object;
.source "BluetoothPrxr.java"

# interfaces
.implements Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# static fields
.field private static final TAG:Ljava/lang/String; = "BtPrxr"


# instance fields
.field protected mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mService:Lcom/mediatek/bluetooth/IBluetoothPrxr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothPrxr$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BluetoothPrxr$1;-><init>(Lcom/mediatek/bluetooth/BluetoothPrxr;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mConnection:Landroid/content/ServiceConnection;

    .line 80
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/IBluetoothPrxr;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "BtPrxr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not bind to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/IBluetoothPrxr;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method private isServiceReady()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mService:Lcom/mediatek/bluetooth/IBluetoothPrxr;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "BtPrxr"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mService:Lcom/mediatek/bluetooth/IBluetoothPrxr;

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mService:Lcom/mediatek/bluetooth/IBluetoothPrxr;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "BtPrxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BluetoothPrxr;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mService:Lcom/mediatek/bluetooth/IBluetoothPrxr;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/IBluetoothPrxr;->disconnectByAddr(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v1, 0x1

    .line 135
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "BtPrxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in disconnect(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 4
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
    .line 155
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BluetoothPrxr;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mService:Lcom/mediatek/bluetooth/IBluetoothPrxr;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/IBluetoothPrxr;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BtPrxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BluetoothPrxr;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxr;->mService:Lcom/mediatek/bluetooth/IBluetoothPrxr;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/IBluetoothPrxr;->getProfileManagerState(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BtPrxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x5

    goto :goto_0
.end method
