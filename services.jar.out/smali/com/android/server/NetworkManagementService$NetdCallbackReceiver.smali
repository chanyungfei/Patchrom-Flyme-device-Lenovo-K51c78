.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 680
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 667
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$202(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 676
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 685
    const-string v5, "NetworkManagementService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEvent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 687
    .local v17, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 855
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 696
    :sswitch_0
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "Iface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 697
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 699
    :cond_1
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "added"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 700
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 701
    const/4 v5, 0x1

    goto :goto_0

    .line 702
    :cond_2
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 703
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 704
    const/4 v5, 0x1

    goto :goto_0

    .line 705
    :cond_3
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "changed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 706
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 707
    const/4 v5, 0x1

    goto :goto_0

    .line 708
    :cond_4
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "linkstate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 710
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 712
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 719
    :sswitch_1
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_6

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "limit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 720
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 722
    :cond_7
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "alert"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 723
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 726
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 733
    :sswitch_2
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_9

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "IfaceClass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 734
    :cond_9
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 736
    :cond_a
    const-wide/16 v8, 0x0

    .line 737
    .local v8, "timestampNanos":J
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_b

    .line 739
    const/4 v5, 0x4

    :try_start_0
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v8

    .line 744
    :goto_1
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 745
    .local v21, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v21, :cond_c

    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    :goto_2
    const/4 v10, 0x1

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;IIJZ)V

    .line 748
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 742
    .end local v21    # "isActive":Z
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_1

    .line 745
    .restart local v21    # "isActive":Z
    :cond_c
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    goto :goto_2

    .line 756
    .end local v8    # "timestampNanos":J
    .end local v21    # "isActive":Z
    :sswitch_3
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x7

    if-lt v5, v6, :cond_d

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "Address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 757
    :cond_d
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 760
    :cond_e
    const/4 v5, 0x4

    aget-object v20, p3, v5

    .line 763
    .local v20, "iface":Ljava/lang/String;
    const/4 v5, 0x5

    :try_start_1
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 764
    .local v12, "flags":I
    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 766
    .local v13, "scope":I
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x7

    if-le v5, v6, :cond_f

    .line 769
    const/4 v5, 0x7

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 770
    .local v14, "valid":J
    const-string v5, "NetworkManagementService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InterfaceAddressChange valid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v10, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v11, p3, v5

    invoke-direct/range {v10 .. v15}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;IIJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 785
    .end local v14    # "valid":J
    .local v10, "address":Landroid/net/LinkAddress;
    :goto_3
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "updated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 786
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v5, v0, v10}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 790
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 773
    .end local v10    # "address":Landroid/net/LinkAddress;
    :cond_f
    :try_start_2
    const-string v5, "NetworkManagementService"

    const-string v6, "InterfaceAddressChange no valid field"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v10, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v10, v5, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v10    # "address":Landroid/net/LinkAddress;
    goto :goto_3

    .line 777
    .end local v10    # "address":Landroid/net/LinkAddress;
    .end local v12    # "flags":I
    .end local v13    # "scope":I
    :catch_0
    move-exception v16

    .line 778
    .local v16, "e":Ljava/lang/NumberFormatException;
    const-string v5, "NetworkManagementService"

    const-string v6, "NumberFormatException"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 780
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v16

    .line 781
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NetworkManagementService"

    const-string v6, "IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 788
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "address":Landroid/net/LinkAddress;
    .restart local v12    # "flags":I
    .restart local v13    # "scope":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v5, v0, v10}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_4

    .line 799
    .end local v10    # "address":Landroid/net/LinkAddress;
    .end local v12    # "flags":I
    .end local v13    # "scope":I
    .end local v20    # "iface":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_11

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "DnsInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "servers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 803
    const/4 v5, 0x4

    :try_start_3
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v22

    .line 807
    .local v22, "lifetime":J
    const/4 v5, 0x5

    aget-object v5, p3, v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 808
    .local v25, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, v25

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 810
    .end local v22    # "lifetime":J
    .end local v25    # "servers":[Ljava/lang/String;
    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 804
    :catch_2
    move-exception v16

    .line 805
    .local v16, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 817
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    :sswitch_5
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "Route"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ge v5, v6, :cond_13

    .line 818
    :cond_12
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 821
    :cond_13
    const/16 v26, 0x0

    .line 822
    .local v26, "via":Ljava/lang/String;
    const/4 v4, 0x0

    .line 823
    .local v4, "dev":Ljava/lang/String;
    const/4 v14, 0x1

    .line 824
    .local v14, "valid":Z
    const/16 v19, 0x4

    .local v19, "i":I
    :goto_5
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v5, v6, :cond_18

    if-eqz v14, :cond_18

    .line 825
    aget-object v5, p3, v19

    const-string v6, "dev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 826
    if-nez v4, :cond_14

    .line 827
    add-int/lit8 v5, v19, 0x1

    aget-object v4, p3, v5

    .line 824
    :goto_6
    add-int/lit8 v19, v19, 0x2

    goto :goto_5

    .line 829
    :cond_14
    const/4 v14, 0x0

    goto :goto_6

    .line 831
    :cond_15
    aget-object v5, p3, v19

    const-string v6, "via"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 832
    if-nez v26, :cond_16

    .line 833
    add-int/lit8 v5, v19, 0x1

    aget-object v26, p3, v5

    goto :goto_6

    .line 835
    :cond_16
    const/4 v14, 0x0

    goto :goto_6

    .line 838
    :cond_17
    const/4 v14, 0x0

    goto :goto_6

    .line 841
    :cond_18
    if-eqz v14, :cond_1a

    .line 844
    const/16 v18, 0x0

    .line 845
    .local v18, "gateway":Ljava/net/InetAddress;
    if-eqz v26, :cond_19

    :try_start_4
    invoke-static/range {v26 .. v26}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v18

    .line 846
    :cond_19
    new-instance v24, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-direct {v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 847
    .local v24, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    move-object/from16 v0, v24

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v5, v6, v0}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 848
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 849
    .end local v24    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v5

    .line 851
    .end local v18    # "gateway":Ljava/net/InetAddress;
    :cond_1a
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 740
    .end local v4    # "dev":Ljava/lang/String;
    .end local v14    # "valid":Z
    .end local v19    # "i":I
    .end local v26    # "via":Ljava/lang/String;
    .restart local v8    # "timestampNanos":J
    :catch_4
    move-exception v5

    goto/16 :goto_1

    .line 687
    nop

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_2
        0x266 -> :sswitch_3
        0x267 -> :sswitch_4
        0x268 -> :sswitch_5
    .end sparse-switch
.end method
