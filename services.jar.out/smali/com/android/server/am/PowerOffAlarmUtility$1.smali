.class Lcom/android/server/am/PowerOffAlarmUtility$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffAlarmUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PowerOffAlarmUtility;->registerNormalBootReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PowerOffAlarmUtility;


# direct methods
.method constructor <init>(Lcom/android/server/am/PowerOffAlarmUtility;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    if-nez p2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    const-string v1, "PowerOffAlarm"

    const-string v2, "DeskClock normally boots-up device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$000(Lcom/android/server/am/PowerOffAlarmUtility;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # invokes: Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/server/am/PowerOffAlarmUtility;->access$100(Lcom/android/server/am/PowerOffAlarmUtility;ZZ)V

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    iget-boolean v1, v1, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    if-eqz v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setBootingVal(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 162
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->ipoBootCompleted()V

    goto :goto_0

    .line 166
    :cond_4
    const-string v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    const-string v1, "PowerOffAlarm"

    const-string v2, "DeskClock normally shutdowns device"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/PowerOffAlarmUtility;->access$300(Lcom/android/server/am/PowerOffAlarmUtility;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->createIPOWin(Landroid/content/Context;)V

    .line 170
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$000(Lcom/android/server/am/PowerOffAlarmUtility;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # invokes: Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/server/am/PowerOffAlarmUtility;->access$100(Lcom/android/server/am/PowerOffAlarmUtility;ZZ)V

    goto/16 :goto_0

    .line 173
    :cond_5
    const-string v1, "android.intent.action.normal.boot.done"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    const-string v1, "PowerOffAlarm"

    const-string v2, "ALARM_BOOT_DONE normally shutdowns device"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 181
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 182
    :cond_6
    const-string v1, "alarm.boot.remove.ipowin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/PowerOffAlarmUtility;->access$300(Lcom/android/server/am/PowerOffAlarmUtility;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->removeIPOWin(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
