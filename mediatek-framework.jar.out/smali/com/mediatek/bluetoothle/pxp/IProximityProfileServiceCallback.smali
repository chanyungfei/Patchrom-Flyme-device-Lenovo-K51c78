.class public interface abstract Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
.super Ljava/lang/Object;
.source "IProximityProfileServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAlertStatusChange(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDistanceValueChange(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
