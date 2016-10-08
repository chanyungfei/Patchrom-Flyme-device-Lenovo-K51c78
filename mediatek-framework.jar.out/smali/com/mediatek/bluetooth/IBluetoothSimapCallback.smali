.class public interface abstract Lcom/mediatek/bluetooth/IBluetoothSimapCallback;
.super Ljava/lang/Object;
.source "IBluetoothSimapCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothSimapCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract postEvent(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
