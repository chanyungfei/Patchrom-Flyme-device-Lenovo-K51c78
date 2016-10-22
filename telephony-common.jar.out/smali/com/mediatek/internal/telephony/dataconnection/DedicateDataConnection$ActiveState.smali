.class Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveState"
.end annotation


# instance fields
.field private mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

.field private mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] enter active state [dp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 597
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 602
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 603
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 522
    const/4 v3, 0x0

    .line 523
    .local v3, "retVal":Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 586
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DedicateDataConnection receive unhandled message [ActiveState, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 588
    :goto_0
    return v3

    .line 525
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState: msg.what=EVENT_CONNECT"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 526
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v5, v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 527
    const/4 v3, 0x1

    .line 528
    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState: msg.what=EVENT_DISCONNECT"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->onDisconnect(Ljava/lang/Object;)V

    .line 532
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$3200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 533
    const/4 v3, 0x1

    .line 534
    goto :goto_0

    .line 536
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState: msg.what=EVENT_MODIFY"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 537
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->onModification(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V

    .line 538
    const/4 v3, 0x1

    .line 539
    goto :goto_0

    .line 541
    :pswitch_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState: msg.what=EVENT_UPDATE (handle update directly)"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 542
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 543
    .local v1, "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/mediatek/internal/telephony/DedicateDataCallState;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$3300(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v4

    iget-object v2, v4, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 544
    .local v2, "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$mediatek$internal$telephony$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 555
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveState unknown SetupResult, should not happen ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 546
    :pswitch_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_UPDATE and SUCCESS"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 547
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "modification"

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1702(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 557
    :goto_1
    const/4 v3, 0x1

    .line 558
    goto/16 :goto_0

    .line 551
    :pswitch_6
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_UPDATE and FAIL"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 552
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget v5, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_1

    .line 561
    .end local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .end local v2    # "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 562
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 563
    .restart local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/mediatek/internal/telephony/DedicateDataCallState;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$3300(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v4

    iget-object v2, v4, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 564
    .restart local v2    # "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 565
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$mediatek$internal$telephony$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 576
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveState unknown SetupResult, should not happen ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 567
    :pswitch_8
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_MODIFY_DATA_CONNECTION_DONE and SUCCESS"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 568
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "modification"

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1702(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 582
    :goto_2
    const/4 v3, 0x1

    .line 583
    goto/16 :goto_0

    .line 572
    :pswitch_9
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_MODIFY_DATA_CONNECTION_DONE and FAIL"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 573
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget v5, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_2

    .line 579
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_MODIFY_DATA_CONNECTION_DONE and exception"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 580
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_2

    .line 523
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 544
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 565
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setEnterNotificationParams(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p1, "dp"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 607
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 608
    return-void
.end method
