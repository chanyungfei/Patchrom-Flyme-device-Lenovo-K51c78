.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 343
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 346
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 348
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v3, v2}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onAdapterAttached()V
    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$200(Landroid/telecom/ConnectionService;)V

    goto :goto_0

    .line 352
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v3, v2}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    goto :goto_0

    .line 355
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 357
    .local v16, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 359
    .local v4, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 360
    .local v5, "id":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/ConnectionRequest;

    .line 361
    .local v6, "request":Landroid/telecom/ConnectionRequest;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v7, 0x1

    .line 362
    .local v7, "isIncoming":Z
    :goto_1
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v8, 0x1

    .line 363
    .local v8, "isUnknown":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z
    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    const-string v2, "Enqueueing pre-init request %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v3, v9

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;
    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v9

    new-instance v2, Landroid/telecom/ConnectionService$2$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 361
    .end local v7    # "isIncoming":Z
    .end local v8    # "isUnknown":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 362
    .restart local v7    # "isIncoming":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 377
    .restart local v8    # "isUnknown":Z
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    invoke-static/range {v3 .. v8}, Landroid/telecom/ConnectionService;->access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 385
    .end local v4    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "request":Landroid/telecom/ConnectionRequest;
    .end local v7    # "isIncoming":Z
    .end local v8    # "isUnknown":Z
    :catchall_0
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 390
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 398
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 399
    .local v18, "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v24, v0

    .line 400
    .local v24, "videoState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v18

    move/from16 v1, v24

    # invokes: Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v18    # "callId":Ljava/lang/String;
    .end local v24    # "videoState":I
    :catchall_1
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 407
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 421
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 422
    .restart local v18    # "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/telecom/AudioState;

    .line 423
    .local v17, "audioState":Landroid/telecom/AudioState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Landroid/telecom/ConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 425
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v17    # "audioState":Landroid/telecom/AudioState;
    .end local v18    # "callId":Ljava/lang/String;
    :catchall_2
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 430
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    int-to-char v9, v9

    # invokes: Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    invoke-static {v3, v2, v9}, Landroid/telecom/ConnectionService;->access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 433
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 438
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 439
    .local v19, "callId1":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 440
    .local v20, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    # invokes: Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 442
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v19    # "callId1":Ljava/lang/String;
    .end local v20    # "callId2":Ljava/lang/String;
    :catchall_3
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 447
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 458
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 459
    .restart local v18    # "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/16 v23, 0x1

    .line 460
    .local v23, "proceed":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v18

    move/from16 v1, v23

    # invokes: Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 462
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 459
    .end local v23    # "proceed":Z
    :cond_3
    const/16 v23, 0x0

    goto :goto_4

    .line 462
    .end local v18    # "callId":Ljava/lang/String;
    :catchall_4
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 468
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->swapWithBackgroundCall(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$2100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 475
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 476
    .restart local v18    # "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v21, v0

    .line 477
    .local v21, "cause":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v18

    move/from16 v1, v21

    # invokes: Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2200(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 479
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v18    # "callId":Ljava/lang/String;
    .end local v21    # "cause":I
    :catchall_5
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 486
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->explicitCallTransfer(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$2300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->hangupAll(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->access$2400(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 498
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 499
    .local v12, "conferenceCallId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .line 500
    .local v14, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v2, v12, v14}, Landroid/telecom/ConnectionService;->access$2500(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 502
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v12    # "conferenceCallId":Ljava/lang/String;
    .end local v14    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_6
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 507
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 509
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 511
    .restart local v4    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 512
    .restart local v12    # "conferenceCallId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/ConnectionRequest;

    .line 513
    .restart local v6    # "request":Landroid/telecom/ConnectionRequest;
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .line 514
    .restart local v14    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v7, 0x1

    .line 515
    .restart local v7    # "isIncoming":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z
    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 516
    const-string v2, "Enqueueing pre-init request %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v3, v9

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;
    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v2

    new-instance v9, Landroid/telecom/ConnectionService$2$2;

    move-object/from16 v10, p0

    move-object v11, v4

    move-object v13, v6

    move v15, v7

    invoke-direct/range {v9 .. v15}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 537
    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 514
    .end local v7    # "isIncoming":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    .line 529
    .restart local v7    # "isIncoming":Z
    :cond_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object v11, v4

    move-object v13, v6

    move v15, v7

    # invokes: Landroid/telecom/ConnectionService;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    invoke-static/range {v10 .. v15}, Landroid/telecom/ConnectionService;->access$2600(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_6

    .line 537
    .end local v4    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v6    # "request":Landroid/telecom/ConnectionRequest;
    .end local v7    # "isIncoming":Z
    .end local v12    # "conferenceCallId":Ljava/lang/String;
    .end local v14    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_7
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 545
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 547
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 548
    .restart local v18    # "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 549
    .local v22, "pendingCallAction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    # invokes: Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2700(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 551
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v18    # "callId":Ljava/lang/String;
    .end local v22    # "pendingCallAction":Ljava/lang/String;
    :catchall_8
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 557
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 559
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 560
    .restart local v18    # "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 561
    .restart local v22    # "pendingCallAction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    # invokes: Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2800(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 563
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v18    # "callId":Ljava/lang/String;
    .end local v22    # "pendingCallAction":Ljava/lang/String;
    :catchall_9
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v2

    .line 346
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_11
        0x10 -> :sswitch_1
        0x11 -> :sswitch_5
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x3e9 -> :sswitch_12
        0x3ea -> :sswitch_13
        0x3eb -> :sswitch_14
        0x3ec -> :sswitch_15
        0x3ed -> :sswitch_16
        0x3ee -> :sswitch_17
        0x3ef -> :sswitch_18
        0x3f0 -> :sswitch_19
    .end sparse-switch
.end method
