.class interface abstract Lcom/mediatek/bluetooth/IBleGatt;
.super Ljava/lang/Object;
.source "BleProfile.java"


# virtual methods
.method public abstract abortReliableWrite(I)V
.end method

.method public abstract beginReliableWrite(I)Z
.end method

.method public abstract executeReliableWrite(I)Z
.end method

.method public abstract getDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
.end method

.method public abstract getServices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z
.end method

.method public abstract readDescriptor(ILandroid/bluetooth/BluetoothGattDescriptor;)Z
.end method

.method public abstract readRemoteRssi(I)Z
.end method

.method public abstract registerClientCallback(ILcom/mediatek/bluetooth/IBleGattCallback;)V
.end method

.method public abstract setCharacteristicNotification(ILandroid/bluetooth/BluetoothGattCharacteristic;Z)Z
.end method

.method public abstract unregisterClientCallback(I)V
.end method

.method public abstract writeCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z
.end method

.method public abstract writeDescriptor(ILandroid/bluetooth/BluetoothGattDescriptor;)Z
.end method
