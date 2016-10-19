.class public interface abstract Lcom/mediatek/mmsdk/IEffectUpdateListener;
.super Ljava/lang/Object;
.source "IEffectUpdateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectUpdateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEffectUpdated(Lcom/mediatek/mmsdk/IEffectUser;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
