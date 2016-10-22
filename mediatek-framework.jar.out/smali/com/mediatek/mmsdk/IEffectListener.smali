.class public interface abstract Lcom/mediatek/mmsdk/IEffectListener;
.super Ljava/lang/Object;
.source "IEffectListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAborted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCompleted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFailed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onInputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onOutputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPrepared(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
