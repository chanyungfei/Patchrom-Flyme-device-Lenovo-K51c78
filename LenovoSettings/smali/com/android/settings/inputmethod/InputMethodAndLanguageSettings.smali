.class public Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/lenovo/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_INPUT_METHOD:Ljava/lang/String; = "current_input_method"

.field private static final KEY_INPUT_METHOD_SELECTOR:Ljava/lang/String; = "input_method_selector"

.field private static final KEY_PHONE_LANGUAGE:Ljava/lang/String; = "phone_language"

.field private static final KEY_PREVIOUSLY_ENABLED_SUBTYPES:Ljava/lang/String; = "previously_enabled_subtypes"

.field private static final KEY_SPELL_CHECKERS:Ljava/lang/String; = "spellcheckers_settings"

.field private static final KEY_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "key_user_dictionary_settings"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final SHOW_INPUT_METHOD_SWITCHER_SETTINGS:Z

.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mIsOnlyImeSettings:Z

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private final mOnImePreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSettingsObserver:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowInputMethodSelectorPref:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    .line 725
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$4;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$4;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mOnImePreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 681
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;
    .param p1, "x1"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 709
    .local v2, "resources":Landroid/content/res/Resources;
    const v5, 0x7f0e0026

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "specialLocaleCodes":[Ljava/lang/String;
    const v5, 0x7f0e0027

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, "specialLocaleNames":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 715
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 716
    aget-object v5, v4, v1

    .line 720
    :goto_1
    return-object v5

    .line 714
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    .locals 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 547
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 550
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "settingsActivity":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    :goto_0
    new-instance v3, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v3, p0, v0, v5, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 561
    .local v3, "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v3, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 563
    return-object v3

    .line 555
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "languageCode"    # Ljava/lang/String;
    .param p2, "locales"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "count":I
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 444
    .local v4, "localeCode":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 446
    add-int/lit8 v1, v1, 0x1

    .line 447
    if-le v1, v5, :cond_0

    .line 452
    .end local v4    # "localeCode":Ljava/lang/String;
    :goto_1
    return v6

    .line 443
    .restart local v4    # "localeCode":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v4    # "localeCode":Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 671
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 672
    .local v1, "devices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 673
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 674
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    const/4 v3, 0x1

    .line 678
    .end local v0    # "device":Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 672
    .restart local v0    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private saveInputMethodSelectorVisibility(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 457
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 458
    .local v0, "intValue":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "input_method_selector_visibility"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodSelectorSummary(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v0    # "intValue":I
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 629
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 631
    .local v0, "fragment":Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 632
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 5

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 532
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 534
    .local v2, "curPref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 535
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 537
    .local v1, "curIme":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 538
    monitor-enter p0

    .line 539
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 658
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 661
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 663
    .local v0, "chkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 668
    .end local v0    # "chkPref":Landroid/preference/CheckBoxPreference;
    :goto_1
    return-void

    .line 663
    .restart local v0    # "chkPref":Landroid/preference/CheckBoxPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 666
    .end local v0    # "chkPref":Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 572
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 573
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 574
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 575
    .local v2, "devices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 576
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 577
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 581
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    .line 582
    .local v5, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 587
    .local v6, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 588
    .local v8, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 589
    if-eqz v6, :cond_2

    .line 590
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    :goto_2
    new-instance v10, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v10, p0, v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 601
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 584
    goto :goto_1

    .line 592
    .restart local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .restart local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f0c08b0

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 606
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v2    # "devices":[I
    .end local v3    # "i":I
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 607
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .restart local v3    # "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_5

    .line 608
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 609
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 610
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 612
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 614
    .end local v4    # "i":I
    .end local v8    # "pref":Landroid/preference/Preference;
    .restart local v3    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 615
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 616
    .local v0, "count":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 617
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 618
    .restart local v8    # "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 619
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 616
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 622
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 626
    .end local v0    # "count":I
    .end local v3    # "i":I
    :goto_5
    return-void

    .line 624
    :cond_7
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 568
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 569
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 11

    .prologue
    .line 484
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 486
    :try_start_0
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .line 487
    .local v6, "imp":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 519
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "imp":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 489
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 490
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 491
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v5, :cond_1

    const/4 v0, 0x0

    .line 494
    .local v0, "N":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 495
    :try_start_2
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 496
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    move-result-object v7

    .line 497
    .local v7, "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mOnImePreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->setOnImePreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 498
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 491
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    :cond_1
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 500
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "imis"

    const-string v10, " InputMethod ArrayIndexOutOfBoundsException"

    invoke-static {v8, v10}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 507
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 508
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 509
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 514
    :cond_3
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/Preference;

    .line 515
    .local v7, "pref":Landroid/preference/Preference;
    instance-of v8, v7, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    if-eqz v8, :cond_4

    .line 516
    check-cast v7, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .end local v7    # "pref":Landroid/preference/Preference;
    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_4

    .line 519
    :cond_5
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 525
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v9}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v8, v9, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 528
    return-void
.end method

.method private updateInputMethodSelectorSummary(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "inputMethodSelectorTitles":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "userDictionaryPreference"    # Landroid/preference/Preference;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 246
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    .line 247
    .local v1, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v2, p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 647
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 649
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_identifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 652
    .local v0, "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 653
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 655
    .end local v0    # "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f0c0897

    const/4 v5, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 150
    const v0, 0x7f0c003b

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "phone_language"

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :goto_1
    new-instance v0, Lcom/flyme/deviceoriginalsettings/VoiceInputOutputSettings;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/VoiceInputOutputSettings;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;)V

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/VoiceInputOutputSettings;->onCreate()V

    .line 172
    const-string v0, "hard_keyboard"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 173
    const-string v0, "keyboard_settings_category"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 175
    const-string v0, "game_controller_settings_category"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 179
    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 181
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 184
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 193
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    .line 195
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 196
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v0, :cond_1

    .line 197
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0, v5}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    .local v8, "currentIme":Landroid/preference/PreferenceScreen;
    const-string v0, "current_input_method"

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c08d6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    const v0, 0x7f04005e

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 201
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    .end local v8    # "currentIme":Landroid/preference/PreferenceScreen;
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 206
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 209
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/flyme/deviceoriginalsettings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 211
    const-string v0, "spellcheckers_settings"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersPreference;

    .line 213
    .local v11, "scp":Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersPreference;
    if-eqz v11, :cond_2

    .line 214
    invoke-virtual {v11, p0, v9}, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 217
    :cond_2
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 221
    const-string v0, "voice_category"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 222
    .local v12, "voiceCategory":Landroid/preference/PreferenceCategory;
    const-string v0, "pointer_settings_category"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    .line 230
    .local v10, "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 159
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    .end local v11    # "scp":Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersPreference;
    .end local v12    # "voiceCategory":Landroid/preference/PreferenceCategory;
    :cond_3
    const-string v0, "phone_language"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 152
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 391
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 396
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 401
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 368
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v0, "closeSystemDialogIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 377
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 383
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v2, v3, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 386
    return-void

    .line 383
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 406
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    .line 438
    :goto_0
    return v4

    .line 409
    :cond_0
    instance-of v5, p2, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 410
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 438
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 412
    :cond_2
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 415
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    .line 417
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    move-object v0, p2

    .line 418
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 419
    .local v0, "chkPref":Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v5, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 421
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v6, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_5

    .line 422
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 420
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 428
    .end local v1    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 286
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 288
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 289
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    const/4 v10, 0x0

    invoke-virtual {v7, p0, v10}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 291
    iget-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v7, :cond_1

    .line 292
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v7, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 297
    .local v1, "conf":Landroid/content/res/Configuration;
    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "language":Ljava/lang/String;
    const-string v7, "prc"

    const-string v10, "ro.lenovo.region"

    const-string v11, "prc"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 300
    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "locale":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    .end local v1    # "conf":Landroid/content/res/Configuration;
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "locale":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    const-string v7, "key_user_dictionary_settings"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 343
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v7, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 344
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v10, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 346
    .local v0, "chkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v10, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_4

    move v7, v8

    :goto_3
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 312
    .end local v0    # "chkPref":Landroid/preference/CheckBoxPreference;
    .end local v3    # "i":I
    .restart local v1    # "conf":Landroid/content/res/Configuration;
    .restart local v4    # "language":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 314
    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v10, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "localeString":Ljava/lang/String;
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 321
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    .end local v6    # "localeString":Ljava/lang/String;
    :cond_3
    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v10, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "localeString":Ljava/lang/String;
    goto :goto_4

    .line 334
    .end local v1    # "conf":Landroid/content/res/Configuration;
    .end local v4    # "language":Ljava/lang/String;
    .end local v6    # "localeString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v7, "localeSet"

    const-string v10, "loacaleSet is null"

    invoke-static {v7, v10}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "chkPref":Landroid/preference/CheckBoxPreference;
    .restart local v3    # "i":I
    :cond_4
    move v7, v9

    .line 346
    goto :goto_3

    .line 351
    .end local v0    # "chkPref":Landroid/preference/CheckBoxPreference;
    .end local v3    # "i":I
    :cond_5
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 355
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 356
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 364
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/flyme/deviceoriginalsettings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 639
    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 641
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 642
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 643
    return-void
.end method
