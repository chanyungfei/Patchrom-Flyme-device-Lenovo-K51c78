.class public interface abstract Lcom/mediatek/common/mom/IMobileConnectionCallback;
.super Ljava/lang/Object;
.source "IMobileConnectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IMobileConnectionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectionEnded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectionResume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
