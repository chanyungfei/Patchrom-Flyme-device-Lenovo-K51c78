.class public interface abstract Lcom/android/internal/policy/ILenovoFrameworkCallBack;
.super Ljava/lang/Object;
.source "ILenovoFrameworkCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/ILenovoFrameworkCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onShown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTpdStatus(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
