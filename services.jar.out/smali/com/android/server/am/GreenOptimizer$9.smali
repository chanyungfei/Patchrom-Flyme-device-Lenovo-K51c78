.class Lcom/android/server/am/GreenOptimizer$9;
.super Landroid/service/notification/INotificationListener$Stub;
.source "GreenOptimizer.java"


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
    .line 484
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer$9;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptionFilterChanged(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    return-void
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 523
    return-void
.end method

.method public onListenerHintsChanged(I)V
    .locals 0
    .param p1, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 489
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "pn":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INotificationListener onNotificationPosted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer$9;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->access$1800(Lcom/android/server/am/GreenOptimizer;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer$9;->this$0:Lcom/android/server/am/GreenOptimizer;

    # invokes: Lcom/android/server/am/GreenOptimizer;->isBlockedPackage(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/server/am/GreenOptimizer;->access$1900(Lcom/android/server/am/GreenOptimizer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer$9;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->access$1800(Lcom/android/server/am/GreenOptimizer;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_0
    monitor-exit v2

    .line 501
    .end local v0    # "pn":Ljava/lang/String;
    :goto_0
    return-void

    .line 499
    .restart local v0    # "pn":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    .end local v0    # "pn":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 527
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 7
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 506
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "pn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INotificationListener onNotificationRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/android/server/am/GreenOptimizer$9;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1800(Lcom/android/server/am/GreenOptimizer;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/GreenOptimizer$9;->this$0:Lcom/android/server/am/GreenOptimizer;

    # invokes: Lcom/android/server/am/GreenOptimizer;->isBlockedPackage(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/am/GreenOptimizer;->access$1900(Lcom/android/server/am/GreenOptimizer;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/server/am/GreenOptimizer$9;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$1800(Lcom/android/server/am/GreenOptimizer;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 514
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 515
    iget-object v2, p0, Lcom/android/server/am/GreenOptimizer$9;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$000(Lcom/android/server/am/GreenOptimizer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 518
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_0
    monitor-exit v3

    .line 520
    .end local v0    # "pn":Ljava/lang/String;
    :goto_0
    return-void

    .line 518
    .restart local v0    # "pn":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 519
    .end local v0    # "pn":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
