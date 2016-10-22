.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field private mAttempt:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 556
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter, NetworkAgentInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempt:I

    .line 559
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82006

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2704(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 560
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 562
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1402(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 564
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit, NetworkAgentInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 699
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 700
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 568
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 690
    :pswitch_0
    const/4 v10, 0x0

    :goto_0
    return v10

    .line 572
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handle CMD_REEVALUATE, NetworkAgentInfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$2700(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 575
    const/4 v10, 0x1

    goto :goto_0

    .line 593
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;

    move-result-object v10

    iget-object v10, v10, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 596
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 597
    const/4 v10, 0x1

    goto :goto_0

    .line 607
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSkipNetworkValidation ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$3000()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 608
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$3000()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 609
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v12, 0x82002

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v15}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 613
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 615
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 621
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortalEx()I
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v4

    .line 623
    .local v4, "httpResponseCode":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isCaptivePortal, httpResponseCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 625
    const/16 v10, 0xcc

    if-eq v4, v10, :cond_4

    const/16 v10, 0xc8

    if-lt v4, v10, :cond_4

    const/16 v10, 0x18f

    if-le v4, v10, :cond_5

    :cond_4
    const/16 v10, 0x257

    if-ne v4, v10, :cond_7

    .line 628
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$3300(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 629
    .local v8, "serverAddress":Ljava/net/InetAddress;
    if-eqz v8, :cond_8

    .line 630
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->autoAuthorize(Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$3400(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z

    .line 661
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortalEx()I
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v4

    .line 666
    .end local v8    # "serverAddress":Ljava/net/InetAddress;
    :cond_7
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$3000()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 667
    const/16 v10, 0xcc

    if-eq v4, v10, :cond_c

    const/16 v10, 0xc8

    if-lt v4, v10, :cond_c

    const/16 v10, 0x18f

    if-gt v4, v10, :cond_c

    .line 668
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$3900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$4000(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 672
    :goto_2
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 632
    .restart local v8    # "serverAddress":Ljava/net/InetAddress;
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isInvalidNetworkEx()Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v7

    .line 633
    .local v7, "server":Ljava/lang/String;
    if-nez v7, :cond_b

    .line 634
    const/4 v2, 0x0

    .line 636
    .local v2, "bWiFiConnected":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 637
    .local v3, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v3, :cond_9

    .line 638
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 641
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->getTopVisiblePackageName()Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v9

    .line 642
    .local v9, "topPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid WLAN, WiFiConnected: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", TopPackageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 643
    if-eqz v2, :cond_6

    if-eqz v9, :cond_6

    .line 644
    if-eqz v9, :cond_a

    if-eqz v9, :cond_6

    const-string v10, "com.lenovo.anyshare"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.lenovo.anyshare.gps"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 648
    :cond_a
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.lenovo.wifi.INVALID_WLAN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v13}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v13, v13, Landroid/net/Network;->netId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/connectivity/NetworkMonitor;->access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->setProvNotificationVisibleIntent(ZZILandroid/app/PendingIntent;)V
    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;ZZILandroid/app/PendingIntent;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mOfflineState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$3800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 653
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 657
    .end local v2    # "bWiFiConnected":Z
    .end local v3    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "topPackageName":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->autoAuthorize(Ljava/lang/String;)Z
    invoke-static {v10, v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$3400(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 670
    .end local v7    # "server":Ljava/lang/String;
    .end local v8    # "serverAddress":Ljava/net/InetAddress;
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$4100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 675
    :cond_d
    const/16 v10, 0xcc

    if-ne v4, v10, :cond_f

    .line 676
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$4200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 685
    :cond_e
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 677
    :cond_f
    const/16 v10, 0xc8

    if-lt v4, v10, :cond_10

    const/16 v10, 0x18f

    if-gt v4, v10, :cond_10

    .line 678
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$3900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$4300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 679
    :cond_10
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempt:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempt:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mMaxAttempts:I
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v11

    if-le v10, v11, :cond_11

    .line 680
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mOfflineState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$4400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 681
    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateDelayMs:I
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->access$4500(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v10

    if-ltz v10, :cond_e

    .line 682
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v11, 0x82006

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->access$2704(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 683
    .local v6, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateDelayMs:I
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$4500(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v6, v12, v13}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_3

    .line 688
    .end local v4    # "httpResponseCode":I
    .end local v6    # "msg":Landroid/os/Message;
    :pswitch_2
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x82006
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
