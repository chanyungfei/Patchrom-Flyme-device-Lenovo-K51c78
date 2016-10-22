.class Lcom/android/server/AlarmManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 898
    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 901
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->shutdownCheckPoweroffAlarm()V
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v11, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z
    invoke-static {v10, v11}, Lcom/android/server/AlarmManagerService;->access$302(Lcom/android/server/AlarmManagerService;Z)Z

    .line 903
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v10, v10, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    const-string v10, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 905
    const-string v10, "AlarmManager"

    const-string v11, "receive ACTION_SHUTDOWN_IPO , so close the fd "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v12, v11, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->close(J)V
    invoke-static {v10, v12, v13}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;J)V

    .line 907
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v12, -0x1

    iput-wide v12, v10, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 988
    :cond_1
    :goto_0
    return-void

    .line 912
    :cond_2
    const-string v10, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 913
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z
    invoke-static {v10, v11}, Lcom/android/server/AlarmManagerService;->access$302(Lcom/android/server/AlarmManagerService;Z)Z

    .line 914
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->init()J
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v12

    iput-wide v12, v10, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 915
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v12, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v11, v12, v13}, Lcom/android/server/AlarmManagerService;->access$702(Lcom/android/server/AlarmManagerService;J)J

    move-result-wide v12

    # setter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v10, v12, v13}, Lcom/android/server/AlarmManagerService;->access$602(Lcom/android/server/AlarmManagerService;J)J

    .line 918
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "power_off_alarm_package_name"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/AlarmManagerService;->access$802(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 922
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.TIME_SET"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v8, "timeChangeIntent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v10}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 927
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v10}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 928
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 929
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 930
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 931
    .end local v8    # "timeChangeIntent":Landroid/content/Intent;
    :cond_3
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 932
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ALMS listen ACTION_BOOT_COMPLETED at : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ALMS listen ACTION_BOOT_COMPLETED at : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    # invokes: Lcom/android/server/AlarmManagerService;->formatMillisToDate(J)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/server/AlarmManagerService;->access$1000(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string v10, "AlarmManager"

    const-string v11, " AlarmManagerService = > ACTION_BOOT_COMPLETED "

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 935
    :cond_4
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 936
    const-string v10, "AlarmManager"

    const-string v11, " >>> ACTION_BATTERY_CHANGED <<< "

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBroadcastRefCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v10, "status"

    const/4 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 939
    .local v7, "status":I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_5

    const/4 v10, 0x5

    if-ne v7, v10, :cond_7

    :cond_5
    const/4 v6, 0x1

    .line 942
    .local v6, "isCharging":Z
    :goto_1
    const-string v10, "plugged"

    const/4 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 943
    .local v3, "chargePlug":I
    const/4 v10, 0x2

    if-ne v3, v10, :cond_8

    const/4 v9, 0x1

    .line 944
    .local v9, "usbCharge":Z
    :goto_2
    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    const/4 v2, 0x1

    .line 945
    .local v2, "acCharge":Z
    :goto_3
    const/4 v10, 0x1

    if-ne v6, v10, :cond_a

    const-string v4, "Phone is charging with "

    .line 946
    .local v4, "charging":Ljava/lang/String;
    :goto_4
    if-eqz v6, :cond_d

    .line 947
    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    const-string v5, "USB Mode"

    .line 949
    .local v5, "how":Ljava/lang/String;
    :goto_5
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mobile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 951
    const/4 v10, 0x1

    :try_start_1
    # setter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1202(Z)Z

    .line 952
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 959
    .end local v5    # "how":Ljava/lang/String;
    :goto_6
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsPowerConnected : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1200()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    # getter for: Lcom/android/server/AlarmManagerService;->mWakefulness:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1300()Z

    move-result v10

    if-nez v10, :cond_1

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    # getter for: Lcom/android/server/AlarmManagerService;->mSleepTime:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1500()J

    move-result-wide v12

    sub-long/2addr v10, v12

    # setter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {v10, v11}, Lcom/android/server/AlarmManagerService;->access$1402(J)J

    .line 963
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "System had already sleep :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1400()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "System had already sleep :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1400()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1400()J

    move-result-wide v12

    # invokes: Lcom/android/server/AlarmManagerService;->longSuspendElapsed(J)Z
    invoke-static {v10, v12, v13}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;J)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 966
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 967
    :try_start_2
    # getter for: Lcom/android/server/AlarmManagerService;->mLongSuspendElapsed:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1700()Z

    move-result v10

    if-nez v10, :cond_6

    .line 969
    const/4 v10, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mLongSuspendElapsed:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1702(Z)Z

    .line 970
    const-string v10, "AlarmManager"

    const-string v12, "System had already sleep so long time, Alarm will not allowed..."

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v10, "AlarmManager"

    const-string v12, "System had already sleep so long time ."

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_6
    monitor-exit v11

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 939
    .end local v2    # "acCharge":Z
    .end local v3    # "chargePlug":I
    .end local v4    # "charging":Ljava/lang/String;
    .end local v6    # "isCharging":Z
    .end local v9    # "usbCharge":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 943
    .restart local v3    # "chargePlug":I
    .restart local v6    # "isCharging":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 944
    .restart local v9    # "usbCharge":Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 945
    .restart local v2    # "acCharge":Z
    :cond_a
    const-string v4, "Phone is not charging"

    goto/16 :goto_4

    .line 947
    .restart local v4    # "charging":Ljava/lang/String;
    :cond_b
    const/4 v10, 0x1

    if-ne v2, v10, :cond_c

    const-string v5, "AC Mode"

    goto/16 :goto_5

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 952
    .restart local v5    # "how":Ljava/lang/String;
    :catchall_2
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v10

    .line 954
    .end local v5    # "how":Ljava/lang/String;
    :cond_d
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mobile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 956
    const/4 v10, 0x0

    :try_start_4
    # setter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1202(Z)Z

    .line 957
    monitor-exit v11

    goto/16 :goto_6

    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v10

    .line 976
    .end local v2    # "acCharge":Z
    .end local v3    # "chargePlug":I
    .end local v4    # "charging":Ljava/lang/String;
    .end local v6    # "isCharging":Z
    .end local v7    # "status":I
    .end local v9    # "usbCharge":Z
    :cond_e
    const-string v10, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 977
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 978
    const/4 v10, 0x1

    :try_start_5
    # setter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1202(Z)Z

    .line 979
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 980
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "POWER_CONNECTED : mIsPowerConnected : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1200()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 979
    :catchall_4
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v10

    .line 982
    :cond_f
    const-string v10, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 983
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 984
    const/4 v10, 0x0

    :try_start_7
    # setter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1202(Z)Z

    .line 985
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 986
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "POWER_DISCONNECTED : mIsPowerConnected : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1200()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 985
    :catchall_5
    move-exception v10

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v10
.end method
