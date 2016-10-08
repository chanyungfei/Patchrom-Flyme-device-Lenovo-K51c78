.class public abstract Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
.super Ljava/lang/Object;
.source "CameraEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# static fields
.field public static final ERROR_EFFECT_DEVICE:I = 0x4

.field public static final ERROR_EFFECT_DISABLED:I = 0x3

.field public static final ERROR_EFFECT_HAL_IN_USE:I = 0x1

.field public static final ERROR_EFFECT_LISTENER:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 146
    return-void
.end method

.method public abstract onDisconnected(Lcom/mediatek/mmsdk/CameraEffect;)V
.end method

.method public abstract onError(Lcom/mediatek/mmsdk/CameraEffect;I)V
.end method
