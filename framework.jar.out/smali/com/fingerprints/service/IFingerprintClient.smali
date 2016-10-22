.class public interface abstract Lcom/fingerprints/service/IFingerprintClient;
.super Ljava/lang/Object;
.source "IFingerprintClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/IFingerprintClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBundleMessage(IIILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBundleMessage2(II[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMessage(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
