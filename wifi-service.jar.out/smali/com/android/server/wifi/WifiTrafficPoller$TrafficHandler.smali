.class Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
.super Landroid/os/Handler;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiTrafficPoller$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_2

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$402(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z

    .line 125
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$500(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const-string v3, "WifiTrafficPoller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ENABLE_TRAFFIC_STATS_POLL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiTrafficPoller;->access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # operator++ for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$608(Lcom/android/server/wifi/WifiTrafficPoller;)I

    .line 131
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # invokes: Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$700(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 133
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v3

    invoke-static {p0, v7, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    move v3, v4

    .line 124
    goto :goto_1

    .line 138
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$800(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    const-string v3, "WifiTrafficPoller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TRAFFIC_STATS_POLL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiTrafficPoller;->access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " num clients "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # invokes: Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$700(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 146
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v3

    invoke-static {p0, v7, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 151
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Messenger;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 155
    .local v0, "client":Landroid/os/Messenger;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WifiTrafficPoller"

    const-string v4, "client.send fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    .end local v0    # "client":Landroid/os/Messenger;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$500(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const-string v3, "WifiTrafficPoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_CLIENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
