.class Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;
.super Ljava/lang/Object;
.source "CameraEffectImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->onFailed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

.field final synthetic val$baseParametersResult:Lcom/mediatek/mmsdk/BaseParameters;

.field final synthetic val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;->this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;->val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    iput-object p3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;->val$baseParametersResult:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;->val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getCaptureCallback()Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;->this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

    iget-object v1, v1, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$300(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;->val$baseParametersResult:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;->onCaptureFailed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 500
    return-void
.end method
