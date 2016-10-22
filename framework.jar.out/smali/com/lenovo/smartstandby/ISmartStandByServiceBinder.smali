.class public interface abstract Lcom/lenovo/smartstandby/ISmartStandByServiceBinder;
.super Ljava/lang/Object;
.source "ISmartStandByServiceBinder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/smartstandby/ISmartStandByServiceBinder$Stub;
    }
.end annotation


# virtual methods
.method public abstract scheduleStartFaceDetect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleStopFaceDetect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
