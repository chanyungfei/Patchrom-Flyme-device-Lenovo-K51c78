.class public interface abstract Lcom/mediatek/epdg/IEpdgManager;
.super Ljava/lang/Object;
.source "IEpdgManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epdg/IEpdgManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAllConfiguration()[Lcom/mediatek/epdg/EpdgConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConfiguration(I)Lcom/mediatek/epdg/EpdgConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getReasonCode(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAllConfiguration([Lcom/mediatek/epdg/EpdgConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setConfiguration(ILcom/mediatek/epdg/EpdgConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
