.class public interface abstract Lcom/mediatek/common/mom/IMessageInterceptListener;
.super Ljava/lang/Object;
.source "IMessageInterceptListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IMessageInterceptListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNewSMSCheck(Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
