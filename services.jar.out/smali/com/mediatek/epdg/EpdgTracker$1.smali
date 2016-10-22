.class Lcom/mediatek/epdg/EpdgTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "EpdgTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/epdg/EpdgTracker;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 103
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 105
    .local v3, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 106
    .local v1, "connected":Z
    const/4 v4, 0x0

    .line 107
    .local v4, "isConnected":Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 108
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 109
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_1

    move v4, v7

    .line 111
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v10, :cond_5

    .line 113
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;
    invoke-static {v7}, Lcom/mediatek/epdg/EpdgTracker;->access$000(Lcom/mediatek/epdg/EpdgTracker;)[Lcom/mediatek/epdg/EpdgConnection;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/mediatek/epdg/EpdgConnection;->notifyWifiConnected()V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v2    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 115
    :cond_2
    if-eqz v4, :cond_5

    .line 116
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v10, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    .end local v1    # "connected":Z
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "isConnected":Z
    :cond_3
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 121
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "state":Ljava/lang/String;
    const-string v7, "LOADED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "IMSI"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 124
    :cond_4
    const-string v7, "EpdgTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ICC:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v7}, Lcom/mediatek/epdg/EpdgTracker;->access$100(Lcom/mediatek/epdg/EpdgTracker;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 127
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;
    invoke-static {v7}, Lcom/mediatek/epdg/EpdgTracker;->access$200(Lcom/mediatek/epdg/EpdgTracker;)Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v8}, Lcom/mediatek/epdg/EpdgTracker;->access$100(Lcom/mediatek/epdg/EpdgTracker;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 140
    .end local v6    # "state":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 129
    :cond_6
    const-string v8, "com.mediatek.epdg.action.dpd"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 130
    iget-object v8, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;
    invoke-static {v8}, Lcom/mediatek/epdg/EpdgTracker;->access$000(Lcom/mediatek/epdg/EpdgTracker;)[Lcom/mediatek/epdg/EpdgConnection;

    move-result-object v8

    aget-object v7, v8, v7

    invoke-virtual {v7}, Lcom/mediatek/epdg/EpdgConnection;->setEpdgDpdAlarm()V

    .line 131
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mEpdgDpdWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/mediatek/epdg/EpdgTracker;->access$300(Lcom/mediatek/epdg/EpdgTracker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 132
    const/4 v7, 0x0

    invoke-static {v7, v10}, Lcom/mediatek/epdg/EpdgCommand;->getCommandByType(Lcom/mediatek/epdg/EpdgConfig;I)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "keepAliveCmd":Ljava/lang/String;
    :try_start_0
    # getter for: Lcom/mediatek/epdg/EpdgTracker;->sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;
    invoke-static {}, Lcom/mediatek/epdg/EpdgTracker;->access$400()Lcom/mediatek/epdg/EpdgConnector;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mediatek/epdg/EpdgConnector;->sendEpdgCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 136
    :catch_0
    move-exception v7

    goto :goto_3
.end method
