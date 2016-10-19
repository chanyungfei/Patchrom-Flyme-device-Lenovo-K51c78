.class public interface abstract Lcom/mediatek/common/mom/IPermissionListener;
.super Ljava/lang/Object;
.source "IPermissionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IPermissionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPermissionChange(Lcom/mediatek/common/mom/PermissionRecord;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPermissionCheck(Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
