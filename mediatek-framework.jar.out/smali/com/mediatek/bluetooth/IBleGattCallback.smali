.class interface abstract Lcom/mediatek/bluetooth/IBleGattCallback;
.super Ljava/lang/Object;
.source "BleProfile.java"


# virtual methods
.method public abstract onCharacteristicChanged(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method public abstract onCharacteristicRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public abstract onCharacteristicWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public abstract onDescriptorRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
.end method

.method public abstract onDescriptorWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
.end method

.method public abstract onReadRemoteRssi(Lcom/mediatek/bluetooth/IBleGatt;II)V
.end method

.method public abstract onReliableWriteCompleted(Lcom/mediatek/bluetooth/IBleGatt;I)V
.end method
