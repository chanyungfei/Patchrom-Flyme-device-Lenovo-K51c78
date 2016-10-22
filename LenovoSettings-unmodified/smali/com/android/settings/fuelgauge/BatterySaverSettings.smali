.class public Lcom/android/settings/fuelgauge/BatterySaverSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatterySaverSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;,
        Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final KEY_BATTERY_SAVER:Ljava/lang/String; = "battery_saver_switch"

.field private static final KEY_TURN_ON_AUTOMATICALLY:Ljava/lang/String; = "turn_on_automatically"

.field private static final TAG:Ljava/lang/String; = "BatterySaverSettings"

.field private static final WAIT_FOR_SWITCH_ANIM:J = 0x1f4L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

.field private final mSettingsObserver:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

.field private final mStartMode:Ljava/lang/Runnable;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mTriggerPref:Lcom/android/settings/fuelgauge/SettingPref;

.field private final mUpdateSwitch:Ljava/lang/Runnable;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "BatterySaverSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    .line 54
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;Lcom/android/settings/fuelgauge/BatterySaverSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    .line 194
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings$2;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings$3;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    .line 240
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->updateSwitch()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/BatterySaverSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Lcom/android/settings/fuelgauge/SettingPref;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings/fuelgauge/SettingPref;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private trySetPowerSaveMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "BatterySaverSettings"

    const-string v1, "Setting mode failed, fallback to current value"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_1
    return-void
.end method

.method private updateSwitch()V
    .locals 4

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 177
    .local v0, "mode":Z
    sget-boolean v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "BatterySaverSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSwitch: isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 189
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 71
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mCreated:Z

    .line 72
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "battery_saver_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 80
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;

    const-string v3, "turn_on_automatically"

    const-string v4, "low_power_trigger_level"

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e0068

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings/fuelgauge/SettingPref;

    .line 93
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings/fuelgauge/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 95
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 102
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 127
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 143
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 146
    :cond_0
    sget-boolean v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "BatterySaverSettings"

    const-string v2, "Stopping low power mode from settings"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->updateSwitch()V

    .line 115
    return-void
.end method
