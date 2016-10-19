.class Lcom/mediatek/mmsdk/CameraEffectImpl$1;
.super Ljava/lang/Object;
.source "CameraEffectImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;->setRemoteCameraEffectFail(Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

.field final synthetic val$code:I

.field final synthetic val$isError:Z


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl;ZI)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    iput-boolean p2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->val$isError:Z

    iput p3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->val$isError:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectStateCallback:Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
    invoke-static {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$000(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffect$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    iget v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->val$code:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffect$StateCallback;->onError(Lcom/mediatek/mmsdk/CameraEffect;I)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectStateCallback:Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
    invoke-static {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$000(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffect$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffect$StateCallback;->onDisconnected(Lcom/mediatek/mmsdk/CameraEffect;)V

    goto :goto_0
.end method
