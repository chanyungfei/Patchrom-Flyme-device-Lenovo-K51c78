.class public interface abstract Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
.super Ljava/lang/Object;
.source "IProximityProfileService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPathLoss(Landroid/bluetooth/BluetoothDevice;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPxpParameters(Landroid/bluetooth/BluetoothDevice;[I[I[I[I[I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAlertOn(Landroid/bluetooth/BluetoothDevice;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPxpParameters(Landroid/bluetooth/BluetoothDevice;IIIII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopRemoteAlert(Landroid/bluetooth/BluetoothDevice;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
