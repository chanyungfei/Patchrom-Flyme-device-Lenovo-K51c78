.class public abstract Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;
.super Ljava/lang/Object;
.source "CameraEffectImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptureCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 0
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 603
    return-void
.end method

.method public onCaptureSequenceAborted(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 0
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 599
    return-void
.end method

.method public onCaptureSequenceCompleted(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;J)V
    .locals 0
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "uid"    # J

    .prologue
    .line 595
    return-void
.end method

.method public onInputFrameProcessed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 0
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 585
    return-void
.end method

.method public onOutputFrameProcessed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 0
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 590
    return-void
.end method
