.class Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 714
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4002(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 716
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4104(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 720
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 721
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v1, "poor link"

    iput-object v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 723
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 812
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->hideLatencyPanel()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 813
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v1, "N/A"

    iput-object v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 814
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 727
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 805
    :goto_0
    return v3

    .line 729
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 730
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 731
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    :cond_0
    :goto_1
    move v3, v6

    .line 805
    goto :goto_0

    .line 736
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 740
    :sswitch_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 741
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    const v8, 0x25014

    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 742
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v9, 0x2100b

    iget-object v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4104(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v10

    invoke-virtual {v8, v9, v10, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v3, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 748
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 751
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 752
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v2, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 753
    .local v2, "rssi":I
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 754
    .local v1, "linkspeed":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget v8, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4402(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 755
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatestRssi:I
    invoke-static {v7, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4502(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 757
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch RSSI succeed, rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 759
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4700(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 760
    .local v4, "time":J
    cmp-long v7, v4, v12

    if-gtz v7, :cond_3

    .line 762
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v7, "Max avoid time elapsed"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 763
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 765
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_5

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_5

    .line 766
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v8, "Roaming case with privious connected- always send true at first"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 767
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    .line 768
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 769
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v7, "isRoaming = false"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 771
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_8

    .line 772
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 773
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Roaming case with privious disconnected- should check isRoaming= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentDetailState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 780
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$5300(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    if-lt v2, v7, :cond_9

    .line 781
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4004(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$5400(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 783
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Good link detected, rssi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 784
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v3, v12, v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4702(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 785
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 776
    :cond_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privious disconnected- should check isRoaming= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentDetailState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 788
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v7, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4002(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 789
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link is still poor, time left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 795
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v1    # "linkspeed":I
    .end local v2    # "rssi":I
    .end local v4    # "time":J
    :sswitch_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v7, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 799
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_1

    .line 727
    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x2100b -> :sswitch_2
        0x2102c -> :sswitch_5
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
