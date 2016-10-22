.class public Lcom/lenovo/settings/LenovoWirelessSettings;
.super Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;
.source "LenovoWirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final CONNECTED_TO_PROVISIONING_NETWORK_ACTION:Ljava/lang/String; = "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_MANAGE_MOBILE_PLAN:Ljava/lang/String; = "manage_mobile_plan"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_RCSE_SETTINGS:Ljava/lang/String; = "rcse_settings"

.field private static final KEY_SMS_APPLICATION:Ljava/lang/String; = "sms_application"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_LENOVO_NFC:Ljava/lang/String; = "android_nfc_settings"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_NSD:Ljava/lang/String; = "toggle_nsd"

.field private static final KEY_USB_SHARING:Ljava/lang/String; = "usb_sharing"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final MANAGE_MOBILE_PLAN_DIALOG_ID:I = 0x1

.field private static final RCSE_SETTINGS_INTENT:Ljava/lang/String; = "com.mediatek.rcse.RCSE_SETTINGS"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final SAVED_MANAGE_MOBILE_PLAN_MSG:Ljava/lang/String; = "mManageMobilePlanMessage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "WirelessSettings"

.field private static final USB_DATA_STATE:Ljava/lang/String; = "mediatek.intent.action.USB_DATA_STATE"


# instance fields
.field private mAirplaneModeEnabler:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDisableMobilePlan:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/flyme/deviceoriginalsettings/NsdEnabler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTetherSettings:Landroid/preference/Preference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mWiFiSwitchEnabler:Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;

.field private mWifiDisplay:Landroid/preference/PreferenceScreen;

.field private pluginStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/lenovo/settings/LenovoWirelessSettings$1;

    invoke-direct {v0}, Lcom/lenovo/settings/LenovoWirelessSettings$1;-><init>()V

    sput-object v0, Lcom/lenovo/settings/LenovoWirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mDisableMobilePlan:Z

    .line 287
    new-instance v0, Lcom/lenovo/settings/LenovoWirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/LenovoWirelessSettings$2;-><init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V

    iput-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 875
    new-instance v0, Lcom/lenovo/settings/LenovoWirelessSettings$4;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/LenovoWirelessSettings$4;-><init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V

    iput-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/LenovoWirelessSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/settings/LenovoWirelessSettings;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;
    .param p1, "x1"    # Lcom/android/internal/telephony/ITelephony;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/settings/LenovoWirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->updateMobileNetworkEnabled()V

    return-void
.end method

