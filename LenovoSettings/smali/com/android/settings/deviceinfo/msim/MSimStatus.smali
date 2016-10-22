.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$MyHandler;
    }
.end annotation


# static fields
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

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 150
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->updateTimes()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 533
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 534
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 535
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 537
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 525
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 526
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 528
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
    .line 378
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 379
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 500
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 501
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 503
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 511
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 508
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0c0722

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 4

    .prologue
    const v3, 0x7f0c0722

    .line 470
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 471
    .local v1, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "ipAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 497
    :goto_0
    return-void

    .line 489
    :cond_0
    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string p2, ""

    .line 403
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 455
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 456
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 458
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 460
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 462
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 463
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    :goto_1
    return-void

    .line 460
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 465
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0c0722

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

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

    .line 299
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 300
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const-string v4, "button_aboutphone_msim_status"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 301
    .local v3, "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 303
    .local v1, "nSimNum":I
    if-le v1, v5, :cond_3

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.geminisettings"

    const-string v7, "com.lenovo.geminisettings.MultiSimSettingTab"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 312
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 313
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 314
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-lez v1, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 320
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_0
    :goto_2
    const-string v4, "button_aboutphone_msim_status_qcom_single"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 321
    .restart local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 323
    .restart local v1    # "nSimNum":I
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 324
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq v1, v8, :cond_7

    .line 325
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    if-lez v1, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 331
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_1
    :goto_4
    const-string v4, "button_aboutphone_msim_status_qcom_dual"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 332
    .restart local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 334
    .restart local v1    # "nSimNum":I
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 335
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-ne v1, v8, :cond_9

    .line 336
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    if-lez v1, :cond_8

    :goto_5
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 341
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_2
    :goto_6
    return-void

    .line 309
    .restart local v1    # "nSimNum":I
    :cond_3
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    move v4, v6

    .line 314
    goto :goto_1

    .line 316
    :cond_5
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_6
    move v4, v6

    .line 325
    goto :goto_3

    .line 327
    :cond_7
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_8
    move v5, v6

    .line 336
    goto :goto_5

    .line 338
    :cond_9
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method private updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 515
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 517
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 518
    const-wide/16 v2, 0x1

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    new-instance v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$MyHandler;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 183
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->addPreferencesFromResource(I)V

    .line 185
    const-string v1, "battery_level"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 186
    const-string v1, "battery_status"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 187
    const-string v1, "up_time"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 217
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->updateSelectSubscribPref()V

    .line 236
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->setWifiStatus()V

    .line 237
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->setBtStatus()V

    .line 238
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->setIpAddressStatus()V

    .line 241
    const-string v1, "ro.serialno"

    const-string v2, "N/A"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "serial":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    const-string v1, "serial_number"

    invoke-direct {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v1, "serial_number"

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 290
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 264
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 278
    return-void
.end method
