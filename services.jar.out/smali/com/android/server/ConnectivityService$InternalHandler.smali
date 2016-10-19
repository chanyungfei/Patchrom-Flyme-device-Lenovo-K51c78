.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2638
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2639
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2640
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 2644
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 2750
    :cond_0
    :goto_0
    return-void

    .line 2647
    :sswitch_0
    const/4 v0, 0x0

    .line 2648
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v8

    .line 2649
    :try_start_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)I

    move-result v9

    if-ne v7, v9, :cond_1

    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2651
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2652
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    .line 2656
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2657
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x18

    if-ne v7, v8, :cond_2

    .line 2658
    const-string v7, "Failed to find a new network - expiring NetTransition Wakelock"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    goto :goto_0

    .line 2654
    :cond_1
    :try_start_1
    monitor-exit v8

    goto :goto_0

    .line 2656
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 2660
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetTransition Wakelock ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_3

    const-string v0, "unknown"

    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cleared because we found a replacement network"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    goto :goto_0

    .line 2666
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    .line 2670
    :sswitch_2
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v3, :cond_4

    .line 2671
    .local v3, "met":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v8, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v7, v8, v3}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;IZ)V

    goto :goto_0

    .end local v3    # "met":Z
    :cond_4
    move v3, v7

    .line 2670
    goto :goto_1

    .line 2675
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 2676
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v7, v2}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto :goto_0

    .line 2680
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .line 2681
    .local v6, "tag":I
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_5

    .line 2682
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v8

    aget-object v4, v8, v7

    check-cast v4, Landroid/net/MobileDataStateTracker;

    .line 2684
    .local v4, "mobileDst":Landroid/net/MobileDataStateTracker;
    if-eqz v4, :cond_0

    .line 2685
    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v7}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    goto/16 :goto_0

    .line 2688
    .end local v4    # "mobileDst":Landroid/net/MobileDataStateTracker;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != tag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2694
    .end local v6    # "tag":I
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 2698
    :sswitch_6
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/ProxyInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    invoke-static {v8, v7}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_0

    .line 2702
    :sswitch_7
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    invoke-static {v8, v7}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto/16 :goto_0

    .line 2706
    :sswitch_8
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Messenger;

    # invokes: Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    invoke-static {v8, v7}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 2710
    :sswitch_9
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/connectivity/NetworkAgentInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v8, v7}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    .line 2715
    :sswitch_a
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Landroid/os/Message;)V
    invoke-static {v7, p1}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2719
    :sswitch_b
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    invoke-static {v7, p1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2723
    :sswitch_c
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/PendingIntent;

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    invoke-static {v8, v7, v9}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_0

    .line 2727
    :sswitch_d
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkRequest;

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    invoke-static {v8, v7, v9}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_0

    .line 2731
    :sswitch_e
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2732
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-boolean v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_2

    .line 2738
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_f
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleHandoverExpired()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 2742
    :sswitch_10
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleHandoverConnect(I)V
    invoke-static {v7, v8}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 2746
    :sswitch_11
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handlePdnRetry(I)V
    invoke-static {v7, v8}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 2644
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x10 -> :sswitch_6
        0x11 -> :sswitch_7
        0x12 -> :sswitch_9
        0x13 -> :sswitch_a
        0x15 -> :sswitch_a
        0x16 -> :sswitch_d
        0x17 -> :sswitch_8
        0x18 -> :sswitch_0
        0x19 -> :sswitch_e
        0x1a -> :sswitch_b
        0x1b -> :sswitch_c
        0x64 -> :sswitch_f
        0x65 -> :sswitch_10
        0x66 -> :sswitch_11
    .end sparse-switch
.end method
