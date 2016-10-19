.class public interface abstract Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
.super Ljava/lang/Object;
.source "IAppPcOrderedBroadcastCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppPcOrderedBroadcastCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
