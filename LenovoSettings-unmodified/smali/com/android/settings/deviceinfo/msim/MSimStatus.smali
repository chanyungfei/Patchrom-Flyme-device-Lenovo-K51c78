.class public Lcom/android/settings/deviceinfo/msim/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final BUTTON_SELECT_SUB_KEY:Ljava/lang/String; = "button_aboutphone_msim_status"

.field private static final BUTTON_SELECT_SUB_KEY_QC_DUAL:Ljava/lang/String; = "button_aboutphone_msim_status_qcom_dual"

.field private static final BUTTON_SELECT_SUB_KEY_QC_SINGLE:Ljava/lang/String; = "button_aboutphone_msim_status_qcom_single"

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field private static final TAG:Ljava/lang/String; = "MSimStatus"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mSimExist:Z

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStatus:Landroid/preference/PreferenceScreen;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimExist:Z

    .line 114
    new-instance v0, Lcom/android/settings/deviceinfo/msim/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus$1;-><init>(Lcom/android/settings/deviceinfo/msim/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    new-instance v0, Lcom/android/settings/deviceinfo/msim/MSimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus$2;-><init>(Lcom/android/settings/deviceinfo/msim/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/msim/MSimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->updateTimes()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/msim/MSimStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getSimStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/msim/MSimStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimExist:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/msim/MSimStatus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setSimPreference(Z)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 306
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 307
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 308
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 310
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSimStatus()Z
    .locals 5

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 321
    .local v0, "nSimNum":I
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 322
    .local v1, "simEnable":Z
    :goto_0
    const-string v2, "MSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check simEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return v1

    .line 321
    .end local v1    # "simEnable":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 298
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 299
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 226
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 273
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 274
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 276
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 281
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0c072e

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 4

    .prologue
    const v3, 0x7f0c072e

    .line 258
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 259
    .local v1, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "ipAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    :goto_0
    return-void

    .line 264
    :cond_0
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSimPreference(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 328
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string v3, "button_aboutphone_msim_status"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 329
    .local v0, "multiSim":Landroid/preference/PreferenceScreen;
    const-string v3, "button_aboutphone_msim_status_qcom_single"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 330
    .local v2, "singleSim":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 331
    const-string v3, "MSimStatus"

    const-string v4, "multi sim not null"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 334
    :cond_0
    if-eqz v2, :cond_1

    .line 335
    const-string v3, "MSimStatus"

    const-string v4, "single sim not null"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 338
    :cond_1
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string p2, ""

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 243
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 244
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 246
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 248
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 250
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 251
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    :goto_1
    return-void

    .line 248
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0c072e

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateSelectSubscribPref()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 176
    .local v2, "root":Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStatus:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 178
    .local v1, "nSimNum":I
    if-le v1, v5, :cond_3

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.geminisettings"

    const-string v7, "com.lenovo.geminisettings.MultiSimSettingTab"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v4, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 188
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 189
    const-string v4, "MSimStatus"

    const-string v7, "intent valid!"

    invoke-static {v4, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v7, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStatus:Landroid/preference/PreferenceScreen;

    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-lez v1, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 197
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_0
    :goto_2
    const-string v4, "button_aboutphone_msim_status_qcom_single"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 198
    .local v3, "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 200
    .restart local v1    # "nSimNum":I
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 201
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq v1, v8, :cond_7

    .line 202
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    if-lez v1, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 208
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_1
    :goto_4
    const-string v4, "button_aboutphone_msim_status_qcom_dual"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 209
    .restart local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 211
    .restart local v1    # "nSimNum":I
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 212
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-ne v1, v8, :cond_9

    .line 213
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    if-lez v1, :cond_8

    :goto_5
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 218
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_2
    :goto_6
    return-void

    .line 184
    .end local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    .restart local v1    # "nSimNum":I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    move v4, v6

    .line 190
    goto :goto_1

    .line 192
    :cond_5
    const-string v4, "MSimStatus"

    const-string v7, "intent invalid!"

    invoke-static {v4, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v4, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .restart local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    :cond_6
    move v4, v6

    .line 202
    goto :goto_3

    .line 204
    :cond_7
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_8
    move v5, v6

    .line 213
    goto :goto_5

    .line 215
    :cond_9
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method private updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 288
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 290
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 291
    const-wide/16 v2, 0x1

    .line 294
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    new-instance v2, Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;-><init>(Lcom/android/settings/deviceinfo/msim/MSimStatus;Lcom/android/settings/deviceinfo/msim/MSimStatus$1;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 133
    const v2, 0x7f060013

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->addPreferencesFromResource(I)V

    .line 135
    const-string v2, "battery_level"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 136
    const-string v2, "battery_status"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 137
    const-string v2, "up_time"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 138
    const-string v2, "button_aboutphone_msim_status"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStatus:Landroid/preference/PreferenceScreen;

    .line 140
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->updateSelectSubscribPref()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setWifiStatus()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setBtStatus()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setIpAddressStatus()V

    .line 146
    const-string v2, "ro.serialno"

    const-string v3, "N/A"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "serial":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    const-string v2, "serial_number"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void

    .line 150
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v2, "serial_number"

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 316
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    return-void
.end method
