.class public Lcom/mediatek/hardware/CameraEx;
.super Ljava/lang/Object;
.source "CameraEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hardware/CameraEx$MavCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraEx"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMavCallback(Lcom/mediatek/hardware/CameraEx$MavCallback;Landroid/hardware/Camera;)V
    .locals 1
    .param p0, "cb"    # Lcom/mediatek/hardware/CameraEx$MavCallback;
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 74
    new-instance v0, Lcom/mediatek/hardware/CameraEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/hardware/CameraEx$1;-><init>(Lcom/mediatek/hardware/CameraEx$MavCallback;)V

    .line 81
    .local v0, "mMavCallback":Landroid/hardware/Camera$MavCallback;
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setMavCallback(Landroid/hardware/Camera$MavCallback;)V

    .line 82
    return-void
.end method

.method public static startMav(ILandroid/hardware/Camera;)V
    .locals 0
    .param p0, "num"    # I
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 64
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->startMav(I)V

    .line 65
    return-void
.end method

.method public static stopMav(ILandroid/hardware/Camera;)V
    .locals 0
    .param p0, "isMerge"    # I
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 92
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->stopMav(I)V

    .line 93
    return-void
.end method
