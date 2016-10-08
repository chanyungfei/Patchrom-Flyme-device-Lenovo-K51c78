.class public Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;
.super Lcom/mediatek/mmsdk/IEffectListener$Stub;
.source "CameraEffectImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectHalClientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-direct {p0}, Lcom/mediatek/mmsdk/IEffectListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAborted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 7
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 451
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]++++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object v0, p2

    .line 455
    .local v0, "baseParametersResult":Lcom/mediatek/mmsdk/BaseParameters;
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$200(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    move-object v1, v2

    .line 458
    .local v1, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :goto_0
    if-eqz p2, :cond_0

    .line 459
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ++++,effect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$4;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$200(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 475
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 455
    .end local v1    # "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onCompleted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;J)V
    .locals 9
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    .line 418
    const-string v3, "CameraEffectImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]++++"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    long-to-int v1, p3

    .line 421
    .local v1, "compleateId":I
    move-object v2, p2

    .line 422
    .local v2, "parameters":Lcom/mediatek/mmsdk/BaseParameters;
    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$200(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    move-object v0, v3

    .line 424
    .local v0, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :goto_0
    if-eqz p2, :cond_0

    .line 425
    const-string v3, "CameraEffectImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onCompleted]++++, effect = ,partialResult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",compleateId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mCurrentStartId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v6}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",callbackHolder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    :cond_1
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$400(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/mediatek/mmsdk/IEffectHalClient;->abort(Lcom/mediatek/mmsdk/BaseParameters;)I

    .line 442
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$500(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectStatus;

    move-result-object v3

    sget-object v4, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v3, v4}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V

    .line 444
    const-string v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .end local v0    # "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :cond_2
    move-object v0, v4

    .line 422
    goto/16 :goto_0
.end method

.method public onFailed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 7
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 481
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]++++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object v0, p2

    .line 485
    .local v0, "baseParametersResult":Lcom/mediatek/mmsdk/BaseParameters;
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$200(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    move-object v1, v2

    .line 488
    .local v1, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :goto_0
    if-eqz p2, :cond_0

    .line 489
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ++++,effect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    :cond_1
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$200(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 504
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 485
    .end local v1    # "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onInputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 9
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 354
    const-string v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]++++"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object v1, p3

    .line 357
    .local v1, "parameters":Lcom/mediatek/mmsdk/BaseParameters;
    move-object v2, p3

    .line 358
    .local v2, "result":Lcom/mediatek/mmsdk/BaseParameters;
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$200(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v4}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    move-object v0, v3

    .line 360
    .local v0, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 361
    const-string v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onInputFrameProcessed] effect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",parameter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",partialResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",callbackHolder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$1;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :cond_1
    const-string v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 358
    .end local v0    # "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOutputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 9
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 384
    const-string v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]++++"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object v1, p3

    .line 388
    .local v1, "parameters":Lcom/mediatek/mmsdk/BaseParameters;
    move-object v2, p3

    .line 389
    .local v2, "result":Lcom/mediatek/mmsdk/BaseParameters;
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$200(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v4}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    move-object v0, v3

    .line 392
    .local v0, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 393
    const-string v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onOutputFrameProcessed]++++, effect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",parameter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",partialResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurrentStartId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    # getter for: Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J
    invoke-static {v5}, Lcom/mediatek/mmsdk/CameraEffectImpl;->access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",callbackHolder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    :cond_1
    const-string v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void

    .line 389
    .end local v0    # "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onPrepared(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 3
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    const-string v0, "CameraEffectImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPrepared] effect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method
