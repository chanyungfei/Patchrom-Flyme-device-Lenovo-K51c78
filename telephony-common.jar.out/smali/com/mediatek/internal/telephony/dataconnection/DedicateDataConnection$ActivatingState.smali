.class Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 467
    const/4 v3, 0x0

    .line 468
    .local v3, "retVal":Z
    const/4 v0, 0x0

    .line 469
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 470
    .local v1, "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 510
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DedicateDataConnection receive unhandled message [ActivatingState, "

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

    .line 512
    :goto_0
    return v3

    .line 472
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActivatingState receive EVENT_CONNECT (defer)"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 473
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2500(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V

    .line 474
    const/4 v3, 0x1

    .line 475
    goto :goto_0

    .line 477
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActivatingState receive EVENT_DISCONNECT (abort)"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 478
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->onAbort(Ljava/lang/Object;)V

    .line 479
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 480
    const/4 v3, 0x1

    .line 481
    goto :goto_0

    .line 483
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActivatingState receive EVENT_MODIFY (defer)"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 484
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V

    .line 485
    const/4 v3, 0x1

    .line 486
    goto :goto_0

    .line 488
    :pswitch_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActivatingState receive EVENT_SETUP_DATA_CONNECTION_DONE"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 489
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 490
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 491
    .restart local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2900(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/AsyncResult;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    move-result-object v2

    .line 492
    .local v2, "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$mediatek$internal$telephony$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 504
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivatingState unknown SetupResult, should not happen ["

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

    .line 494
    :pswitch_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivatingState receive EVENT_SETUP_DATA_CONNECTION_DONE and SUCCESS [cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 495
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v4

    iget v5, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->setEnterNotificationParams(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 496
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$3000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 506
    :goto_1
    const/4 v3, 0x1

    .line 507
    goto/16 :goto_0

    .line 499
    :pswitch_6
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivatingState receive EVENT_SETUP_DATA_CONNECTION_DONE and FAIL [cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 500
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v4

    const/4 v5, 0x1

    iget v6, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->setEnterNotificationParams(ZLcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 501
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$3100(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 470
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 492
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
