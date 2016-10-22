.class Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;
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
    .line 330
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "CameraEffectSessionImpl"

    const-string v1, "[mConfiguredFailRunnable]Failed to create capture session: configuration failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mStateCallback:Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;
    invoke-static {v0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;)Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;->onConfigureFailed(Lcom/mediatek/mmsdk/CameraEffectSession;)V

    .line 336
    return-void
.end method
