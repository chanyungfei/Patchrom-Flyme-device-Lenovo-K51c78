.class Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InteractiveStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    .prologue
    .line 2743
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2744
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2745
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2746
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2747
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2748
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2749
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2754
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService;->interactiveStateChangedLocked(Z)V

    .line 2756
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2758
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2759
    const/4 v0, 0x1

    :try_start_1
    # setter for: Lcom/android/server/AlarmManagerService;->mWakefulness:Z
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1302(Z)Z

    .line 2760
    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {v4, v5}, Lcom/android/server/AlarmManagerService;->access$1402(J)J

    move-result-wide v4

    # setter for: Lcom/android/server/AlarmManagerService;->mSleepTime:J
    invoke-static {v4, v5}, Lcom/android/server/AlarmManagerService;->access$1502(J)J

    .line 2761
    # getter for: Lcom/android/server/AlarmManagerService;->mLongSuspendElapsed:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2763
    const/4 v0, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mLongSuspendElapsed:Z
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1702(Z)Z

    .line 2765
    :cond_0
    const-string v0, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBroadcastRefCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v4, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const-string v0, "AlarmManager"

    const-string v3, ">>> SCREEN_ON <<< "

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2780
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2781
    return-void

    .line 2767
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2780
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2769
    :cond_2
    :try_start_5
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2771
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2772
    const/4 v0, 0x0

    :try_start_6
    # setter for: Lcom/android/server/AlarmManagerService;->mWakefulness:Z
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1302(Z)Z

    .line 2773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/AlarmManagerService;->mSleepTime:J
    invoke-static {v4, v5}, Lcom/android/server/AlarmManagerService;->access$1502(J)J

    .line 2774
    const-string v0, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBroadcastRefCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v4, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const-string v0, "AlarmManager"

    const-string v3, ">>> SCREEN_OFF <<< "

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
