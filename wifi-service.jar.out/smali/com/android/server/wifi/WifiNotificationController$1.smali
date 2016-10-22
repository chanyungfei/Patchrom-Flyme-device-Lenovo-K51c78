.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNotificationController;->access$002(Lcom/android/server/wifi/WifiNotificationController;I)I

    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$202(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$302(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiNotificationController;->access$402(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 148
    const-string v0, "WifiNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received NETWORK_STATE_CHANGED_ACTION, mNetworkInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/android/server/wifi/WifiNotificationController$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$202(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v1, "SHOW_RESELECT_DIALOG"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNotificationController;->access$302(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 165
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$500(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    goto/16 :goto_0

    .line 168
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_CLEAR_NOTIFICATION_SHOW_FLAG_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$702(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
