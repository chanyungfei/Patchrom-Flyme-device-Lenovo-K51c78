.class Lcom/android/server/wifi/WifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v6, 0x26005

    .line 366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    const-string v1, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle ACTION_DEVICE_IDLE, Sleep Policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mSleepPolicy:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$000(Lcom/android/server/wifi/WifiController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mSleepPolicy:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$000(Lcom/android/server/wifi/WifiController;)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 376
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->inWhiteList()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$100(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    const-string v1, "WifiController"

    const-string v4, "Handle ACTION_DEVICE_IDLE, stay ACTIVE state since APP in white list is running"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_2

    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 386
    const-string v1, "WifiController"

    const-string v4, "Handle ACTION_DEVICE_IDLE, enter IDLE state since WiFi is disconnected"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->isHaveWifiFlow()V

    .line 392
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->wifi_flow_count:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$200(Lcom/android/server/wifi/WifiController;)I

    move-result v1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    .line 394
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 396
    const-string v1, "WifiController"

    const-string v4, "Handle ACTION_DEVICE_IDLE, enter IDLE state according to Smart Sleep Policy"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long v2, v4, v6

    .line 402
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$300(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 404
    const-string v1, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle ACTION_DEVICE_IDLE, double check WiFi data flow ( count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->wifi_flow_count:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$200(Lcom/android/server/wifi/WifiController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v2    # "triggerTime":J
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 413
    :cond_5
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iput-object v1, v4, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto/16 :goto_0
.end method
