.class public interface abstract Lcom/mediatek/mmsdk/IMemory;
.super Ljava/lang/Object;
.source "IMemory.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IMemory$Stub;
    }
.end annotation


# virtual methods
.method public abstract getMemory(II)Lcom/mediatek/mmsdk/IMemoryHeap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
