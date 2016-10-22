.class Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
.super Ljava/lang/Object;
.source "CameraEffectImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureCallbackHolder"
.end annotation


# instance fields
.field private final mCaptureCallback:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p2, "callback"    # Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->mCaptureCallback:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;

    .line 772
    iput-object p3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    .line 773
    return-void
.end method


# virtual methods
.method public getCaptureCallback()Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->mCaptureCallback:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
