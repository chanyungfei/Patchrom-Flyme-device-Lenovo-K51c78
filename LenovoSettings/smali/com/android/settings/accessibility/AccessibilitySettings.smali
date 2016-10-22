.class public Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/DialogCreatable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final CAPTIONING_PREFERENCE_SCREEN:Ljava/lang/String; = "captioning_preference_screen"

.field private static final DEFAULT_SCREENREADER_MARKET_LINK:Ljava/lang/String; = "market://search?q=pname:com.google.android.marvin.talkback"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DIALOG_ID_NO_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final DISPLAY_MAGNIFICATION_PREFERENCE_SCREEN:Ljava/lang/String; = "screen_magnification_preference_screen"

.field static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field private static final ENABLE_ACCESSIBILITY_GESTURE_PREFERENCE_SCREEN:Ljava/lang/String; = "enable_global_gesture_preference_screen"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final IPO_SETTING_PREFERENCE:Ljava/lang/String; = "ipo_setting"

.field private static final KEY_INSTALL_ACCESSIBILITY_SERVICE_OFFERED_ONCE:Ljava/lang/String; = "key_install_accessibility_service_offered_once"

.field private static final LARGE_FONT_SCALE:F = 1.3f

.field private static final LARGE_FONT_SCALE_PHONE:F = 1.15f

.field private static final LARGE_FONT_SCALE_TABLET:F = 1.3f

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilitySettings"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final SERVICES_CATEGORY:Ljava/lang/String; = "services_category"

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final SYSTEM_PROPERTY_MARKET_URL:Ljava/lang/String; = "ro.screenreader.market"

.field private static final TOGGLE_LARGE_TEXT_PREFERENCE:Ljava/lang/String; = "toggle_large_text_preference"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final TOGGLE_SCRIPT_INJECTION_PREFERENCE:Ljava/lang/String; = "toggle_script_injection_preference"

.field private static final TOGGLE_SPEAK_PASSWORD_PREFERENCE:Ljava/lang/String; = "toggle_speak_password_preference"

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mIpoSetting:Landroid/preference/SwitchPreference;

.field private mIsScreenLarge:Z

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mRotationObserver:Landroid/database/ContentObserver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

