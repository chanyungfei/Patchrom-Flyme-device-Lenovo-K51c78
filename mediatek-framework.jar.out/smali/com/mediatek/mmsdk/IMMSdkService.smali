.class public interface abstract Lcom/mediatek/mmsdk/IMMSdkService;
.super Ljava/lang/Object;
.source "IMMSdkService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IMMSdkService$Stub;
    }
.end annotation


# virtual methods
.method public abstract connectEffect(Ljava/lang/String;Landroid/hardware/camera2/utils/BinderHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connectFeatureManager(Landroid/hardware/camera2/utils/BinderHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connectGesture(Landroid/hardware/camera2/utils/BinderHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connectHeartrate(Landroid/hardware/camera2/utils/BinderHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connectImageTransformUser(Landroid/hardware/camera2/utils/BinderHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disconnectHeartrate()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
