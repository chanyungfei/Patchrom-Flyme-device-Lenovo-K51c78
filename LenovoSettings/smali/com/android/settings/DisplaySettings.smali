.class public Lcom/flyme/deviceoriginalsettings/DisplaySettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final ACTION_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field private static final DLG_GLOBAL_CHANGE_WARNING:I = 0x1

.field public static final EFFECT_OF_SCREEN_KEY:Ljava/lang/String; = "teos_settings"

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final KEY_BUTTON_BRIGHTNESS:Ljava/lang/String; = "button_brightness"

.field private static final KEY_CLEAR_MOTION:Ljava/lang/String; = "clear_motion"

.field private static final KEY_DISPLAY_CLEAR_MOTION:Ljava/lang/String; = "persist.sys.display.clearMotion"

.field private static final KEY_DISPLAY_CLEAR_MOTION_DIMMED:Ljava/lang/String; = "sys.display.clearMotion.dimmed"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_HOME:Ljava/lang/String; = "home"

.field private static final KEY_LCD_INVERT:Ljava/lang/String; = "lcd_invert"

.field private static final KEY_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_SMART_ROTATION:Ljava/lang/String; = "smart_rotation"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final SCREEN_SMART_ROTATION:Ljava/lang/String; = "screen_smart_rotation"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mButtonBrightness:Landroid/preference/ListPreference;

.field private mClearMotion:Landroid/preference/SwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mLCDInvert:Landroid/preference/SwitchPreference;

.field private mNight:Landroid/preference/SwitchPreference;

.field private mNightModeObserver:Landroid/database/ContentObserver;

.field private mNotificationPulse:Landroid/preference/SwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSmartRotatinObserver:Landroid/database/ContentObserver;

.field private mSmartRotation:Lcom/lenovo/settings/SmartRotationSetting;

.field private mSmartRotationPref:Landroid/preference/ListPreference;

.field private mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiDisplay:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mbrightness:Landroid/preference/PreferenceScreen;

.field private mhome:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$1;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$1;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 199
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotatinObserver:Landroid/database/ContentObserver;

    .line 226
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 234
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 246
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 568
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$6;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 1158
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Lcom/lenovo/settings/SmartRotationSetting;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotation:Lcom/lenovo/settings/SmartRotationSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/DisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateTimeoutPreference(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateWifiDisplaySummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Lcom/flyme/deviceoriginalsettings/WarnedListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateClearMotionStatus()V

    return-void
.end method

.method private clearMotionStyle()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 584
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c03bb

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "title":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 586
    .local v0, "spanText":Landroid/text/SpannableString;
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    .line 587
    .local v1, "strLen":I
    new-instance v3, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v3}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 588
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 589
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 664
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 665
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 699
    :goto_1
    return-void

    .line 664
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 668
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 669
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 670
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 673
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 674
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 675
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 679
    .end local v8    # "timeout":J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 680
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 681
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 685
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 686
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 698
    .end local v7    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 687
    .restart local v7    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-nez v11, :cond_5

    .line 691
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 698
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private getTimoutValue()I
    .locals 8

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 603
    .local v1, "currentValue":I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---currentValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "bestMatch":I
    const/4 v3, 0x0

    .line 606
    .local v3, "timeout":I
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 608
    .local v4, "valuesTimeout":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 609
    aget-object v5, v4, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 610
    if-ne v1, v3, :cond_0

    .line 619
    .end local v1    # "currentValue":I
    :goto_1
    return v1

    .line 613
    .restart local v1    # "currentValue":I
    :cond_0
    if-le v1, v3, :cond_1

    .line 614
    move v0, v2

    .line 608
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    :cond_2
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---bestMatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    aget-object v5, v4, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 911
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateButtonBrightnessState()V
    .locals 4

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantIntegerBUTTON_BRIGHTNESS_MODE_AUTOMATIC()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 899
    .local v0, "state":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 901
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 903
    :cond_0
    return-void
