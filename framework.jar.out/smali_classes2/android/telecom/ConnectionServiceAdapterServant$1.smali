.class Landroid/telecom/ConnectionServiceAdapterServant$1;
.super Landroid/os/Handler;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 101
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/ParcelableConnection;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 111
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :sswitch_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :sswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 122
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/DisconnectCause;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 129
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :sswitch_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 135
    :sswitch_7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 138
    :sswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 140
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 147
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 149
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableConference;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 152
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 157
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 162
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 164
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 169
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 171
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-char v2, v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 173
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 178
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/RemoteServiceCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    goto/16 :goto_0

    .line 181
    :sswitch_e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 184
    :sswitch_f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 186
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 189
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 194
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_10
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_2
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 197
    :sswitch_11
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 199
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/StatusHints;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 201
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 206
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_12
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 208
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 210
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 215
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_13
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 217
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 220
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 225
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_14
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 227
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 230
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 235
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_15
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 237
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableConnection;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 240
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 246
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_16
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyConnectionLost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :sswitch_17
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 251
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyActionFailed(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 255
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_18
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 256
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v7, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifySSNotificationToast(Ljava/lang/String;IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 261
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_19
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 262
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyNumberUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1a
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 267
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v0, v4, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyIncomingInfoUpdate(Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 271
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyCdmaCallAccepted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :sswitch_1c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 279
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->updateExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 283
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1d
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 285
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$000(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/ParcelableConference;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 290
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_c
        0xb4 -> :sswitch_1c
        0xb6 -> :sswitch_1d
        0x3e8 -> :sswitch_16
        0x3e9 -> :sswitch_17
        0x3ea -> :sswitch_18
        0x3eb -> :sswitch_19
        0x3ec -> :sswitch_1a
        0x3ed -> :sswitch_1b
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method
