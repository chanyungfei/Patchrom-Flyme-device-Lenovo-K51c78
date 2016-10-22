.class public Lcom/lenovo/settings/CharSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "CharSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CHAR_KEYS:[Ljava/lang/String;

.field private static final GESTURE_WAKEUP_LIGHT_UP:Ljava/lang/String; = "black_gesture_light_up_enable"

.field private static final GESTURE_WAKEUP_NORMAL:Ljava/lang/String; = "slide_unlock_enabled"

.field private static final GESTURE_WAKEUP_TOP_SPEED_SNAP:Ljava/lang/String; = "black_gesture_top_speed_snap_enable"

.field private static final GLOBAL_FLIP_LOCKSCREEN:Ljava/lang/String; = "flip_lock_screen_data"

.field private static final GLOBAL_SINGLE_HAND_ON:Ljava/lang/String; = "global_single_hand_on"

.field private static final GLOVE_MODE:Ljava/lang/String; = "glove_mode_alert_enabled"

.field private static final MISSED_CALL_ALERT:Ljava/lang/String; = "missed_call_alert_enabled"

.field private static final MSG_RETRIEVE_CHAR_SETTINGS:I = 0x101

.field private static final OTHER_APP_ALERT:Ljava/lang/String; = "other_app_alert_enabled"

.field private static final SMART_STANDBY:Ljava/lang/String; = "smart_standby_enable"

.field private static final TAG:Ljava/lang/String; = "CharSettings"

.field private static final TOTAL_WIDE_TOUCH:Ljava/lang/String; = "total_wide_touch"

.field private static final UNREAD_EMAIL_ALERT:Ljava/lang/String; = "unread_email_alert_enabled"

.field private static final UNREAD_SMS_ALERT:Ljava/lang/String; = "unread_sms_alert_enabled"


# instance fields
.field private mCharSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "black_gesture_top_speed_snap_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "black_gesture_light_up_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "total_wide_touch"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "slide_unlock_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "smart_standby_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "unread_email_alert_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "unread_sms_alert_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "missed_call_alert_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "other_app_alert_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "glove_mode_alert_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "global_single_hand_on"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flip_lock_screen_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/settings/CharSettings;->CHAR_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/lenovo/settings/CharSettings$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/CharSettings$1;-><init>(Lcom/lenovo/settings/CharSettings;)V

    iput-object v0, p0, Lcom/lenovo/settings/CharSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getCharSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 182
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 179
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v2

    .line 182
    goto :goto_0
.end method

.method private onPreferenceOperation(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "isChecked"    # Z

    .prologue
    .line 147
    const-string v0, "CharSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreferenceOperation] key is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChecked is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected checkCharSettings()V
    .locals 9

    .prologue
    .line 166
    const-string v6, "CharSettings"

    const-string v7, "[checkCharSettings] enter"

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 168
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v0, Lcom/lenovo/settings/CharSettings;->CHAR_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 169
    .local v1, "charKey":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/lenovo/settings/CharSettings;->getCharSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    .line 170
    .local v5, "newCharSetting":Z
    iget-object v6, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v5, v6, :cond_0

    .line 171
    const-string v6, "CharSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[checkCharSettings] charKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " changed, track new setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {v1, v5}, Lcom/lenovo/settings/LPSReaper;->trackCharacterSettings(Ljava/lang/String;Z)V

    .line 168
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "charKey":Ljava/lang/String;
    .end local v5    # "newCharSetting":Z
    :cond_1
    return-void
.end method

.method protected initialCharSettings()V
    .locals 7

    .prologue
    .line 152
    const-string v5, "CharSettings"

    const-string v6, "[initialCharSettings] enter"

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 154
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 160
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v0, Lcom/lenovo/settings/CharSettings;->CHAR_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 161
    .local v1, "charKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    invoke-direct {p0, v2, v1}, Lcom/lenovo/settings/CharSettings;->getCharSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "charKey":Ljava/lang/String;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    iget-object v5, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 163
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/CharSettings;->addPreferencesFromResource(I)V

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c02e9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 106
    .local v0, "rootprs":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "touch_settings"

    invoke-static {v1, v0, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->addPreferencePluginSortForChar(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/lenovo/settings/CharSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x101

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->checkCharSettings()V

    .line 127
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "touch_settings"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->exePauseByParentKey(Landroid/app/Activity;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 140
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 141
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/CharSettings;->onPreferenceOperation(Landroid/preference/Preference;Z)V

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 132
    const-string v0, "CharSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreferenceTreeClick] key is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "touch_settings"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->exeResumeByParentKey(Landroid/app/Activity;Ljava/lang/String;)V

    .line 115
    return-void
.end method
