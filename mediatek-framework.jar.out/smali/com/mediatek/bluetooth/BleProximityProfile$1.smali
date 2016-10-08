.class Lcom/mediatek/bluetooth/BleProximityProfile$1;
.super Ljava/lang/Object;
.source "BleProximityProfile.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBleGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProximityProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleProximityProfile;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleProximityProfile;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 121
    return-void
.end method

.method public onCharacteristicRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 92
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleProximityProfile;->access$000(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 97
    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    .local v0, "txPower":I
    const-string v1, "BleProximityProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicRead: TxPower="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleProximityProfile;->access$000(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v1

    invoke-interface {p1}, Lcom/mediatek/bluetooth/IBleGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v1, p3, v0, v2}, Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;->onTxPowerRead(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public onCharacteristicWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfile;->access$000(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfile;->access$000(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v0

    invoke-interface {p1}, Lcom/mediatek/bluetooth/IBleGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;->onLinkLostAlertLevelSet(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public onDescriptorRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 127
    return-void
.end method

.method public onDescriptorWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 134
    return-void
.end method

.method public onReadRemoteRssi(Lcom/mediatek/bluetooth/IBleGatt;II)V
    .locals 2
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfile;->access$000(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfile;->access$000(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v0

    invoke-interface {p1}, Lcom/mediatek/bluetooth/IBleGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, p3, p2, v1}, Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;->onRssiRead(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public onReliableWriteCompleted(Lcom/mediatek/bluetooth/IBleGatt;I)V
    .locals 0
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "status"    # I

    .prologue
    .line 140
    return-void
.end method
