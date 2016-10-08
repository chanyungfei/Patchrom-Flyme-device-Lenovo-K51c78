.class Lcom/android/server/am/ActivityManagerService$36;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->notifyCrashApplication(Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$backTrace:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22546
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$36;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$36;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$36;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$36;->val$backTrace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 22549
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->sAppExceptionListener:Landroid/os/RemoteCallbackList;

    monitor-enter v9

    .line 22550
    :try_start_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAppAppExecption: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$36;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22552
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$36;->val$packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 22553
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22568
    :goto_0
    return-void

    .line 22556
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 22557
    .local v2, "date":J
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->sAppExceptionListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 22558
    .local v6, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_1

    .line 22559
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->sAppExceptionListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$36;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$36;->val$type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$36;->val$backTrace:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;->onAppExecption(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22558
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 22563
    .end local v2    # "date":J
    .end local v6    # "N":I
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 22564
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "ActivityManager"

    const-string v1, "RemoteException in notifyAppAppExecption: "

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22566
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->sAppExceptionListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 22567
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
