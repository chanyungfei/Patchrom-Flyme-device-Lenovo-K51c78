.class public Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler$1;-><init>(Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 83
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 84
    if-eqz p2, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 88
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    return-void

    .line 83
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private enableWifiSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 111
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    .line 112
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 117
    :goto_1
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    .line 114
    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    packed-switch p1, :pswitch_data_0

    .line 218
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0620

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 220
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 222
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0696

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 196
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0697

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 209
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 168
    const/4 v11, 0x0

    .line 169
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 171
    .local v10, "wifiErrored":Z
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 172
    check-cast v8, Ljava/lang/String;

    .line 173
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 174
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 177
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 178
    check-cast v8, Ljava/lang/String;

    .line 179
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 180
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 179
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 177
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 184
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 185
    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 186
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 190
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 187
    :cond_7
    if-eqz v10, :cond_6

    .line 188
    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v13, 0x7f0c0620

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 102
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 125
    .local v2, "wifiState":I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 128
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 145
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "wifiSavedState":I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_1
    if-ne v1, v6, :cond_3

    .line 153
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 154
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    .end local v1    # "wifiSavedState":I
    :cond_3
    return-void

    .line 137
    :cond_4
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v4, 0x7f0c0620

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 149
    .restart local v1    # "wifiSavedState":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10404aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0698

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    return-void

    .line 162
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
