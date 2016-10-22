.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2497
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2498
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 2502
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2509
    .local v3, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    const-string v2, "ro.mtk_ipo_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v14, "1"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2512
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v2, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v16, -0x1

    cmp-long v2, v14, v16

    if-eqz v2, :cond_0

    .line 2513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2514
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2515
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2517
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2518
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 2519
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2527
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v14, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I
    invoke-static {v2, v14, v15}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;J)I

    move-result v11

    .line 2529
    .local v11, "result":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2531
    const/high16 v2, 0x10000

    and-int/2addr v2, v11

    if-eqz v2, :cond_3

    .line 2532
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_2

    .line 2533
    const-string v2, "AlarmManager"

    const-string v14, "Time changed notification from kernel; rebatching"

    invoke-static {v2, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v14, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 2537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2539
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v15, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 2540
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2541
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2542
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2547
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2548
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2549
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2550
    .local v4, "nowELAPSED":J
    const-string v2, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Checking for alarms... rtc="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", elapsed="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    move-result v9

    .line 2571
    .local v9, "hasWakeup":Z
    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 2575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 2576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v15, v4, v5}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v16

    const-wide/16 v18, 0x3

    mul-long v16, v16, v18

    const-wide/16 v18, 0x2

    div-long v16, v16, v18

    add-long v16, v16, v4

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 2579
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v15, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 2581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;)V

    .line 2603
    :goto_2
    monitor-exit v14

    goto/16 :goto_0

    .end local v4    # "nowELAPSED":J
    .end local v6    # "nowRTC":J
    .end local v9    # "hasWakeup":Z
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2515
    .end local v11    # "result":I
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2520
    :catch_0
    move-exception v8

    .line 2521
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v2, "AlarmManager"

    const-string v14, "InterruptedException "

    invoke-static {v2, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2519
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2540
    .restart local v11    # "result":I
    :catchall_3
    move-exception v2

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v2

    .line 2588
    .restart local v4    # "nowELAPSED":J
    .restart local v6    # "nowRTC":J
    .restart local v9    # "hasWakeup":Z
    :cond_5
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;)V

    .line 2590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    move-wide/from16 v16, v0

    sub-long v12, v4, v16

    .line 2595
    .local v12, "thisDelayTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-wide/from16 v16, v0

    cmp-long v2, v16, v12

    if-gez v2, :cond_6

    .line 2597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v12, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2599
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2601
    .end local v12    # "thisDelayTime":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2
.end method
