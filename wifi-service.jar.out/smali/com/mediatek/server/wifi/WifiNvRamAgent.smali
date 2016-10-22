.class public interface abstract Lcom/mediatek/server/wifi/WifiNvRamAgent;
.super Ljava/lang/Object;
.source "WifiNvRamAgent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub;
    }
.end annotation


# virtual methods
.method public abstract readFile(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract readFileByName(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeFile(I[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeFileByName(Ljava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
