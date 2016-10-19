.class Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
.super Ljava/lang/Object;
.source "BleGattDevice.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBleGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleGattDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleGattClientImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleGattClientImpl"


# instance fields
.field private mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

.field private mProfileCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/bluetooth/IBleGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/bluetooth/BleGattDevice;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleGattDevice;Lcom/mediatek/bluetooth/IBleDeviceManager;)V
    .locals 1
    .param p2, "gattManager"    # Lcom/mediatek/bluetooth/IBleDeviceManager;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mProfileCallbacks:Ljava/util/Map;

    .line 684
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    .line 685
    return-void
.end method


# virtual methods
.method public abortReliableWrite(I)V
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 827
    const-string v1, "BleGattClientImpl"

    const-string v2, "abortReliableWrite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->abortReliableWrite(IILandroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleGattClientImpl"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public beginReliableWrite(I)Z
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 799
    const-string v1, "BleGattClientImpl"

    const-string v2, "beginReliableWrite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->beginReliableWrite(IILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 807
    :goto_0
    return v1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleGattClientImpl"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public executeReliableWrite(I)Z
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 813
    const-string v1, "BleGattClientImpl"

    const-string v2, "executeReliableWrite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->executeReliableWrite(IILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 821
    :goto_0
    return v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleGattClientImpl"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/BleGattDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getProfileCallback(I)Lcom/mediatek/bluetooth/IBleGattCallback;
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mProfileCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/IBleGattCallback;

    return-object v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/BleGattDevice;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/BleGattDevice;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1, "profileId"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 723
    const-string v2, "BleGattClientImpl"

    const-string v3, "readCharacteristic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {p2}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->from(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    move-result-object v1

    .line 729
    .local v1, "parcelChar":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4, v1}, Lcom/mediatek/bluetooth/IBleDeviceManager;->readCharacteristic(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 733
    :goto_0
    return v2

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BleGattClientImpl"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readDescriptor(ILandroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 5
    .param p1, "profileId"    # I
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 756
    const-string v2, "BleGattClientImpl"

    const-string v3, "readDescriptor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {p2}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->from(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    move-result-object v1

    .line 762
    .local v1, "parcelDesc":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4, v1}, Lcom/mediatek/bluetooth/IBleDeviceManager;->readDescriptor(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 765
    :goto_0
    return v2

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BleGattClientImpl"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readRemoteRssi(I)Z
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 785
    const-string v1, "BleGattClientImpl"

    const-string v2, "readRemoteRssi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->readRemoteRssi(IILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 791
    :goto_0
    return v1

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleGattClientImpl"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerClientCallback(ILcom/mediatek/bluetooth/IBleGattCallback;)V
    .locals 2
    .param p1, "profileId"    # I
    .param p2, "callback"    # Lcom/mediatek/bluetooth/IBleGattCallback;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mProfileCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    return-void
.end method

.method public setCharacteristicNotification(ILandroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 7
    .param p1, "profileId"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "enable"    # Z

    .prologue
    .line 844
    const-string v0, "BleGattClientImpl"

    const-string v1, "setCharacteristicNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {p2}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->from(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    move-result-object v4

    .line 850
    .local v4, "parcelChar":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    move v2, p1

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/bluetooth/IBleDeviceManager;->setCharacteristicNotification(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 852
    :catch_0
    move-exception v6

    .line 853
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "BleGattClientImpl"

    const-string v1, ""

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterClientCallback(I)V
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mProfileCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    return-void
.end method

.method public writeCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1, "profileId"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 740
    const-string v2, "BleGattClientImpl"

    const-string v3, "writeCharacteristic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {p2}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->from(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    move-result-object v1

    .line 746
    .local v1, "parcelChar":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4, v1}, Lcom/mediatek/bluetooth/IBleDeviceManager;->writeCharacteristic(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 750
    :goto_0
    return v2

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BleGattClientImpl"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeDescriptor(ILandroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 5
    .param p1, "profileId"    # I
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 771
    const-string v2, "BleGattClientImpl"

    const-string v3, "writeDescriptor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {p2}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->from(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    move-result-object v1

    .line 776
    .local v1, "parcelDesc":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->mGattManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/BleGattDevice;->access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/mediatek/bluetooth/BleGattDevice;->access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4, v1}, Lcom/mediatek/bluetooth/IBleDeviceManager;->writeDescriptor(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 779
    :goto_0
    return v2

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BleGattClientImpl"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    const/4 v2, 0x0

    goto :goto_0
.end method
