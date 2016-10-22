.class Lcom/android/server/wifi/WifiStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5673
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 5676
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5678
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->clearGBKMapping()V

    .line 5679
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->unloadDriver()Z

    .line 5681
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5682
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1202(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 5683
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5687
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5688
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4702(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 5689
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    .line 5691
    .local v0, "wifiApConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 5692
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 5696
    .end local v0    # "wifiApConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5697
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5700
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v7, p1, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 5701
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    move v5, v6

    .line 5835
    :cond_0
    :goto_0
    return v5

    .line 5704
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5706
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5708
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "STA"

    invoke-interface {v7, v8, v9}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5744
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 5745
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 5748
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 5754
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5765
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 5766
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->startSupplicant(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5767
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "Supplicant start successful"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5768
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMonitor;->startMonitoring()V

    .line 5769
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5709
    :catch_0
    move-exception v0

    .line 5710
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to reload STA firmware "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5712
    const-string v7, "WifiStateMachine"

    const-string v8, "Receive whole chip reset fail, disable wifi!"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5714
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v10, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 5715
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5717
    const/4 v1, 0x0

    .line 5719
    .local v1, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_2
    const-string v6, "ro.have_aee_feature"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5720
    new-instance v2, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v2}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .local v2, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v1, v2

    .line 5722
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .restart local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_2
    if-eqz v1, :cond_0

    .line 5723
    const/4 v6, 0x1

    const-string v7, "CRDISPATCH_KEY:WifiStateMachine"

    const-string v8, "fwreload fails"

    const-string v9, "/data/cursorleak/traces.txt"

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 5729
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 5755
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :catch_2
    move-exception v4

    .line 5756
    .local v4, "re":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to change interface settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5757
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_3
    move-exception v3

    .line 5758
    .local v3, "ie":Ljava/lang/IllegalStateException;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to change interface settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5771
    .end local v3    # "ie":Ljava/lang/IllegalStateException;
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Failed to start supplicant!"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5773
    const-string v7, "WifiStateMachine"

    const-string v8, "Receive whole chip reset fail, disable wifi!"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5775
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v10, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 5776
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5778
    const/4 v1, 0x0

    .line 5780
    .restart local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_3
    const-string v6, "ro.have_aee_feature"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5781
    new-instance v2, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v2}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .restart local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v1, v2

    .line 5783
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .restart local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_4
    if-eqz v1, :cond_0

    .line 5784
    const/4 v6, 0x1

    const-string v7, "CRDISPATCH_KEY:WifiStateMachine"

    const-string v8, "Failed to start supplicant!"

    const-string v9, "/data/cursorleak/traces.txt"

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 5790
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .line 5798
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Failed to load driver"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5800
    const-string v7, "WifiStateMachine"

    const-string v8, "Receive whole chip reset fail, disable wifi!"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5801
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5802
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v10, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 5803
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5805
    const/4 v1, 0x0

    .line 5807
    .restart local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_4
    const-string v6, "ro.have_aee_feature"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5808
    new-instance v2, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v2}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .restart local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v1, v2

    .line 5810
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .restart local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_6
    if-eqz v1, :cond_0

    .line 5811
    const/4 v6, 0x1

    const-string v7, "CRDISPATCH_KEY:WifiStateMachine"

    const-string v8, "loadDriver fails"

    const-string v9, "/data/cursorleak/traces.txt"

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 5817
    :catch_5
    move-exception v6

    goto/16 :goto_0

    .line 5825
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :sswitch_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5826
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v7, 0xc

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5827
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5829
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "Failed to load driver for softap"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5701
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x20015 -> :sswitch_1
    .end sparse-switch
.end method
