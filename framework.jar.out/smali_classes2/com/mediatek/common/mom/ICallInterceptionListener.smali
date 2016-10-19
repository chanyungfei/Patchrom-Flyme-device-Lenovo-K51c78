.class public interface abstract Lcom/mediatek/common/mom/ICallInterceptionListener;
.super Ljava/lang/Object;
.source "ICallInterceptionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/ICallInterceptionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onIncomingCallCheck(Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
