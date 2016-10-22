.class public interface abstract Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;
.super Ljava/lang/Object;
.source "IBleDeviceManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCharacteristicChanged(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCharacteristicRead(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCharacteristicWrite(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectionStateChange(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDescriptorRead(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDescriptorWrite(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReadRemoteRssi(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReliableWriteCompleted(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServicesChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
