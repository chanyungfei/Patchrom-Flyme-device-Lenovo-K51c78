.class public interface abstract Lcom/mediatek/common/mom/IRequestedPermissionCallback;
.super Ljava/lang/Object;
.source "IRequestedPermissionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPermissionCheckResult(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
