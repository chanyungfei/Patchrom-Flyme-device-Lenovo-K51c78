.class public final Lcom/android/settings/WiFiStatusEnabler;
.super Ljava/lang/Object;
.source "WiFiStatusEnabler.java"

# interfaces
.implements Lcom/lenovo/settings/LenovoStatusStateOperation;


# static fields
.field private static final TAG:Ljava/lang/String; = "WiFiStatusEnabler"


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConnected:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/android/settings/WiFiStatusEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WiFiStatusEnabler$1;-><init>(Lcom/android/settings/WiFiStatusEnabler;)V

    iput-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mIsConnected:Z

    .line 51
    iput-object p1, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 55
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mConnManager:Landroid/net/ConnectivityManager;

    .line 56
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/WiFiStatusEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WiFiStatusEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/settings/WiFiStatusEnabler;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/WiFiStatusEnabler;)Lcom/lenovo/settings/LenovoStatusStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/WiFiStatusEnabler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    return-object v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 97
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 99
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 101
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getRunningState()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 69
    iget-object v5, p0, Lcom/android/settings/WiFiStatusEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 70
    .local v3, "wifiState":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    move v1, v4

    .line 71
    .local v1, "isEnabled":Z
    :goto_0
    const-string v5, "WiFiStatusEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getRunningState] isEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz v1, :cond_3

    .line 73
    const-string v5, "WiFiStatusEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[[getRunningState]] mIsConnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/WiFiStatusEnabler;->mIsConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v5, p0, Lcom/android/settings/WiFiStatusEnabler;->mIsConnected:Z

    if-nez v5, :cond_0

    .line 75
    iget-object v5, p0, Lcom/android/settings/WiFiStatusEnabler;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 76
    .local v0, "info":Landroid/net/NetworkInfo;
    const-string v4, "WiFiStatusEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[[getRunningState]] isNetworkConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/WiFiStatusEnabler;->mIsConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/WiFiStatusEnabler;->mIsConnected:Z

    .line 79
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/WiFiStatusEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 80
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-boolean v4, p0, Lcom/android/settings/WiFiStatusEnabler;->mIsConnected:Z

    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/WiFiStatusEnabler;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_1
    return-object v4

    .line 70
    .end local v1    # "isEnabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    .restart local v1    # "isEnabled":Z
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0c016b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 86
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0c016c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WiFiStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WiFiStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/WiFiStatusEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method public setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    .line 93
    return-void
.end method
