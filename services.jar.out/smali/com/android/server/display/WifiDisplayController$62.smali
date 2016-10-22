.class Lcom/android/server/display/WifiDisplayController$62;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->startWaitConnection()V
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
    .line 4670
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 4683
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4684
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sink] failed for discoverPeers(), reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$12400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$12400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_1

    .line 4688
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # operator-- for: Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$12410(Lcom/android/server/display/WifiDisplayController;)I

    .line 4689
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDiscover:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$12500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4698
    :cond_0
    :goto_0
    return-void

    .line 4694
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$12200(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4695
    const-string v0, "WifiDisplayController"

    const-string v1, "[sink] callback onDisplayConnectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4674
    const-string v0, "WifiDisplayController"

    const-string v1, "[sink] succeed for discoverPeers()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/display/WifiDisplayController;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$7000(Lcom/android/server/display/WifiDisplayController;I)V

    .line 4679
    :cond_0
    return-void
.end method
