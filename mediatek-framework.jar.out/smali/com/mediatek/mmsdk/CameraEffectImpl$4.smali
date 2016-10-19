.class Lcom/mediatek/mmsdk/CameraEffectImpl$4;
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
.field private isClosedOnce:Z

.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V
    .locals 1

    .prologue
    .line 682
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->isClosedOnce:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 687
    iget-boolean v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->isClosedOnce:Z

    if-eqz v1, :cond_0

    .line 688
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Don\'t post #onClosed more than once"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 690
    :cond_0
    const/4 v0, 0x0

    .line 691
    .local v0, "sessionCallback":Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mInterfaceLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$600(Lcom/mediatek/mmsdk/CameraEffectImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mSessionStateCallback:Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$700(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;

    move-result-object v0

    .line 693
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    if-eqz v0, :cond_1

    .line 695
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;->onClosed(Lcom/mediatek/mmsdk/CameraEffect;)V

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectStateCallback:Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$000(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffect$StateCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v1, v2}, Lcom/mediatek/mmsdk/CameraEffect$StateCallback;->onClosed(Lcom/mediatek/mmsdk/CameraEffect;)V

    .line 698
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;->isClosedOnce:Z

    .line 699
    return-void

    .line 693
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
