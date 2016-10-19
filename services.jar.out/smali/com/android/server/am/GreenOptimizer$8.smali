.class Lcom/android/server/am/GreenOptimizer$8;
.super Ljava/lang/Object;
.source "GreenOptimizer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GreenOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/GreenOptimizer;


# direct methods
.method constructor <init>(Lcom/android/server/am/GreenOptimizer;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 347
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 478
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 349
    :pswitch_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 350
    .local v11, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 351
    .local v16, "uid":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 352
    .local v10, "foregroundActivities":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$600(Lcom/android/server/am/GreenOptimizer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 357
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$700(Lcom/android/server/am/GreenOptimizer;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    .line 358
    .local v12, "pidForeground":Landroid/util/SparseBooleanArray;
    if-nez v12, :cond_0

    .line 359
    new-instance v12, Landroid/util/SparseBooleanArray;

    .end local v12    # "pidForeground":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x2

    invoke-direct {v12, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 360
    .restart local v12    # "pidForeground":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$700(Lcom/android/server/am/GreenOptimizer;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    :cond_0
    invoke-virtual {v12, v11, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    move/from16 v0, v16

    # invokes: Lcom/android/server/am/GreenOptimizer;->computeUidForegroundLocked(I)V
    invoke-static {v2, v0}, Lcom/android/server/am/GreenOptimizer;->access$800(Lcom/android/server/am/GreenOptimizer;I)V

    .line 364
    monitor-exit v3

    .line 365
    const/4 v2, 0x1

    goto :goto_0

    .line 364
    .end local v12    # "pidForeground":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 368
    .end local v10    # "foregroundActivities":Z
    .end local v11    # "pid":I
    .end local v16    # "uid":I
    :pswitch_1
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 369
    .restart local v11    # "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 371
    .restart local v16    # "uid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$600(Lcom/android/server/am/GreenOptimizer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 373
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$700(Lcom/android/server/am/GreenOptimizer;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    .line 374
    .restart local v12    # "pidForeground":Landroid/util/SparseBooleanArray;
    if-eqz v12, :cond_1

    .line 375
    invoke-virtual {v12, v11}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    move/from16 v0, v16

    # invokes: Lcom/android/server/am/GreenOptimizer;->computeUidForegroundLocked(I)V
    invoke-static {v2, v0}, Lcom/android/server/am/GreenOptimizer;->access$800(Lcom/android/server/am/GreenOptimizer;I)V

    .line 378
    :cond_1
    monitor-exit v3

    .line 379
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 378
    .end local v12    # "pidForeground":Landroid/util/SparseBooleanArray;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 382
    .end local v11    # "pid":I
    .end local v16    # "uid":I
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SCREEN_ON_CHANGED isScreenOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/am/GreenOptimizer;->access$900(Lcom/android/server/am/GreenOptimizer;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNeedClean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mNeedClean:Z
    invoke-static {v3}, Lcom/android/server/am/GreenOptimizer;->access$1000(Lcom/android/server/am/GreenOptimizer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$900(Lcom/android/server/am/GreenOptimizer;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1200(Lcom/android/server/am/GreenOptimizer;)Landroid/app/AlarmManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mPI:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/am/GreenOptimizer;->access$1100(Lcom/android/server/am/GreenOptimizer;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$000(Lcom/android/server/am/GreenOptimizer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$000(Lcom/android/server/am/GreenOptimizer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 389
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mNeedClean:Z
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1000(Lcom/android/server/am/GreenOptimizer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1200(Lcom/android/server/am/GreenOptimizer;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mPI:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->access$1100(Lcom/android/server/am/GreenOptimizer;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 399
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # invokes: Lcom/android/server/am/GreenOptimizer;->stopBackgroundServices()V
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1300(Lcom/android/server/am/GreenOptimizer;)V

    .line 400
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 415
    :pswitch_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 418
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 419
    .local v14, "t":J
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/ComponentName;

    .line 420
    .local v9, "cn":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 433
    .local v13, "pn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_STOP_SERVICE stop package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mAM:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1400(Lcom/android/server/am/GreenOptimizer;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_STOP_SERVICE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", take: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 437
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 440
    .end local v9    # "cn":Landroid/content/ComponentName;
    .end local v13    # "pn":Ljava/lang/String;
    .end local v14    # "t":J
    :pswitch_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 441
    .restart local v14    # "t":J
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 442
    .restart local v13    # "pn":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_5

    const/16 v17, 0x1

    .line 443
    .local v17, "unblock":Z
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UNBLOCK_PACKAGE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", unblock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 444
    if-eqz v17, :cond_7

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    # getter for: Lcom/android/server/am/GreenOptimizer;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/GreenOptimizer;->access$1500()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name LIKE ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 447
    .local v8, "c":Landroid/database/Cursor;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v18, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "value"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    # getter for: Lcom/android/server/am/GreenOptimizer;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/GreenOptimizer;->access$1500()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "name LIKE ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    :goto_3
    if-eqz v8, :cond_4

    .line 456
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 467
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UNBLOCK_PACKAGE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", take: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 468
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 442
    .end local v17    # "unblock":Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 453
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v17    # "unblock":Z
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    # getter for: Lcom/android/server/am/GreenOptimizer;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/GreenOptimizer;->access$1500()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 459
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->hasWidget(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v2, v13}, Lcom/android/server/am/GreenOptimizer;->access$1600(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mNMService:Landroid/app/INotificationManager;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$200(Lcom/android/server/am/GreenOptimizer;)Landroid/app/INotificationManager;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->hasNotification(Landroid/app/INotificationManager;Ljava/lang/String;)Z
    invoke-static {v2, v13}, Lcom/android/server/am/GreenOptimizer;->access$1700(Landroid/app/INotificationManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1800(Lcom/android/server/am/GreenOptimizer;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 462
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1800(Lcom/android/server/am/GreenOptimizer;)Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/am/GreenOptimizer;->mNeedClean:Z
    invoke-static {v2, v3}, Lcom/android/server/am/GreenOptimizer;->access$1002(Lcom/android/server/am/GreenOptimizer;Z)Z

    goto/16 :goto_4

    .line 463
    :catchall_2
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 471
    .end local v13    # "pn":Ljava/lang/String;
    .end local v14    # "t":J
    .end local v17    # "unblock":Z
    :pswitch_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 472
    .restart local v14    # "t":J
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 473
    .restart local v13    # "pn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/GreenOptimizer$8;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mAM:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1400(Lcom/android/server/am/GreenOptimizer;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_STOP_PACKAGE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", take: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 475
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
