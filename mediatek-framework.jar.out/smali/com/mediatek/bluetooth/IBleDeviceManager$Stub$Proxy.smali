.class Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBleDeviceManager.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBleDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 438
    return-void
.end method


# virtual methods
.method public abortReliableWrite(IILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    if-eqz p3, :cond_0

    .line 911
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 917
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    return-void

    .line 915
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 921
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addGattDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    if-eqz p1, :cond_0

    .line 932
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 938
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    return-void

    .line 936
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 942
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public beginReliableWrite(IILandroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    if-eqz p3, :cond_0

    .line 860
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 866
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 867
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 871
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 874
    return v2

    .line 864
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 871
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 868
    goto :goto_1
.end method

.method public connectDevice(ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "clientIf"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    if-eqz p2, :cond_0

    .line 505
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 511
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 512
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 516
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    return v2

    .line 509
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 513
    goto :goto_1
.end method

.method public deleteGattDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 952
    if-eqz p1, :cond_0

    .line 953
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 959
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    return-void

    .line 957
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 963
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public disconnectDevice(ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "clientIf"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 524
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    if-eqz p2, :cond_0

    .line 530
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 536
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    return v2

    .line 534
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 538
    goto :goto_1
.end method

.method public discoverServices(ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "clientIf"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    if-eqz p2, :cond_0

    .line 555
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 561
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    return v2

    .line 559
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 563
    goto :goto_1
.end method

.method public executeReliableWrite(IILandroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 879
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 882
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    if-eqz p3, :cond_0

    .line 886
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 892
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 894
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 897
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 900
    return v2

    .line 890
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 897
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 894
    goto :goto_1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    return-object v0
.end method

.method public getService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 602
    if-eqz p1, :cond_0

    .line 603
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 609
    :goto_0
    if-eqz p2, :cond_1

    .line 610
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 616
    :goto_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 619
    sget-object v3, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .local v2, "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    return-object v2

    .line 607
    .end local v2    # "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 614
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 622
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    goto :goto_2
.end method

.method public getServices(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 578
    if-eqz p1, :cond_0

    .line 579
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 585
    :goto_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 587
    sget-object v3, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 590
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    return-object v2

    .line 583
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getState(ILandroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "clientIf"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    if-eqz p2, :cond_0

    .line 640
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 646
    :goto_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 651
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    return v2

    .line 644
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public readCharacteristic(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)Z
    .locals 7
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "characteristic"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    if-eqz p3, :cond_0

    .line 668
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 674
    :goto_0
    if-eqz p4, :cond_1

    .line 675
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->writeToParcel(Landroid/os/Parcel;I)V

    .line 681
    :goto_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 683
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 686
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    return v2

    .line 672
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 686
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 679
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 683
    goto :goto_2
.end method

.method public readDescriptor(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z
    .locals 7
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "descriptor"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    if-eqz p3, :cond_0

    .line 734
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 740
    :goto_0
    if-eqz p4, :cond_1

    .line 741
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 747
    :goto_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 749
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 752
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    return v2

    .line 738
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 752
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 745
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 749
    goto :goto_2
.end method

.method public readRemoteRssi(IILandroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    if-eqz p3, :cond_0

    .line 834
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 840
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 848
    return v2

    .line 838
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 842
    goto :goto_1
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;)I
    .locals 6
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    if-eqz p1, :cond_0

    .line 455
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 461
    :goto_0
    if-eqz p2, :cond_1

    .line 462
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 468
    :goto_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 469
    iget-object v3, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 474
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    return v2

    .line 459
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 466
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 468
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public setCharacteristicNotification(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;Z)Z
    .locals 7
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "characteristic"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .param p5, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 793
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    if-eqz p3, :cond_0

    .line 800
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 806
    :goto_0
    if-eqz p4, :cond_1

    .line 807
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->writeToParcel(Landroid/os/Parcel;I)V

    .line 813
    :goto_1
    if-eqz p5, :cond_2

    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 819
    .local v2, "_result":Z
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 822
    return v2

    .line 804
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 819
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 811
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v4, v3

    .line 813
    goto :goto_2

    :cond_3
    move v2, v3

    .line 816
    goto :goto_3
.end method

.method public unregisterClient(I)V
    .locals 5
    .param p1, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-object v2, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 493
    return-void

    .line 490
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public writeCharacteristic(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)Z
    .locals 7
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "characteristic"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 694
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    if-eqz p3, :cond_0

    .line 701
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 707
    :goto_0
    if-eqz p4, :cond_1

    .line 708
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->writeToParcel(Landroid/os/Parcel;I)V

    .line 714
    :goto_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 719
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 722
    return v2

    .line 705
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 719
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 712
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 716
    goto :goto_2
.end method

.method public writeDescriptor(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z
    .locals 7
    .param p1, "clientID"    # I
    .param p2, "profileID"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "descriptor"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 763
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    if-eqz p3, :cond_0

    .line 767
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 773
    :goto_0
    if-eqz p4, :cond_1

    .line 774
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 780
    :goto_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 782
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 785
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 788
    return v2

    .line 771
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 778
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 782
    goto :goto_2
.end method
