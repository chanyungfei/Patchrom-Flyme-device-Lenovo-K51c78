.class public Lcom/mediatek/bluetooth/BluetoothFtp$Client;
.super Lcom/mediatek/bluetooth/BluetoothFtp$Remote;
.source "BluetoothFtp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothFtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    const-string v2, "BluetoothFtp.Client"

    invoke-direct {p0, p1, v2}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.ftp.action.BIND_CLIENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 294
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    :cond_0
    const-string v2, "Could not bind to Bluetooth FTP Service"

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->printErr(Ljava/lang/String;)V

    .line 300
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->close()V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->mService:Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;

    if-eqz v2, :cond_0

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->mService:Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;

    invoke-interface {v2, p1}, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;->connect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->printErr(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "mService is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->printErr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected convertState(I)I
    .locals 1
    .param p1, "ftpState"    # I

    .prologue
    .line 319
    packed-switch p1, :pswitch_data_0

    .line 337
    :pswitch_0
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 323
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 331
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "x0"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->disconnectService()V

    .line 344
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throwable caught in finalize(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->printErr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getConnectedDevices()Ljava/util/Set;
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "x0"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method