.field private mToggleScriptInjectionPreference:Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 964
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$7;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$7;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mIsScreenLarge:Z

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 171
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 183
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 209
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;

    .line 218
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1058
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$8;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateRotationCheckbox()V

    return-void
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 511
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 512
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0c0928

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0929

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 516
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 520
    return-void

    :cond_0
    move v1, v2

    .line 516
    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 490
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 500
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0c092a

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v3, "summary"

    const v4, 0x7f0c030d

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 506
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 508
    return-void

    :cond_0
    move v1, v2

    .line 504
    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 471
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_1
    return-void

    .line 469
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 485
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 11

    .prologue
    const/16 v10, 0x1a

    .line 523
    const-string v7, "services_category"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 524
    const-string v7, "system_category"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 527
    const-string v7, "toggle_large_text_preference"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    .line 531
    const-string v7, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    .line 533
    invoke-static {v10}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/flyme/deviceoriginalsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 535
    :cond_0
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 539
    :cond_1
    const-string v7, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    .line 541
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 542
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 546
    :cond_2
    const-string v7, "toggle_speak_password_preference"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    .line 550
    const-string v7, "select_long_press_timeout_preference"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 552
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 553
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 554
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0036

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, "timeoutValues":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 557
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0035

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "timeoutTitles":[Ljava/lang/String;
    array-length v4, v5

    .line 560
    .local v4, "timeoutValueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 561
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v8, v5, v1

    aget-object v9, v3, v1

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v1    # "i":I
    .end local v3    # "timeoutTitles":[Ljava/lang/String;
    .end local v4    # "timeoutValueCount":I
    .end local v5    # "timeoutValues":[Ljava/lang/String;
    :cond_3
    const-string v7, "captioning_preference_screen"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 570
    const-string v7, "screen_magnification_preference_screen"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 574
    const-string v7, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 576
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e003b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 578
    .local v2, "longPressOnPowerBehavior":I
    const/4 v0, 0x1

    .line 579
    .local v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS":I
    invoke-static {v10}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4

    .line 588
    :cond_4
    const-string v7, "ipo_setting"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mIpoSetting:Landroid/preference/SwitchPreference;

    .line 598
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_5

    .line 602
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 603
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mIpoSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 604
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 612
    const-string v7, "tts_settings_preference"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 614
    .local v6, "ttsSettingsPreference":Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_5

    .line 615
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 630
    .end local v6    # "ttsSettingsPreference":Landroid/preference/PreferenceScreen;
    :cond_5
    const-string v7, "toggle_script_injection_preference"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;

    .line 633
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 636
    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 943
    sget-object v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 944
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 946
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 949
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 961
    :cond_0
    return-void

    .line 953
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 954
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 955
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 956
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 860
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v7, v8, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 864
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 866
    .local v2, "offerInstallService":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 867
    const-string v7, "ro.screenreader.market"

    const-string v8, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, "screenreaderMarketLink":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 871
    .local v1, "marketUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 873
    .local v0, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 878
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_install_accessibility_service_offered_once"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .end local v0    # "marketIntent":Landroid/content/Intent;
    .end local v1    # "marketUri":Landroid/net/Uri;
    .end local v2    # "offerInstallService":Z
    .end local v4    # "screenreaderMarketLink":Ljava/lang/String;
    :cond_2
    move v2, v6

    .line 864
    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 640
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 641
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 852
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 853
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 856
    :cond_0
    return-void

    .line 853
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRotationCheckbox()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1069
    .local v0, "autoRotationEnabled":Z
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1070
    return-void
.end method

.method private updateServicesPreferences()V
    .locals 21

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 653
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v12

    .line 655
    .local v12, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 658
    .local v8, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    .line 661
    .local v3, "accessibilityEnabled":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "count":I
    :goto_1
    if-ge v10, v6, :cond_5

    .line 662
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 664
    .local v11, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 666
    .local v13, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 668
    .local v17, "title":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 669
    .local v15, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 675
    if-eqz v3, :cond_3

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v14, 0x1

    .line 677
    .local v14, "serviceEnabled":Z
    :goto_2
    if-eqz v14, :cond_4

    .line 678
    const v18, 0x7f0c0941

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 683
    :goto_3
    invoke-virtual {v13, v10}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 684
    const-class v18, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 685
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 687
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 688
    .local v9, "extras":Landroid/os/Bundle;
    const-string v18, "preference_key"

    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v18, "checked"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 690
    const-string v18, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    .line 693
    .local v7, "description":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 694
    const v18, 0x7f0c096a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 696
    :cond_0
    const-string v18, "summary"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v16

    .line 699
    .local v16, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 700
    const-string v18, "settings_title"

    const v19, 0x7f0c0940

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v18, "settings_component_name"

    new-instance v19, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_1
    const-string v18, "component_name"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 661
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 658
    .end local v3    # "accessibilityEnabled":Z
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "count":I
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "preference":Landroid/preference/PreferenceScreen;
    .end local v14    # "serviceEnabled":Z
    .end local v15    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v16    # "settingsClassName":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 675
    .restart local v3    # "accessibilityEnabled":Z
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v13    # "preference":Landroid/preference/PreferenceScreen;
    .restart local v15    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v17    # "title":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 680
    .restart local v14    # "serviceEnabled":Z
    :cond_4
    const v18, 0x7f0c0942

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 712
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "preference":Landroid/preference/PreferenceScreen;
    .end local v14    # "serviceEnabled":Z
    .end local v15    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v17    # "title":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v18

    if-nez v18, :cond_7

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 714
    new-instance v18, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$5;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$5;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0400ad

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 728
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 730
    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 14

    .prologue
    const v13, 0x7f0c0942

    const v12, 0x7f0c0941

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 735
    :try_start_0
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    const v11, 0x3fa66666    # 1.3f

    cmpl-float v7, v7, v11

    if-nez v7, :cond_1

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 770
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 774
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateRotationCheckbox()V

    .line 778
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "speak_password"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v4, v8

    .line 780
    .local v4, "speakPasswordEnabled":Z
    :goto_2
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 783
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "long_press_timeout"

    iget v11, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 785
    .local v2, "longPressTimeout":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 786
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 787
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 790
    iget v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 791
    .local v6, "valueDefault":Ljava/lang/String;
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 792
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 796
    .end local v6    # "valueDefault":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accessibility_captioning_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_3

    move v0, v8

    .line 798
    .local v0, "captioningEnabled":Z
    :goto_3
    if-eqz v0, :cond_4

    .line 799
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 805
    :goto_4
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accessibility_display_magnification_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_5

    move v3, v8

    .line 807
    .local v3, "magnificationEnabled":Z
    :goto_5
    if-eqz v3, :cond_6

    .line 808
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 816
    :goto_6
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "enable_accessibility_global_gesture_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_7

    move v1, v8

    .line 818
    .local v1, "globalGestureEnabled":Z
    :goto_7
    if-eqz v1, :cond_8

    .line 819
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0c092b

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 848
    :goto_8
    return-void

    .end local v0    # "captioningEnabled":Z
    .end local v1    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v3    # "magnificationEnabled":Z
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    move v7, v9

    .line 756
    goto/16 :goto_1

    :cond_2
    move v4, v9

    .line 778
    goto/16 :goto_2

    .restart local v2    # "longPressTimeout":I
    .restart local v4    # "speakPasswordEnabled":Z
    .restart local v5    # "value":Ljava/lang/String;
    :cond_3
    move v0, v9

    .line 796
    goto :goto_3

    .line 801
    .restart local v0    # "captioningEnabled":Z
    :cond_4
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_4

    :cond_5
    move v3, v9

    .line 805
    goto :goto_5

    .line 811
    .restart local v3    # "magnificationEnabled":Z
    :cond_6
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6

    :cond_7
    move v1, v9

    .line 816
    goto :goto_7

    .line 822
    .restart local v1    # "globalGestureEnabled":Z
    :cond_8
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0c092c

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_8

    .line 736
    .end local v0    # "captioningEnabled":Z
    .end local v1    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v3    # "magnificationEnabled":Z
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1047
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1048
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1054
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 258
    .local v0, "screenSize":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mIsScreenLarge:Z

    .line 263
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 264
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 266
    return-void

    .line 258
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    const/4 v0, 0x0

    .line 899
    packed-switch p1, :pswitch_data_0

    .line 938
    :goto_0
    return-object v0

    .line 901
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0968

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0969

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$6;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$6;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 899
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 294
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 295
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 304
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 305
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    move-object v8, p2

    .line 310
    check-cast v8, Ljava/lang/String;

    .line 311
    .local v8, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0933

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0923

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    .line 330
    .end local v8    # "stringValue":Ljava/lang/String;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f0c0923

    const/4 v9, 0x1

    .line 335
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 338
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c092d

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 431
    .end local p2    # "preference":Landroid/preference/Preference;
    :goto_0
    return v0

    .line 351
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 354
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0931

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 366
    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_2

    .line 368
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    .line 370
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06d4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 382
    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_3

    .line 384
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    .line 386
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0932

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 398
    goto/16 :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v0, p2, :cond_4

    .line 400
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->handleTogglEnableAccessibilityGesturePreferenceClick()V

    move v0, v9

    .line 401
    goto/16 :goto_0

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v0, p2, :cond_5

    .line 403
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    move v0, v9

    .line 404
    goto/16 :goto_0

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mIpoSetting:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_6

    .line 409
    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    .line 414
    .local v8, "isChecked":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0363

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 426
    goto/16 :goto_0

    .line 431
    .end local v8    # "isChecked":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 270
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 271
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    .line 272
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 274
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 276
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 277
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 278
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 289
    return-void
.end method
