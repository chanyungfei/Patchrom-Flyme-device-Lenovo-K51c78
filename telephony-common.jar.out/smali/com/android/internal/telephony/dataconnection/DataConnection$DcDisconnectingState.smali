.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .prologue
    .line 3045
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    .prologue
    .line 3045
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 3047
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcDisconnectingState enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3048
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->setIpChangedReceivedOrNot(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3500(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3049
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3054
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 3112
    :pswitch_0
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DcDisconnectingState not handled msg.what="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3115
    const/4 v8, 0x0

    .line 3118
    .local v8, "retVal":Z
    :goto_0
    return v8

    .line 3056
    .end local v8    # "retVal":Z
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DcDisconnectingState msg.what=EVENT_CONNECT. Defer. RefCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3058
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$10100(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 3059
    const/4 v8, 0x1

    .line 3060
    .restart local v8    # "retVal":Z
    goto :goto_0

    .line 3063
    .end local v8    # "retVal":Z
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DcDisconnectingState msg.what=EVENT_DEACTIVATE_DONE RefCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3065
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 3066
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 3067
    .local v5, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget v9, v5, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-ne v9, v10, :cond_5

    .line 3072
    const/4 v4, 0x0

    .line 3073
    .local v4, "cidArrayLen":I
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v9, v9, [I

    if-eqz v9, :cond_3

    .line 3074
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v3, v9

    check-cast v3, [I

    .line 3075
    .local v3, "cidArray":[I
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cidArray size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3076
    array-length v9, v3

    if-lez v9, :cond_0

    .line 3077
    array-length v4, v3

    .line 3078
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setCidArray([I)V

    .line 3085
    .end local v3    # "cidArray":[I
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 3086
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DcDisconnectingState, default bearer cid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultBearer:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget v11, v11, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3087
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultBearer:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget v9, v9, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 3088
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultBearer:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget v10, v10, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setCidArray(I)V

    .line 3092
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 3093
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v9

    iget-object v2, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v0, v2, v6

    .line 3094
    .local v0, "apnType":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isApnTypeIMSorEmergency(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3095
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyIMSDeactivatedCids(Ljava/lang/String;)V
    invoke-static {v9, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$9300(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 3101
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {v10, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 3102
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$10200(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 3107
    .end local v4    # "cidArrayLen":I
    :goto_3
    const/4 v8, 0x1

    .line 3108
    .restart local v8    # "retVal":Z
    goto/16 :goto_0

    .line 3082
    .end local v8    # "retVal":Z
    .restart local v4    # "cidArrayLen":I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v10, "RIL response null due to error"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3093
    .restart local v0    # "apnType":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3104
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "cidArrayLen":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DcDisconnectState stale EVENT_DEACTIVATE_DONE dp.tag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mTag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3054
    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
