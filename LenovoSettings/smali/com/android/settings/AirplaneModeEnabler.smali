.class public Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3


# instance fields
.field private mAirplaneConfirmDialog:Landroid/app/Dialog;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeCheckBoxPreference"    # Landroid/preference/CheckBoxPreference;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$1;-><init>(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$2;-><init>(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 79
    invoke-virtual {p2, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 81
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 82
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 83
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mValidListener:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$1;-><init>(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$2;-><init>(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 87
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 89
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 92
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 162
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 163
    .local v0, "airplaneModeEnabled":Z
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 170
    :cond_1
    return-void
.end method

.method private orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 213
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 223
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0540

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "airplane_mode"

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangePluginSwitchAction(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .param p1, "enabling"    # Z

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 150
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 151
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 260
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 264
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    :cond_1
    return-void
.end method

.method private showAirplaneConfirmDialog()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0168

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0169

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 236
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 252
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->setChecked(Z)V

    .line 253
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 254
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 197
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->showAirplaneConfirmDialog()V

    goto :goto_0

    .line 206
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 240
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 244
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 176
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 180
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 120
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mValidListener:Z

    .line 125
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 128
    :cond_1
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 129
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    :cond_1
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mValidListener:Z

    .line 106
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 107
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 275
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 276
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mValidListener:Z

    if-eqz v2, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->setChecked(Z)V

    goto :goto_0
.end method
