.class Lcom/mediatek/bluetooth/BleGattDevice$1;
.super Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;
.source "BleGattDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleGattDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleGattDevice;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleGattDevice;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profileID"    # I
    .param p3, "characteristic"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p3}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->unpack()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 229
    .local v1, "gattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->getProfileCallback(I)Lcom/mediatek/bluetooth/IBleGattCallback;

    move-result-object v0

    .line 231
    .local v0, "gattCb":Lcom/mediatek/bluetooth/IBleGattCallback;
    if-nez v0, :cond_0

    .line 232
    const-string v2, "BleGattDevice"

    const-string v3, "IBleGattCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/mediatek/bluetooth/IBleGattCallback;->onCharacteristicChanged(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0
.end method

.method public onCharacteristicRead(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profileID"    # I
    .param p3, "characteristic"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p3}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->unpack()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 200
    .local v1, "gattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->getProfileCallback(I)Lcom/mediatek/bluetooth/IBleGattCallback;

    move-result-object v0

    .line 202
    .local v0, "gattCb":Lcom/mediatek/bluetooth/IBleGattCallback;
    if-nez v0, :cond_0

    .line 203
    const-string v2, "BleGattDevice"

    const-string v3, "IBleGattCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-interface {v0, v2, v1, p4}, Lcom/mediatek/bluetooth/IBleGattCallback;->onCharacteristicRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    goto :goto_0
.end method

.method public onCharacteristicWrite(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profileID"    # I
    .param p3, "characteristic"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p3}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->unpack()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 215
    .local v1, "gattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->getProfileCallback(I)Lcom/mediatek/bluetooth/IBleGattCallback;

    move-result-object v0

    .line 217
    .local v0, "gattCb":Lcom/mediatek/bluetooth/IBleGattCallback;
    if-nez v0, :cond_0

    .line 218
    const-string v2, "BleGattDevice"

    const-string v3, "IBleGattCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-interface {v0, v2, v1, p4}, Lcom/mediatek/bluetooth/IBleGattCallback;->onCharacteristicWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    goto :goto_0
.end method

.method public onConnectionStateChange(Ljava/lang/String;II)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v0, "BleGattDevice"

    const-string v1, "onConnectionStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleGattDevice;->access$000(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    const-string v0, "BleGattDevice"

    const-string v1, "mClientCB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleGattDevice;->access$000(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    invoke-interface {v0, v1, p2, p3}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;->onConnectionStateChange(Lcom/mediatek/bluetooth/BleGattDevice;II)V

    goto :goto_0
.end method

.method public onDescriptorRead(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profileID"    # I
    .param p3, "descriptor"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p3}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->unpack()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 243
    .local v1, "gattDesc":Landroid/bluetooth/BluetoothGattDescriptor;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->getProfileCallback(I)Lcom/mediatek/bluetooth/IBleGattCallback;

    move-result-object v0

    .line 245
    .local v0, "gattCb":Lcom/mediatek/bluetooth/IBleGattCallback;
    if-nez v0, :cond_0

    .line 246
    const-string v2, "BleGattDevice"

    const-string v3, "IBleGattCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-interface {v0, v2, v1, p4}, Lcom/mediatek/bluetooth/IBleGattCallback;->onDescriptorRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0
.end method

.method public onDescriptorWrite(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profileID"    # I
    .param p3, "descriptor"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p3}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->unpack()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 257
    .local v1, "gattDesc":Landroid/bluetooth/BluetoothGattDescriptor;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->getProfileCallback(I)Lcom/mediatek/bluetooth/IBleGattCallback;

    move-result-object v0

    .line 259
    .local v0, "gattCb":Lcom/mediatek/bluetooth/IBleGattCallback;
    if-nez v0, :cond_0

    .line 260
    const-string v2, "BleGattDevice"

    const-string v3, "IBleGattCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v2

    invoke-interface {v0, v2, v1, p4}, Lcom/mediatek/bluetooth/IBleGattCallback;->onDescriptorWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0
.end method

.method public onReadRemoteRssi(Ljava/lang/String;III)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profileID"    # I
    .param p3, "rssi"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->getProfileCallback(I)Lcom/mediatek/bluetooth/IBleGattCallback;

    move-result-object v0

    .line 285
    .local v0, "gattCb":Lcom/mediatek/bluetooth/IBleGattCallback;
    if-nez v0, :cond_0

    .line 286
    const-string v1, "BleGattDevice"

    const-string v2, "IBleGattCallback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Lcom/mediatek/bluetooth/IBleGattCallback;->onReadRemoteRssi(Lcom/mediatek/bluetooth/IBleGatt;II)V

    goto :goto_0
.end method

.method public onReliableWriteCompleted(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profileID"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;->getProfileCallback(I)Lcom/mediatek/bluetooth/IBleGattCallback;

    move-result-object v0

    .line 272
    .local v0, "gattCb":Lcom/mediatek/bluetooth/IBleGattCallback;
    if-nez v0, :cond_0

    .line 273
    const-string v1, "BleGattDevice"

    const-string v2, "IBleGattCallback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleGattDevice;->access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/mediatek/bluetooth/IBleGattCallback;->onReliableWriteCompleted(Lcom/mediatek/bluetooth/IBleGatt;I)V

    goto :goto_0
.end method

.method public onServicesChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, "BleGattDevice"

    const-string v1, "onServicesChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleGattDevice;->access$000(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "BleGattDevice"

    const-string v1, "mClientCB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    # getter for: Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleGattDevice;->access$000(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice$1;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    invoke-interface {v0, v1, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;->onServicesDiscovered(Lcom/mediatek/bluetooth/BleGattDevice;I)V

    goto :goto_0
.end method
