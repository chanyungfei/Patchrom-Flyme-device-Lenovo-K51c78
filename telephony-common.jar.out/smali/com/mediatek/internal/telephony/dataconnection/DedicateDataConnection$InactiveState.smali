.class Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactiveState"
.end annotation


# instance fields
.field private mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

.field private mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mIsConnect:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] enter InactiveState state [dp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eqz v0, :cond_1

    .line 441
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mIsConnect:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->clearSettings()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2400(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V

    .line 449
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyDisconnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DedicateDataConnection enter InactiveState without notification"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 453
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 454
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 455
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 386
    const/4 v4, 0x0

    .line 387
    .local v4, "retVal":Z
    const/4 v0, 0x0

    .line 388
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 389
    .local v1, "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v6, :cond_1

    .line 390
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 397
    .restart local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 432
    :pswitch_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DedicateDataConnection receive unhandled message [InactiveState, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    :goto_0
    move v5, v4

    .line 434
    .end local v4    # "retVal":Z
    .local v5, "retVal":I
    :goto_1
    return v5

    .line 391
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":Z
    :cond_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 392
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg object class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    move v5, v4

    .line 393
    .restart local v5    # "retVal":I
    goto :goto_1

    .line 399
    .end local v5    # "retVal":I
    :pswitch_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "InactiveState msg.what=EVENT_CONNECT"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 400
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->onConnect(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V

    .line 401
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1400(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2100(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 402
    const/4 v4, 0x1

    .line 403
    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "InactiveState: msg.what=EVENT_DISCONNECT"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 407
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyDisconnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v6, v1, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 408
    const/4 v4, 0x1

    .line 409
    goto :goto_0

    .line 411
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "InactiveState receive EVENT_UPDATE"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 412
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->onUpdate(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    move-result-object v3

    .line 413
    .local v3, "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$mediatek$internal$telephony$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 426
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InactiveState unknown SetupResult, should not happen ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 415
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "InactiveState receive EVENT_UPDATE and is connected"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 416
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "activation"

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1702(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v6, v1, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->setEnterNotificationParams(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 418
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$2300(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 428
    :goto_2
    const/4 v4, 0x1

    .line 429
    goto/16 :goto_0

    .line 421
    :pswitch_5
    iget-object v6, v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/mediatek/internal/telephony/DedicateDataCallState;

    iget v6, v6, Lcom/mediatek/internal/telephony/DedicateDataCallState;->failCause:I

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 422
    .local v2, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InactiveState receive EVENT_UPDATE and is disconnected ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 423
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v6, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_2

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 413
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setEnterNotificationParams(ZLcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p1, "isToConnect"    # Z
    .param p2, "dp"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p3, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mIsConnect:Z

    .line 459
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 460
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 461
    return-void
.end method
