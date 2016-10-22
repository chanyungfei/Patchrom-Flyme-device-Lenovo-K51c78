.class public interface abstract Lcom/mediatek/mmsdk/IEffectFactory;
.super Ljava/lang/Object;
.source "IEffectFactory.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectFactory$Stub;
    }
.end annotation


# virtual methods
.method public abstract createEffectHal(Lcom/mediatek/mmsdk/EffectHalVersion;Landroid/hardware/camera2/utils/BinderHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createEffectHalClient(Lcom/mediatek/mmsdk/EffectHalVersion;Landroid/hardware/camera2/utils/BinderHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAllSupportedEffectHal(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedVersion(Ljava/lang/String;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mmsdk/EffectHalVersion;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
