.class Lcom/mediatek/bluetooth/BleFindMeProfile$1;
.super Ljava/lang/Object;
.source "BleFindMeProfile.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBleGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleFindMeProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleFindMeProfile;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleFindMeProfile;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleFindMeProfile$1;->this$0:Lcom/mediatek/bluetooth/BleFindMeProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 121
    const-string v0, "BleFindMeProfile"

    const-string v1, "Characteristic changed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onCharacteristicRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 98
    const-string v0, "BleFindMeProfile"

    const-string v1, "Characteristic read is not permitted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public onCharacteristicWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 105
    const-string v0, "BleFindMeProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile$1;->this$0:Lcom/mediatek/bluetooth/BleFindMeProfile;

    # getter for: Lcom/mediatek/bluetooth/BleFindMeProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleFindMeProfile;->access$000(Lcom/mediatek/bluetooth/BleFindMeProfile;)Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    if-nez p3, :cond_1

    .line 112
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile$1;->this$0:Lcom/mediatek/bluetooth/BleFindMeProfile;

    # getter for: Lcom/mediatek/bluetooth/BleFindMeProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleFindMeProfile;->access$000(Lcom/mediatek/bluetooth/BleFindMeProfile;)Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;

    move-result-object v0

    invoke-interface {p1}, Lcom/mediatek/bluetooth/IBleGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;->onTargetAlerted(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile$1;->this$0:Lcom/mediatek/bluetooth/BleFindMeProfile;

    # getter for: Lcom/mediatek/bluetooth/BleFindMeProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleFindMeProfile;->access$000(Lcom/mediatek/bluetooth/BleFindMeProfile;)Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;

    move-result-object v0

    invoke-interface {p1}, Lcom/mediatek/bluetooth/IBleGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;->onTargetAlerted(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0
.end method

.method public onDescriptorRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 127
    const-string v0, "BleFindMeProfile"

    const-string v1, "No descriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onDescriptorWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 133
    const-string v0, "BleFindMeProfile"

    const-string v1, "No descriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public onReadRemoteRssi(Lcom/mediatek/bluetooth/IBleGatt;II)V
    .locals 3
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 143
    const-string v0, "BleFindMeProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadRemoteRssi: rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onReliableWriteCompleted(Lcom/mediatek/bluetooth/IBleGatt;I)V
    .locals 3
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "status"    # I

    .prologue
    .line 138
    const-string v0, "BleFindMeProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReliableWriteCompleted: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method
