.class final Lcom/android/server/wifi/WifiNotificationController;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNotificationController$2;,
        Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field private static final ICON_NETWORKS_AVAILABLE:I = 0x1080652

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiNotificationController"


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mContext:Landroid/content/Context;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mShowReselectDialog:Z

.field private mWaitForScanResult:Z

.field private volatile mWifiState:I

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v1, Landroid/net/NetworkInfo;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    const-string v4, ""

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 117
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    .line 118
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    .line 121
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 123
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.net.wifi.WIFI_CLEAR_NOTIFICATION_SHOW_FLAG_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$1;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_repeat_delay"

    const/16 v3, 0x384

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 178
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    .line 179
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->register()V

    .line 180
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiNotificationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return p1
.end method

.method private declared-synchronized checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 15
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_0
    iget v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x3

    if-eq v11, v12, :cond_1

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_1
    :try_start_1
    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 193
    .local v8, "state":Landroid/net/NetworkInfo$State;
    if-eqz p1, :cond_2

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    .line 197
    :cond_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 198
    const-string v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkAndSetNotification, mWaitForScanResult:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    if-eqz v11, :cond_3

    if-nez p2, :cond_3

    .line 200
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->showSwitchDialog()V

    .line 203
    :cond_3
    const-string v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkAndSetNotification, state:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v8, v11, :cond_4

    sget-object v11, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v8, v11, :cond_a

    .line 208
    :cond_4
    if-eqz p2, :cond_9

    .line 209
    const/4 v6, 0x0

    .line 210
    .local v6, "numOpenNetworks":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    .line 211
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 215
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "[ESS]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 217
    add-int/lit8 v6, v6, 0x1

    .line 210
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 221
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_6
    const-string v11, "wifi"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 222
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 223
    .local v10, "wifiService":Landroid/net/wifi/IWifiManager;
    const/4 v5, -0x1

    .line 225
    .local v5, "networkId":I
    :try_start_2
    invoke-interface {v10}, Landroid/net/wifi/IWifiManager;->syncGetConnectingNetworkId()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 230
    :goto_2
    :try_start_3
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11, v5}, Lcom/android/server/wifi/WifiStateMachine;->isWifiConnecting(I)Z

    move-result v4

    .line 231
    .local v4, "isConnecting":Z
    const-string v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connecting networkId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isConnecting:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 233
    if-nez v4, :cond_0

    .line 237
    iget-boolean v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    if-eqz v11, :cond_7

    .line 238
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->showSwitchDialog()V

    .line 243
    :cond_7
    const-string v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Open network num:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-lez v6, :cond_a

    .line 248
    iget v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    if-ltz v11, :cond_0

    .line 257
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v9

    .line 258
    .local v9, "supplicantState":Landroid/net/wifi/SupplicantState;
    const-string v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Supplicant state is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " when interpret scan results."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v11, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v11}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v11

    invoke-virtual {v9}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v12

    if-gt v11, v12, :cond_8

    invoke-virtual {v9}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v11

    sget-object v12, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v12}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 261
    :cond_8
    if-nez v4, :cond_0

    .line 262
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, v11, v6, v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 190
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "i":I
    .end local v4    # "isConnecting":Z
    .end local v5    # "networkId":I
    .end local v6    # "numOpenNetworks":I
    .end local v8    # "state":Landroid/net/NetworkInfo$State;
    .end local v9    # "supplicantState":Landroid/net/wifi/SupplicantState;
    .end local v10    # "wifiService":Landroid/net/wifi/IWifiManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 226
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v3    # "i":I
    .restart local v5    # "networkId":I
    .restart local v6    # "numOpenNetworks":I
    .restart local v8    # "state":Landroid/net/NetworkInfo$State;
    .restart local v10    # "wifiService":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v11, "WifiNotificationController"

    const-string v12, "syncGetConnectingNetworkId failed!"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 270
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v5    # "networkId":I
    .end local v6    # "numOpenNetworks":I
    .end local v10    # "wifiService":Landroid/net/wifi/IWifiManager;
    :cond_9
    const-string v11, "WifiNotificationController"

    const-string v12, "scanResults is null"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {p0, v11, v12, v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private isDataAvailable()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 419
    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 420
    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 422
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v4, :cond_1

    .line 438
    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v5

    .line 426
    .restart local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 427
    .local v1, "isSim1Insert":Z
    const/4 v2, 0x0

    .line 428
    .local v2, "isSim2Insert":Z
    const-string v7, "ro.mtk_gemini_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 429
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 431
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    move v5, v6

    .line 438
    goto :goto_0

    .line 434
    .end local v1    # "isSim1Insert":Z
    .end local v2    # "isSim2Insert":Z
    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "WifiNotificationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get phone service, error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized resetNotification()V
    .locals 4

    .prologue
    .line 283
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "numNetworks"    # I
    .param p3, "force"    # Z
    .param p4, "delay"    # I

    .prologue
    const/4 v10, 0x0

    const v9, 0x1080652

    const/4 v8, 0x0

    .line 307
    if-eqz p1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    if-nez v4, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v4, :cond_2

    if-eqz p3, :cond_0

    .line 315
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 319
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_6

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 323
    const-string v4, "WifiNotificationController"

    const-string v5, "Not enough time has passed to show the notification again."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    if-nez v4, :cond_4

    .line 329
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    .line 330
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 331
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iput v9, v4, Landroid/app/Notification;->icon:I

    .line 332
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 337
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.wifi"

    const-string v5, "com.android.wifi.Settings$WifiSettingsActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v4, "notification"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v10, v8, v6}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 348
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1140015

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 350
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1140016

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 352
    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 353
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, v4, Landroid/app/Notification;->color:I

    .line 355
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 360
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v4, :cond_5

    .line 361
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 366
    :goto_1
    const-string v4, "WifiNotificationController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pop up notification, mNotification.sound:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v8, v9, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 376
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    goto/16 :goto_0

    .line 364
    .restart local v0    # "details":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iput-object v8, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 372
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_6
    const-string v4, "WifiNotificationController"

    const-string v5, "cancel notification"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v8, v9, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2
.end method

.method private showSwitchDialog()V
    .locals 5

    .prologue
    .line 442
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    .line 443
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->isDataAvailable()Z

    move-result v1

    .line 444
    .local v1, "isDataAvailable":Z
    const-string v2, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSwitchDialog, isDataAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShowReselectDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    if-eqz v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    if-eqz v1, :cond_0

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action_WIFI_FAILOVER_GPRS_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationRepeatTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumScansSinceNetworkStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public setWaitForScanResult(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    .line 459
    return-void
.end method
