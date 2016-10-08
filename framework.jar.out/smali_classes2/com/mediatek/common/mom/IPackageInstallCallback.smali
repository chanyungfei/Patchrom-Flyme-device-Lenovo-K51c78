.class public interface abstract Lcom/mediatek/common/mom/IPackageInstallCallback;
.super Ljava/lang/Object;
.source "IPackageInstallCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IPackageInstallCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPackageInstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
