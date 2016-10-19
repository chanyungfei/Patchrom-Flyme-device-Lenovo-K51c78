.class Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 233
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 276
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    :goto_0
    return v6

    .line 240
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # operator++ for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$108(Lcom/android/server/wifi/SupplicantStateTracker;)I

    .line 241
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTHENTICATION_FAILURE_EVENT, mAuthenticationFailuresCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v2, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$202(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    goto :goto_0

    .line 246
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 247
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 248
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v3

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 249
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$202(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 250
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->access$400(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V

    goto :goto_0

    .line 253
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 256
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$702(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 257
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mConnectNetworkId:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$802(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 258
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$902(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    goto :goto_0

    .line 261
    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mConnectNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$800(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 263
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$700(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1000(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 265
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$702(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    goto/16 :goto_0

    .line 270
    :sswitch_5
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # operator++ for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$908(Lcom/android/server/wifi/SupplicantStateTracker;)I

    goto/16 :goto_0

    .line 273
    :sswitch_6
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    goto/16 :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x2006f -> :sswitch_2
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_0
        0x24008 -> :sswitch_6
        0x2402b -> :sswitch_5
        0x25001 -> :sswitch_3
        0x25004 -> :sswitch_4
    .end sparse-switch
.end method
