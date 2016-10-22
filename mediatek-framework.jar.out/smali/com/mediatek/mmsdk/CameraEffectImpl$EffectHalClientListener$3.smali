.class Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;
.super Ljava/lang/Object;
.source "CameraEffectImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->onCompleted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

.field final synthetic val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

.field final synthetic val$compleateId:I

.field final synthetic val$parameters:Lcom/mediatek/mmsdk/BaseParameters;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;I)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;->this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;->val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    iput-object p3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;->val$parameters:Lcom/mediatek/mmsdk/BaseParameters;

    iput p4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;->val$compleateId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;->val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getCaptureCallback()Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;->this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

    iget-object v1, v1, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$300(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;->val$parameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;->val$compleateId:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;->onCaptureSequenceCompleted(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;J)V

    .line 438
    return-void
.end method
