.class Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;
.super Ljava/lang/Object;
.source "CameraEffectSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "CameraEffectSessionImpl"

    const-string v1, "[mConfiguredRunnable] Created session successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mStateCallback:Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;
    invoke-static {v0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;)Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;->onConfigured(Lcom/mediatek/mmsdk/CameraEffectSession;)V

    .line 327
    return-void
.end method
