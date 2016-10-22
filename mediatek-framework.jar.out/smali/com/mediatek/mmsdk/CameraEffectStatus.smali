.class public Lcom/mediatek/mmsdk/CameraEffectStatus;
.super Ljava/lang/Object;
.source "CameraEffectStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CameraEffectStatus"


# instance fields
.field private mCurrentStatus:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_UNINITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectStatus;->mCurrentStatus:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    .line 18
    return-void
.end method


# virtual methods
.method public getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;
    .locals 4

    .prologue
    .line 30
    const-string v0, "CameraEffectStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ,mCurrentStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectStatus;->mCurrentStatus:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectStatus;->mCurrentStatus:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    return-object v0
.end method

.method public setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    .prologue
    .line 22
    const-string v0, "CameraEffectStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ,mCurrentStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectStatus;->mCurrentStatus:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",next status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectStatus;->mCurrentStatus:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    .line 26
    return-void
.end method
