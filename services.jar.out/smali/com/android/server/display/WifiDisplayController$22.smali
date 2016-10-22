.class Lcom/android/server/display/WifiDisplayController$22;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1915
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1916
    .local v1, "action":Ljava/lang/String;
    const-string v10, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1919
    const-string v10, "wifi_p2p_state"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v5, 0x1

    .line 1923
    .local v5, "enabled":Z
    :goto_0
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V
    invoke-static {v10, v5}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2096
    .end local v5    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    .line 1919
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1927
    :cond_2
    const-string v10, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1928
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1929
    const-string v10, "WifiDisplayController"

    const-string v11, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_3
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    .line 1933
    :cond_4
    const-string v10, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1934
    const-string v10, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 1937
    .local v7, "networkInfo":Landroid/net/NetworkInfo;
    const-string v10, "reason="

    const/4 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1938
    .local v9, "reason":I
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1939
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", reason = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :goto_2
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateWifiP2pChannelId(ZLandroid/content/Intent;)V
    invoke-static {v10, v11, v0}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V

    .line 1950
    const-string v10, "ro.mtk_wfd_sink_support"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$1100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1951
    const/4 v10, -0x2

    if-eq v9, v10, :cond_0

    .line 1952
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleSinkP2PConnection(Landroid/net/NetworkInfo;)V
    invoke-static {v10, v7}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    goto/16 :goto_1

    .line 1942
    :cond_5
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: isConnected? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", reason = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1958
    :cond_6
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V
    invoke-static {v10, v7, v9}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V

    .line 1960
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_1

    .line 1963
    .end local v7    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "reason":I
    :cond_7
    const-string v10, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1964
    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v10, "wifiP2pDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v11, v10}, Lcom/android/server/display/WifiDisplayController;->access$4202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1966
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1967
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$4200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1972
    :cond_8
    const-string v10, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1973
    const/4 v8, 0x0

    .line 1974
    .local v8, "playerID":I
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v11, "isPlaying"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$5802(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1975
    const-string v10, "playerId"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1976
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received DRM_CONTENT_MEDIAPLAYER: isPlaying = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", player = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isConnected = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$5900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isConnecting = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$3600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$5900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eq v10, v11, :cond_9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$3600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-ne v10, v11, :cond_0

    .line 1983
    :cond_9
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-ne v10, v11, :cond_a

    .line 1985
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v10, v8}, Lcom/android/server/display/WifiDisplayController;->access$6002(Lcom/android/server/display/WifiDisplayController;I)I

    goto/16 :goto_1

    .line 1987
    :cond_a
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v10

    if-eq v10, v8, :cond_0

    .line 1990
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "player ID doesn\'t match last time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1996
    .end local v8    # "playerID":I
    :cond_b
    const-string v10, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1997
    const-string v10, "discoveryState"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1999
    .local v4, "discoveryState":I
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2000
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received WIFI_P2P_DISCOVERY_CHANGED_ACTION: discoveryState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_c
    const/4 v10, 0x1

    if-ne v4, v10, :cond_0

    .line 2004
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 2008
    .end local v4    # "discoveryState":I
    :cond_d
    const-string v10, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2009
    const-string v10, "WifiDisplayController"

    const-string v11, "Received android.intent.action.ACTION_PRE_SHUTDOWN, do disconnect anyway"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 2014
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2017
    :cond_e
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2018
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/RemoteDisplay;->dispose()V

    goto/16 :goto_1

    .line 2022
    :cond_f
    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 2023
    const-string v10, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 2026
    .local v6, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 2027
    .local v3, "connected":Z
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    if-eq v3, v10, :cond_0

    .line 2031
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v10, v3}, Lcom/android/server/display/WifiDisplayController;->access$6202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2033
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2034
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 2035
    .local v2, "conInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_10

    .line 2036
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$6402(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2037
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$6502(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2038
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v11

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$6602(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2045
    .end local v2    # "conInfo":Landroid/net/wifi/WifiInfo;
    :cond_10
    :goto_3
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received NETWORK_STATE_CHANGED,con:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",SSID:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",Freq:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$6500(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",netId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$6600(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const-string v10, "ro.mtk_wfd_sink_support"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$1100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2049
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->setSinkMiracastMode()V
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6700(Lcom/android/server/display/WifiDisplayController;)V

    .line 2053
    :cond_11
    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    if-eqz v10, :cond_13

    sget-object v10, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    :goto_4
    # invokes: Lcom/android/server/display/WifiDisplayController;->handleChannelConflictProcedure(Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V
    invoke-static {v11, v10}, Lcom/android/server/display/WifiDisplayController;->access$4300(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V

    goto/16 :goto_1

    .line 2041
    :cond_12
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$6402(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2042
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$6502(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2043
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v11, -0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$6602(Lcom/android/server/display/WifiDisplayController;I)I

    goto/16 :goto_3

    .line 2053
    :cond_13
    sget-object v10, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    goto :goto_4

    .line 2058
    .end local v3    # "connected":Z
    .end local v6    # "info":Landroid/net/NetworkInfo;
    :cond_14
    const-string v10, "com.mediatek.wifi.p2p.GO.GCrequest.connect"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2059
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v11, "deviceName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$6802(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2061
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received WFD_SINK_GC_REQUEST_CONNECT, mSinkDeviceName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$6800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v11, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 2064
    const-string v10, "WifiDisplayController"

    const-string v11, "State is wrong. Decline directly !!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/net/wifi/p2p/WifiP2pManager;->setGCInviteResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_1

    .line 2069
    :cond_15
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2071
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v11, 0x8

    # invokes: Lcom/android/server/display/WifiDisplayController;->showDialog(I)V
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$7000(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    .line 2075
    :cond_16
    const-string v10, "com.mediatek.wifi.p2p.OP.channel"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2076
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v11, "p2pOperFreq"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    # setter for: Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I
    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$7102(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2078
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received WFD_CHANNEL_CONFLICT_OCCURS, p2pOperFreq:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$7100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$7100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 2080
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->startChannelConflictProcedure()V
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$7200(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 2083
    :cond_17
    const-string v10, "com.mediatek.wifi.p2p.freq.conflict"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2084
    const-string v10, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received WFD_SINK_CHANNEL_CONFLICT_OCCURS, mSinkEnabled:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$1100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", apConnected:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const-string v10, "ro.mtk_wfd_sink_support"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$1100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2088
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2091
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->notifyApDisconnected()V
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$7300(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1
.end method
