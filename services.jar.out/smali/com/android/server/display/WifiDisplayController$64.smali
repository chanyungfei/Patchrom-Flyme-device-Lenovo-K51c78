.class Lcom/android/server/display/WifiDisplayController$64;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
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
    .line 4717
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4721
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGetSinkIpAddr run(), count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$12100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4724
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSinkState:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$11700(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is wrong !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4748
    :goto_0
    return-void

    .line 4728
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$11900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$12702(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 4730
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$12700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4731
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$12100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_1

    .line 4732
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # operator-- for: Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$12110(Lcom/android/server/display/WifiDisplayController;)I

    .line 4733
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$12300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4736
    :cond_1
    const-string v0, "WifiDisplayController"

    const-string v1, "mGetSinkIpAddr FAIL !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4741
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkPort:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$12000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$12784(Lcom/android/server/display/WifiDisplayController;Ljava/lang/Object;)Ljava/lang/String;

    .line 4743
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sink Ip address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$12700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$64;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->connectRtsp()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$12800(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_0
.end method