.method private initSmsApplicationSetting()V
    .locals 14

    .prologue
    .line 475
    const-string v11, "initSmsApplicationSetting:"

    invoke-direct {p0, v11}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v10

    .line 480
    .local v10, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    .line 481
    .local v1, "count":I
    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 482
    .local v3, "entries":[Ljava/lang/CharSequence;
    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 483
    .local v5, "entryValues":[Ljava/lang/CharSequence;
    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    .line 485
    .local v4, "entryImages":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 486
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 487
    .local v6, "i":I
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 488
    .local v9, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v11, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v11, v3, v6

    .line 489
    iget-object v11, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v11, v5, v6

    .line 491
    :try_start_0
    iget-object v11, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v4, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    const-string v11, "com.chinamobile.contacts.im"

    aget-object v12, v5, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    aget-object v11, v4, v6

    if-eqz v11, :cond_0

    .line 497
    :try_start_1
    aget-object v11, v4, v6

    const/16 v12, 0x90

    const/16 v13, 0x90

    invoke-static {v11, v12, v13}, Lcom/lenovo/settings/LenovoUtils;->zoomDrawableIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 498
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v11, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 504
    goto :goto_0

    .line 492
    :catch_0
    move-exception v2

    .line 493
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v4, v6

    goto :goto_1

    .line 505
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    iget-object v11, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    invoke-virtual {v11, v3}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 506
    iget-object v11, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    invoke-virtual {v11, v5}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 507
    iget-object v11, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    invoke-virtual {v11, v4}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 508
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->updateSmsApplicationSetting()V

    .line 509
    return-void

    .line 499
    .restart local v9    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1036
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1038
    .local v1, "installed":Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    const/4 v1, 0x1

    .line 1043
    :goto_0
    return v1

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 566
    invoke-static {p0}, Lcom/lenovo/settings/LenovoUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v1

    .line 574
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 533
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private updateMobileNetworkEnabled()V
    .locals 0

    .prologue
    .line 873
    return-void
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 458
    const-string v4, "updateSmsApplicationSetting:"

    invoke-direct {p0, v4}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 460
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 464
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 465
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    iget-object v4, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    invoke-virtual {v4, v1}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->setValueIndex(I)V

    .line 467
    iget-object v4, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    iget-object v5, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 464
    .restart local v1    # "i":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1029
    const v0, 0x7f0c0bd2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1016
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1017
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1024
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1025
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 586
    invoke-super/range {p0 .. p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 587
    if-eqz p1, :cond_0

    .line 588
    const-string v28, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 590
    :cond_0
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 591
    const-string v28, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 592
    const-string v28, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 594
    const v28, 0x7f060054

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->addPreferencesFromResource(I)V

    .line 597
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v28

    if-eqz v28, :cond_12

    const/4 v11, 0x1

    .line 599
    .local v11, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 600
    .local v4, "activity":Landroid/app/Activity;
    new-instance v28, Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;

    new-instance v29, Landroid/widget/Switch;

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v4, v1}, Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mWiFiSwitchEnabler:Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;

    .line 601
    const-string v28, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 602
    const-string v28, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 603
    .local v16, "nfc":Landroid/preference/CheckBoxPreference;
    const-string v28, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 606
    .local v5, "androidBeam":Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    .line 609
    .local v25, "screen":Landroid/preference/PreferenceScreen;
    const-string v28, "android_nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    .line 610
    .local v17, "nfcSettings":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 641
    :cond_1
    const-string v28, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 656
    :cond_2
    const-string v28, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mWifiDisplay:Landroid/preference/PreferenceScreen;

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    .line 658
    .local v13, "mContext":Landroid/content/Context;
    const-string v28, "display"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 660
    .local v6, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v26

    .line 661
    .local v26, "status":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v28

    if-nez v28, :cond_3

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mWifiDisplay:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 669
    :cond_3
    const-string v28, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    .line 672
    .local v18, "nsd":Landroid/preference/CheckBoxPreference;
    new-instance v28, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v4, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mAirplaneModeEnabler:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    .line 674
    const-string v28, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->initSmsApplicationSetting()V

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 686
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "airplane_mode_toggleable_radios"

    invoke-static/range {v28 .. v29}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 690
    .local v27, "toggleable":Ljava/lang/String;
    const/4 v12, 0x0

    .line 692
    .local v12, "isWimaxEnabled":Z
    if-nez v12, :cond_13

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    .line 694
    .local v23, "root":Landroid/preference/PreferenceScreen;
    const-string v28, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 695
    .local v21, "ps":Landroid/preference/Preference;
    if-eqz v21, :cond_4

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 703
    .end local v21    # "ps":Landroid/preference/Preference;
    .end local v23    # "root":Landroid/preference/PreferenceScreen;
    :cond_4
    :goto_1
    const-string v28, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 706
    if-eqz v27, :cond_5

    const-string v28, "wifi"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_6

    .line 707
    :cond_5
    const-string v28, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    const-string v29, "toggle_airplane"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 709
    :cond_6
    if-eqz v11, :cond_7

    .line 710
    const-string v28, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 711
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    .line 713
    :cond_7
    const-string v28, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 720
    if-eqz v27, :cond_8

    const-string v28, "nfc"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_9

    .line 722
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v28, v0

    if-nez v28, :cond_15

    .line 728
    :goto_2
    const-string v28, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    const-string v29, "toggle_airplane"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 734
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v28, v0

    if-nez v28, :cond_16

    .line 741
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    .line 753
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mDisableMobilePlan:Z

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 754
    const-string v28, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 766
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f070010

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 768
    .local v10, "isMobilePlanEnabled":Z
    if-nez v10, :cond_b

    .line 769
    const-string v28, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 770
    .local v20, "pref":Landroid/preference/Preference;
    if-eqz v20, :cond_b

    .line 771
    const-string v28, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 774
    .end local v20    # "pref":Landroid/preference/Preference;
    :cond_b
    const-string v28, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 775
    const-string v28, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v28

    if-nez v28, :cond_c

    .line 779
    const-string v28, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    .line 784
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "android.hardware.type.television"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 785
    const-string v28, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 789
    :cond_d
    const-string v28, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 790
    .local v15, "mGlobalProxy":Landroid/preference/Preference;
    const-string v28, "device_policy"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    .line 793
    .local v14, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 794
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v28

    if-nez v28, :cond_17

    const/16 v28, 0x1

    :goto_4
    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 798
    const-string v28, "connectivity"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 799
    const-string v28, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    .line 811
    const-string v28, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x112005b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 816
    .local v9, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v9, :cond_e

    .line 817
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 819
    .local v19, "pm":Landroid/content/pm/PackageManager;
    const-string v28, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 821
    const/4 v9, 0x0

    .line 827
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    :cond_e
    :goto_5
    if-nez v11, :cond_f

    if-nez v9, :cond_10

    .line 828
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    .line 829
    .restart local v23    # "root":Landroid/preference/PreferenceScreen;
    const-string v28, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 830
    .restart local v21    # "ps":Landroid/preference/Preference;
    if-eqz v21, :cond_10

    .line 831
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 834
    .end local v21    # "ps":Landroid/preference/Preference;
    .end local v23    # "root":Landroid/preference/PreferenceScreen;
    :cond_10
    const-string v28, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 837
    new-instance v8, Landroid/content/Intent;

    const-string v28, "com.mediatek.rcse.RCSE_SETTINGS"

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    .line 839
    .local v22, "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v22, :cond_11

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v28

    if-nez v28, :cond_18

    .line 840
    :cond_11
    const-string v28, "WirelessSettings"

    const-string v29, "com.mediatek.rcse.RCSE_SETTINGS is not installed"

    invoke-static/range {v28 .. v29}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    const-string v29, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 847
    :goto_6
    new-instance v28, Landroid/content/IntentFilter;

    const-string v29, "mediatek.intent.action.USB_DATA_STATE"

    invoke-direct/range {v28 .. v29}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v28, v0

    const-string v29, "android.hardware.usb.action.USB_STATE"

    invoke-virtual/range {v28 .. v29}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 855
    .local v24, "rootprs":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string v29, "wireless_settings"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/Utils;->addPreferencePluginSortSpecialWireless(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V

    .line 857
    return-void

    .line 597
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "androidBeam":Landroid/preference/PreferenceScreen;
    .end local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "isCellBroadcastAppLinkEnabled":Z
    .end local v10    # "isMobilePlanEnabled":Z
    .end local v11    # "isSecondaryUser":Z
    .end local v12    # "isWimaxEnabled":Z
    .end local v13    # "mContext":Landroid/content/Context;
    .end local v14    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v15    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v16    # "nfc":Landroid/preference/CheckBoxPreference;
    .end local v17    # "nfcSettings":Landroid/preference/PreferenceScreen;
    .end local v18    # "nsd":Landroid/preference/CheckBoxPreference;
    .end local v22    # "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "rootprs":Landroid/preference/PreferenceScreen;
    .end local v25    # "screen":Landroid/preference/PreferenceScreen;
    .end local v26    # "status":Landroid/hardware/display/WifiDisplayStatus;
    .end local v27    # "toggleable":Ljava/lang/String;
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 697
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v5    # "androidBeam":Landroid/preference/PreferenceScreen;
    .restart local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v11    # "isSecondaryUser":Z
    .restart local v12    # "isWimaxEnabled":Z
    .restart local v13    # "mContext":Landroid/content/Context;
    .restart local v16    # "nfc":Landroid/preference/CheckBoxPreference;
    .restart local v17    # "nfcSettings":Landroid/preference/PreferenceScreen;
    .restart local v18    # "nsd":Landroid/preference/CheckBoxPreference;
    .restart local v25    # "screen":Landroid/preference/PreferenceScreen;
    .restart local v26    # "status":Landroid/hardware/display/WifiDisplayStatus;
    .restart local v27    # "toggleable":Ljava/lang/String;
    :cond_13
    if-eqz v27, :cond_14

    const-string v28, "wimax"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    if-eqz v12, :cond_4

    .line 699
    :cond_14
    const-string v28, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    goto/16 :goto_1

    .line 725
    :cond_15
    const-string v28, "toggle_airplane"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 747
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    goto/16 :goto_3

    .line 794
    .restart local v10    # "isMobilePlanEnabled":Z
    .restart local v14    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v15    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_17
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 824
    .restart local v9    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v7

    .line 825
    .local v7, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 843
    .end local v7    # "ignored":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v22    # "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_18
    const-string v28, "WirelessSettings"

    const-string v29, "com.mediatek.rcse.RCSE_SETTINGS is installed"

    invoke-static/range {v28 .. v29}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v28, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 514
    packed-switch p1, :pswitch_data_0

    .line 529
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 516
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/lenovo/settings/LenovoWirelessSettings$3;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/LenovoWirelessSettings$3;-><init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1008
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onDestroy()V

    .line 1009
    const-string v0, "WirelessSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    return-void
.end method

.method public onManageMobilePlanClick()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0c07bc

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 411
    const-string v6, "onManageMobilePlanClick:"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 412
    iput-object v10, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 415
    .local v4, "resources":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 416
    .local v2, "ni":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 418
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 420
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "EXTRA_URL"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 423
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    iput-object v10, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 451
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onManageMobilePlanClick: message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v8}, Lcom/lenovo/settings/LenovoWirelessSettings;->showDialog(I)V

    .line 455
    :cond_0
    return-void

    .line 427
    .restart local v5    # "url":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "operatorName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 431
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 433
    const v6, 0x7f0c07bb

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 436
    :cond_2
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_3
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 444
    .end local v3    # "operatorName":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-nez v6, :cond_5

    .line 446
    const v6, 0x7f0c07bd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 449
    :cond_5
    const v6, 0x7f0c07be

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 965
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPause()V

    .line 967
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 969
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 971
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 974
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mAirplaneModeEnabler:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mAirplaneModeEnabler:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->pause()V

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    if-eqz v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->pause()V

    .line 993
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNsdEnabler:Lcom/flyme/deviceoriginalsettings/NsdEnabler;

    if-eqz v1, :cond_2

    .line 994
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNsdEnabler:Lcom/flyme/deviceoriginalsettings/NsdEnabler;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/NsdEnabler;->pause()V

    .line 1003
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    .line 537
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/flyme/deviceoriginalsettings/SmsListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c07b7

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0279

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 543
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->updateSmsApplicationSetting()V

    .line 546
    :cond_0
    return v8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 364
    invoke-virtual {p0, p2}, Lcom/lenovo/settings/LenovoWirelessSettings;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wimax_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->onManageMobilePlanClick()V

    .line 404
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mWifiDisplay:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c02f7

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0279

    const-class v4, Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 905
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onResume()V

    .line 907
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mAirplaneModeEnabler:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    if-eqz v2, :cond_0

    .line 908
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mAirplaneModeEnabler:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->resume()V

    .line 922
    :cond_0
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    if-eqz v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->resume()V

    .line 927
    :cond_1
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNsdEnabler:Lcom/flyme/deviceoriginalsettings/NsdEnabler;

    if-eqz v2, :cond_2

    .line 928
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNsdEnabler:Lcom/flyme/deviceoriginalsettings/NsdEnabler;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/NsdEnabler;->resume()V

    .line 931
    :cond_2
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mWiFiSwitchEnabler:Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;->getRunningState()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "status":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 941
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 943
    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(), call state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 952
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 956
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 958
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 898
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onStart()V

    .line 900
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->initSmsApplicationSetting()V

    .line 901
    return-void
.end method
