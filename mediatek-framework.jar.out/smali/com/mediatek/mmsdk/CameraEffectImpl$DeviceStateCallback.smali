.class public abstract Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
.super Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
.source "CameraEffectImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeviceStateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffect$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 621
    return-void
.end method

.method public onBusy(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 629
    return-void
.end method

.method public onIdle(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 638
    return-void
.end method

.method public onUnconfigured(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 617
    return-void
.end method
