.class Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 614
    const/4 v2, 0x0

    .line 615
    .local v2, "retVal":Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 640
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DedicateDataConnection receive unhandled message [DisconnectingState, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 642
    :goto_0
    return v2

    .line 617
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v4, "DisconnectingState receive EVENT_CONNECT (defer)"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 618
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$3400(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V

    .line 619
    const/4 v2, 0x1

    .line 620
    goto :goto_0

    .line 622
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 623
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 625
    :cond_0
    if-nez v0, :cond_1

    .line 626
    .local v1, "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v4, "DisconnectingState receive EVENT_DISCONNECT_DATA_CONNECTION_DONE (success)"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 627
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3, v5, v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->setEnterNotificationParams(ZLcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 628
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$3500(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 637
    :goto_2
    const/4 v2, 0x1

    .line 638
    goto :goto_0

    .line 625
    .end local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    move-object v1, v3

    goto :goto_1

    .line 630
    :cond_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v4, "DisconnectingState receive EVENT_DISCONNECT_DATA_CONNECTION_DONE (fail)"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 631
    if-nez v0, :cond_3

    .line 633
    .restart local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    :goto_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3, v5, v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->setEnterNotificationParams(ZLcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 634
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->access$3600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 631
    .end local v1    # "dp":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    :cond_3
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    move-object v1, v3

    goto :goto_3

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x1fa -> :sswitch_1
    .end sparse-switch
.end method
