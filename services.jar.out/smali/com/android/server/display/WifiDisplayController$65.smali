.class Lcom/android/server/display/WifiDisplayController$65;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->connectRtsp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 4754
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 4759
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened RTSP connection! w:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",h:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$12900(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v2

    # invokes: Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$13000(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4763
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v2, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$12200(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4764
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$13100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4767
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$11900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$6800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 4771
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-ge p2, p3, :cond_0

    .line 4772
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendPortraitIntent()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$13200(Lcom/android/server/display/WifiDisplayController;)V

    .line 4776
    :cond_0
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sink] callback onDisplayConnected(), addr:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$11900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", name:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateIfSinkConnected(Z)V
    invoke-static {v1, v4}, Lcom/android/server/display/WifiDisplayController;->access$13300(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 4780
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v1

    move-object v2, v0

    move v4, v6

    move v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 4781
    return-void
.end method

.method public onDisplayDisconnected()V
    .locals 3

    .prologue
    .line 4785
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closed RTSP connection! mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$11700(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4796
    :goto_0
    return-void

    .line 4792
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$12900(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v1

    # invokes: Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$13000(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4793
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$13100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4795
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$11500(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_0
.end method

.method public onDisplayError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 4800
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lost RTSP connection! mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$11700(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4811
    :goto_0
    return-void

    .line 4807
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$12900(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v1

    # invokes: Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$13000(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4808
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$13100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4810
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$65;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$11500(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_0
.end method

.method public onDisplayGenericMsgEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 4821
    return-void
.end method

.method public onDisplayKeyEvent(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 4815
    const-string v0, "WifiDisplayController"

    const-string v1, "onDisplayKeyEvent:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    return-void
.end method
