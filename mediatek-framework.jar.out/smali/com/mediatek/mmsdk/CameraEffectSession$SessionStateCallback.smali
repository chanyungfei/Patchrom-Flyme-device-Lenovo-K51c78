.class public abstract Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;
.super Ljava/lang/Object;
.source "CameraEffectSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionStateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onClosed(Lcom/mediatek/mmsdk/CameraEffectSession;)V
.end method

.method public abstract onConfigureFailed(Lcom/mediatek/mmsdk/CameraEffectSession;)V
.end method

.method public abstract onConfigured(Lcom/mediatek/mmsdk/CameraEffectSession;)V
.end method

.method public abstract onPrepared(Lcom/mediatek/mmsdk/CameraEffectSession;)V
.end method
