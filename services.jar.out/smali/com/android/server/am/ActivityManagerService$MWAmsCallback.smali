.class public Lcom/android/server/am/ActivityManagerService$MWAmsCallback;
.super Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWAmsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 22675
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;-><init>()V

    .line 22677
    return-void
.end method


# virtual methods
.method public findProcessNameByToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 3
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 22740
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 22741
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 22742
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 22743
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    monitor-exit v2

    .line 22745
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 22746
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findStackIdByTask(I)I
    .locals 3
    .param p1, "taskId"    # I

    .prologue
    .line 22762
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 22763
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 22764
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    .line 22765
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    monitor-exit v2

    .line 22767
    :goto_0
    return v1

    .line 22766
    :cond_0
    monitor-exit v2

    .line 22767
    const/4 v1, -0x1

    goto :goto_0

    .line 22766
    .end local v0    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findStackIdByToken(Landroid/os/IBinder;)I
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 22750
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 22751
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 22752
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const-string v1, "ActivityManager"

    const-string v3, "[BMW] findStackIdByToken !"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22753
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    .line 22754
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    monitor-exit v2

    .line 22757
    :goto_0
    return v1

    .line 22756
    :cond_0
    monitor-exit v2

    .line 22757
    const/4 v1, -0x1

    goto :goto_0

    .line 22756
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveActivityTaskToFront(Landroid/os/IBinder;)Z
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 22682
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "moveActivityTaskToFront"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 22683
    const/4 v3, 0x0

    .line 22684
    .local v3, "res":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 22685
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 22686
    .local v0, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 22687
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_0

    .line 22688
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 22689
    const/4 v3, 0x1

    .line 22691
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22692
    monitor-exit v5

    .line 22693
    return v3

    .line 22692
    .end local v0    # "origId":J
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public restoreStack(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toMax"    # Z

    .prologue
    const/4 v9, 0x1

    .line 22699
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "restoreStack"

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 22700
    const/4 v5, 0x0

    .line 22701
    .local v5, "res":Z
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BMW] restoreStack:token = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", toMax = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22702
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v6, :cond_0

    .line 22736
    :goto_0
    return-void

    .line 22704
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 22705
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 22706
    .local v2, "origId":J
    const/4 v4, 0x0

    .line 22707
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_4

    .line 22708
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 22713
    :goto_1
    if-eqz v4, :cond_3

    .line 22714
    if-eqz p2, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 22716
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v1

    .line 22717
    .local v1, "killapp":Z
    if-eqz v1, :cond_1

    .line 22718
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 22720
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveFloatingStackToAppStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    .line 22732
    .end local v1    # "killapp":Z
    :cond_2
    :goto_2
    const/4 v5, 0x1

    .line 22734
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22735
    monitor-exit v7

    goto :goto_0

    .end local v2    # "origId":J
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 22710
    .restart local v2    # "origId":J
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v6, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 22721
    :cond_5
    if-nez p2, :cond_2

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_2

    .line 22722
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMwActivityMonitor:Lcom/android/server/am/MwActivityMonitor;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/am/MwActivityMonitor;->blockByFloatingStackSize(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 22724
    .local v0, "blockRet":I
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v1

    .line 22725
    .restart local v1    # "killapp":Z
    if-eqz v1, :cond_6

    .line 22726
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 22728
    :cond_6
    if-eq v0, v9, :cond_2

    .line 22729
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityTaskToFloatingStackLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