.end method

.method private updateClearMotionStatus()V
    .locals 3

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1168
    const-string v0, "DisplaySettings"

    const-string v1, "updateClearMotionStatus"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.display.clearMotion"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1170
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    const-string v1, "sys.display.clearMotion.dimmed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1172
    :cond_0
    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 891
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 851
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 852
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 853
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 857
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "persist.sys.button_bkg_ctrl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 859
    .local v0, "isSupportLENOVO_BUTTON_BKG_CTRL":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 860
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateButtonBrightnessState()V

    .line 864
    :cond_2
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateWifiDisplaySummary()V

    .line 865
    return-void
.end method

.method private updateTimeoutPreference(I)V
    .locals 6
    .param p1, "currentTimeout"    # I

    .prologue
    .line 869
    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 871
    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 872
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 873
    .local v1, "dlg":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 877
    .local v2, "listview":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 879
    .local v0, "checkedItem":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 880
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 881
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 624
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 629
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 631
    const-string v4, ""

    .line 657
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    return-void

    .line 633
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 634
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 635
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 636
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 638
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 639
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 640
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 641
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 642
    move v0, v2

    .line 639
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 647
    .end local v6    # "timeout":J
    :cond_4
    array-length v8, v1

    if-eqz v8, :cond_5

    .line 648
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c06d9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 651
    .end local v4    # "summary":Ljava/lang/String;
    :cond_5
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateWifiDisplaySummary()V
    .locals 2

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_WIFI_DISPLAY_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplay:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 940
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplay:Landroid/preference/Preference;

    const v1, 0x7f0c02cb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 933
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplay:Landroid/preference/Preference;

    const v1, 0x7f0c02ca

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 936
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplay:Landroid/preference/Preference;

    const v1, 0x7f0c02c9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 930
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 7
    .param p1, "val"    # F

    .prologue
    .line 703
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floatToIndex enter val = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 716
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 717
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 718
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 719
    add-int/lit8 v4, v0, -0x1

    .line 723
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 721
    .restart local v3    # "thisVal":F
    :cond_1
    move v2, v3

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    .end local v3    # "thisVal":F
    :cond_2
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 594
    const-string v0, "DisplaySettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 596
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 597
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 263
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 269
    .local v5, "resolver":Landroid/content/ContentResolver;
    const v6, 0x7f060015

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 278
    new-instance v6, Lcom/lenovo/settings/SmartRotationSetting;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/lenovo/settings/SmartRotationSetting;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotation:Lcom/lenovo/settings/SmartRotationSetting;

    .line 279
    const-string v6, "accelerometer"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 280
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_0

    .line 281
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SMART_ROTATION_SUPPORT()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    :cond_1
    const-string v6, "smart_rotation"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    .line 323
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    if-eqz v6, :cond_2

    .line 324
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotation:Lcom/lenovo/settings/SmartRotationSetting;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lenovo/settings/SmartRotationSetting;->getSmartRoationValue(Landroid/content/ContentResolver;)I

    move-result v0

    .line 326
    .local v0, "currentSmartRoation":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SMART_ROTATION_SUPPORT()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 327
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotation:Lcom/lenovo/settings/SmartRotationSetting;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0, v8}, Lcom/lenovo/settings/SmartRotationSetting;->updateSmartRotationPreferenceDescription(ILandroid/preference/ListPreference;)V

    .line 329
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    .end local v0    # "currentSmartRoation":I
    :cond_2
    :goto_0
    const-string v6, "screensaver"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 351
    const-string v6, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1120053

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v6, "screen_timeout"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 377
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getTimoutValue()I

    move-result v6

    int-to-long v2, v6

    .line 378
    .local v2, "currentTimeout":J
    const-string v6, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentTimeout="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 382
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 383
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 384
    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 386
    const-string v6, "font_size"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    .line 387
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    invoke-virtual {v6, p0}, Lcom/flyme/deviceoriginalsettings/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 388
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    invoke-virtual {v6, p0}, Lcom/flyme/deviceoriginalsettings/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 389
    const-string v6, "notification_pulse"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/SwitchPreference;

    .line 391
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_3

    .line 402
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    :cond_3
    const-string v6, "button_brightness"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    .line 418
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "persist.sys.button_bkg_ctrl"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    move v1, v4

    .line 420
    .local v1, "isSupportLENOVO_BUTTON_BKG_CTRL":Z
    :goto_1
    if-eqz v1, :cond_9

    .line 421
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v6, :cond_5

    .line 422
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 443
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v8, "display"

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 444
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 445
    const-string v6, "wifi_display"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplay:Landroid/preference/Preference;

    .line 455
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplay:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 499
    const-string v6, "lcd_invert"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLCDInvert:Landroid/preference/SwitchPreference;

    .line 500
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLCDInvert:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_6

    .line 507
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLCDInvert:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 544
    :cond_6
    const-string v6, "brightness"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mbrightness:Landroid/preference/PreferenceScreen;

    .line 545
    const-string v6, "home"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mhome:Landroid/preference/PreferenceScreen;

    .line 546
    const-string v6, "clear_motion"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    .line 547
    const-string v6, "ro.mtk.clearmotion.enable"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_a

    .line 548
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    :goto_3
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->clearMotionStyle()V

    .line 556
    const-string v6, "night_mode"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;

    .line 557
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "sys.night_mode"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_b

    .line 558
    .local v4, "ischecked":Z
    :goto_4
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 559
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 564
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "display_settings"

    invoke-static {v6, v7, v8}, Lcom/flyme/deviceoriginalsettings/Utils;->addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 565
    return-void

    .line 337
    .end local v1    # "isSupportLENOVO_BUTTON_BKG_CTRL":Z
    .end local v2    # "currentTimeout":J
    .end local v4    # "ischecked":Z
    .restart local v0    # "currentSmartRoation":I
    :cond_7
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .end local v0    # "currentSmartRoation":I
    .restart local v2    # "currentTimeout":J
    :cond_8
    move v1, v7

    .line 418
    goto/16 :goto_1

    .line 429
    .restart local v1    # "isSupportLENOVO_BUTTON_BKG_CTRL":Z
    :cond_9
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v6, :cond_5

    .line 435
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 550
    :cond_a
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    :cond_b
    move v4, v7

    .line 557
    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 838
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0baf

    new-instance v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 847
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 799
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 801
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 806
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SMART_ROTATION_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotatinObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_WIFI_DISPLAY_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplay:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 823
    :cond_1
    const-string v0, "ro.mtk.clearmotion.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 824
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 828
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display_settings"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->exePauseByParentKey(Landroid/app/Activity;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 834
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v7, 0x0

    const v5, 0x7f0c06d3

    .line 1031
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 1032
    .local v11, "key":Ljava/lang/String;
    const-string v2, "screen_timeout"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1035
    .local v12, "value":I
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1036
    int-to-long v2, v12

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c02f6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    .end local v12    # "value":I
    :cond_0
    :goto_1
    return v13

    .line 1037
    .restart local v12    # "value":I
    :catch_0
    move-exception v10

    .line 1038
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string v2, "DisplaySettings"

    const-string v3, "could not persist screen timeout setting"

    invoke-static {v2, v3, v10}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1046
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string v2, "font_size"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1047
    move-object/from16 v12, p2

    .line 1048
    .local v12, "value":Ljava/lang/Object;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/flyme/deviceoriginalsettings/DisplaySettings$8;

    invoke-direct {v3, p0, v12}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$8;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Ljava/lang/Object;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1055
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c06e6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1059
    .end local v12    # "value":Ljava/lang/Object;
    :cond_2
    const-string v2, "button_brightness"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1060
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select button brightnesspref,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1063
    .local v12, "value":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    .line 1064
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1067
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1074
    .end local v12    # "value":I
    :goto_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c01ca

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1070
    :catch_1
    move-exception v10

    .line 1071
    .restart local v10    # "e":Ljava/lang/NumberFormatException;
    const-string v2, "DisplaySettings"

    const-string v3, "could not persist button brightness setting"

    invoke-static {v2, v3, v10}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1080
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLCDInvert:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_8

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLCDInvert:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v13

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1089
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/PlatformApi;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/PlatformApi;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v6, 0x5

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLCDInvert:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_5

    move v3, v13

    :cond_5
    invoke-virtual {v2, v4, v6, v3}, Lcom/lenovo/settings/manager/PlatformApi;->setDisplayEffectLevel(Landroid/content/Context;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 1090
    const-string v2, "liqftest"

    const-string v3, "lcdInvert return value is -1"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :cond_6
    const-string v2, "persist.sys.lcd_invert"

    invoke-static {v2, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c01cd

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v12    # "value":Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 1081
    goto :goto_3

    .line 1101
    :cond_8
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 1103
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1105
    .local v12, "value":I
    :try_start_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_smart_rotation"

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1107
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotation:Lcom/lenovo/settings/SmartRotationSetting;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v12, v3}, Lcom/lenovo/settings/SmartRotationSetting;->updateSmartRotationPreferenceDescription(ILandroid/preference/ListPreference;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1112
    :goto_4
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0072

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1108
    :catch_2
    move-exception v10

    .line 1109
    .restart local v10    # "e":Ljava/lang/NumberFormatException;
    const-string v2, "DisplaySettings"

    const-string v3, "could not persist smart rotation setting"

    invoke-static {v2, v3, v10}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 1123
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    if-ne p1, v2, :cond_2

    .line 1124
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->showDialog(I)V

    .line 1155
    :goto_0
    return v1

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/WarnedListPreference;->click()V

    .line 1155
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mClearMotion:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1134
    .local v0, "value":Z
    const-string v2, "persist.sys.display.clearMotion"

    if-eqz v0, :cond_3

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "0"

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    const v3, 0x7f0c06d3

    const/4 v10, 0x1

    .line 960
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_2

    .line 962
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06d4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v10

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 1026
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v10

    :goto_2
    return v10

    :cond_1
    move v0, v11

    .line 965
    goto :goto_0

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_4

    .line 969
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06ae

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    .line 973
    .local v9, "value":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    if-eqz v9, :cond_3

    move v11, v10

    :cond_3
    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 977
    .end local v9    # "value":Z
    :cond_4
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mbrightness:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_5

    .line 979
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06d7

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 981
    :cond_5
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mhome:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_6

    .line 983
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06a5

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 984
    :cond_6
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys.night_mode"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 989
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 991
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.settings.myeyeservice.addview"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v8    # "intent":Landroid/content/Intent;
    :cond_7
    move v10, v11

    .line 986
    goto :goto_3

    .line 995
    :cond_8
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.settings.myeyeservice.rmview"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 750
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 754
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SMART_ROTATION_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotation:Lcom/lenovo/settings/SmartRotationSetting;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/settings/SmartRotationSetting;->updateSmartRotation(Landroid/preference/ListPreference;Landroid/content/ContentResolver;)V

    .line 756
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_smart_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mSmartRotatinObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 765
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 769
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_WIFI_DISPLAY_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplay:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 772
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 773
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 775
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateState()V

    .line 776
    const-string v0, "ro.mtk.clearmotion.enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 777
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 778
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateClearMotionStatus()V

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display_settings"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->exeResumeByParentKey(Landroid/app/Activity;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys.night_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 795
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 728
    :try_start_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 735
    .local v2, "index":I
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFontSizePreference index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 742
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 743
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0e0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "fontSizeNames":[Ljava/lang/String;
    const v4, 0x7f0c06e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 746
    return-void

    .line 729
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 951
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference font size =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
