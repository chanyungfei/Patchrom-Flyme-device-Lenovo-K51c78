.class public interface abstract Lcom/mediatek/mmsdk/IImageTransformUser;
.super Ljava/lang/Object;
.source "IImageTransformUser.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IImageTransformUser$Stub;
    }
.end annotation


# virtual methods
.method public abstract applyTransform(Lcom/mediatek/mmsdk/ImageInfo;Lcom/mediatek/mmsdk/IMemory;Lcom/mediatek/mmsdk/ImageInfo;Lcom/mediatek/mmsdk/IMemory;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
