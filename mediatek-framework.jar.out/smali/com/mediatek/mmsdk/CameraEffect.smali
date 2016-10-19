.class public abstract Lcom/mediatek/mmsdk/CameraEffect;
.super Ljava/lang/Object;
.source "CameraEffect.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeEffect()V
.end method

.method public abstract createCaptureSession(Ljava/util/List;Ljava/util/List;Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;Landroid/os/Handler;)Lcom/mediatek/mmsdk/CameraEffectSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ">;",
            "Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/mediatek/mmsdk/CameraEffectSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation
.end method

.method public abstract getCaputreRequirement(Lcom/mediatek/mmsdk/BaseParameters;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputSurface()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setParameters(Lcom/mediatek/mmsdk/BaseParameters;)V
.end method
