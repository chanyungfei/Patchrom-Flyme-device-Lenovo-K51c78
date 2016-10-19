.class Lcom/android/server/notification/NotificationManagerService$11;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 3537
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3540
    const/4 v3, 0x0

    .line 3541
    .local v3, "isCharging":Z
    const/4 v2, 0x0

    .line 3542
    .local v2, "isBatteryFullInCharging":Z
    const/4 v4, 0x0

    .line 3543
    .local v4, "isInMidnight":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3545
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3546
    const-string v6, "level"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3547
    .local v1, "batteryLevel":I
    const-string v6, "status"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3549
    .local v5, "pluggedInStates":I
    if-lt v1, v9, :cond_4

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsFirstFull:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$6400(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3550
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsFirstFull:Z
    invoke-static {v6, v8}, Lcom/android/server/notification/NotificationManagerService;->access$6402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3552
    const/4 v3, 0x0

    .line 3561
    :goto_0
    if-lt v1, v9, :cond_0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 3562
    const/4 v3, 0x0

    .line 3563
    const/4 v2, 0x1

    .line 3566
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mCloseLightMidnightEnabled:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3567
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->isInMidnight()Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$6500(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v4

    .line 3571
    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsInMidnight:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v4, :cond_1

    .line 3572
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsInMidnight:Z
    invoke-static {v6, v4}, Lcom/android/server/notification/NotificationManagerService;->access$6602(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3573
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->LIGHT_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatelightSettings cause mIsInMidnight changed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsInMidnight:Z
    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateLightSettings()V
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3576
    :cond_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsCharging:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$6700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsBatteryFullInCharging:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$6800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v2, :cond_3

    .line 3577
    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsCharging:Z
    invoke-static {v6, v3}, Lcom/android/server/notification/NotificationManagerService;->access$6702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3578
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsBatteryFullInCharging:Z
    invoke-static {v6, v2}, Lcom/android/server/notification/NotificationManagerService;->access$6802(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3579
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->LIGHT_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "updatelightSettings 3197"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateLightSettings()V
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3584
    .end local v1    # "batteryLevel":I
    .end local v5    # "pluggedInStates":I
    :cond_3
    return-void

    .line 3554
    .restart local v1    # "batteryLevel":I
    .restart local v5    # "pluggedInStates":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsFirstFull:Z
    invoke-static {v6, v7}, Lcom/android/server/notification/NotificationManagerService;->access$6402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3555
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 3556
    const/4 v3, 0x1

    goto :goto_0

    .line 3558
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3569
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method
