.class public Lcom/lenovo/settings/CharSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "CharSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
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
    .line 47
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/lenovo/settings/CharSettings$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/CharSettings$1;-><init>(Lcom/lenovo/settings/CharSettings;)V

    iput-object v0, p0, Lcom/lenovo/settings/CharSettings;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/lenovo/settings/CharSettings$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/CharSettings$2;-><init>(Lcom/lenovo/settings/CharSettings;)V

    iput-object v0, p0, Lcom/lenovo/settings/CharSettings;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private getCharSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 220
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 217
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v2

    .line 220
    goto :goto_0
.end method

.method private onPreferenceOperation(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "isChecked"    # Z

    .prologue
    .line 181
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

    .line 183
    return-void
.end method


# virtual methods
.method protected checkCharSettings()V
    .locals 9

    .prologue
    .line 200
    const-string v6, "CharSettings"

    const-string v7, "[checkCharSettings] enter"

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v6, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 213
    :cond_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 206
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v0, Lcom/lenovo/settings/CharSettings;->CHAR_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 207
    .local v1, "charKey":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/lenovo/settings/CharSettings;->getCharSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    .line 208
    .local v5, "newCharSetting":Z
    iget-object v6, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v5, v6, :cond_2

    .line 209
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

    .line 210
    invoke-static {v1, v5}, Lcom/lenovo/settings/LPSReaper;->trackCharacterSettings(Ljava/lang/String;Z)V

    .line 206
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected initialCharSettings()V
    .locals 7

    .prologue
    .line 186
    const-string v5, "CharSettings"

    const-string v6, "[initialCharSettings] enter"

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 188
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 194
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

    .line 195
    .local v1, "charKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    invoke-direct {p0, v2, v1}, Lcom/lenovo/settings/CharSettings;->getCharSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "charKey":Ljava/lang/String;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    iget-object v5, p0, Lcom/lenovo/settings/CharSettings;->mCharSettings:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 197
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/CharSettings;->addPreferencesFromResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c02ec

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 129
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->checkCharSettings()V

    .line 169
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 170
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 162
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "touch_settings"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->exePauseByParentKey(Landroid/app/Activity;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 174
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/CharSettings;->onPreferenceOperation(Landroid/preference/Preference;Z)V

    .line 177
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "touch_settings"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->exeResumeByParentKey(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    const-string v3, "touch_settings"

    invoke-static {v3}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 137
    :cond_0
    const-string v3, "CharSettings"

    const-string v4, "plugins size is null or size = 0, exit"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, "emptyView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 140
    const v3, 0x7f0c02e8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 141
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    .end local v0    # "emptyView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 146
    .local v2, "rootprs":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "touch_settings"

    iget-object v5, p0, Lcom/lenovo/settings/CharSettings;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-static {v3, v2, v4, v5}, Lcom/flyme/deviceoriginalsettings/Utils;->addPreferencePluginSortForChar(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 149
    iget-object v3, p0, Lcom/lenovo/settings/CharSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x101

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
