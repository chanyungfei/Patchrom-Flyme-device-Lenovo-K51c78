.class public interface abstract Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;
.super Ljava/lang/Object;
.source "IAlertNotificationProfileService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDeviceSettings(Ljava/lang/String;[I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRemoteSettings(Ljava/lang/String;[I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateDeviceSettings(Ljava/lang/String;[I[I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
