.class public abstract Lcom/mediatek/mmsdk/CameraEffectSession;
.super Ljava/lang/Object;
.source "CameraEffectSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;,
        Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeSession()V
.end method

.method public abstract getFrameSyncMode(ZI)Z
.end method

.method public abstract setFrameParameters(ZILcom/mediatek/mmsdk/BaseParameters;JZ)V
.end method

.method public abstract setFrameSyncMode(ZIZ)I
.end method

.method public abstract startCapture(Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;Landroid/os/Handler;)V
.end method

.method public abstract stopCapture(Lcom/mediatek/mmsdk/BaseParameters;)V
.end method
