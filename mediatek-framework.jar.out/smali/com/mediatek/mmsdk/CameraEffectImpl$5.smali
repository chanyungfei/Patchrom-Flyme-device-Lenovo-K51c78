.class Lcom/mediatek/mmsdk/CameraEffectImpl$5;
.super Ljava/lang/Object;
.source "CameraEffectImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$5;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "sessionCallback":Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$5;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mInterfaceLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$600(Lcom/mediatek/mmsdk/CameraEffectImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$5;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;
    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$400(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 709
    monitor-exit v2

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$5;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mSessionStateCallback:Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$700(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;

    move-result-object v0

    .line 712
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    if-eqz v0, :cond_0

    .line 714
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$5;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;->onIdle(Lcom/mediatek/mmsdk/CameraEffect;)V

    goto :goto_0

    .line 712
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
