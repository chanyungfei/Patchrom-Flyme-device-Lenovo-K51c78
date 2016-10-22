.class public Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "MtkSwitchAirplaneModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ACTION_NOTIFY_AIRPLANE_STATUS_CHANGE:Ljava/lang/String; = "action.lenovo.notify_airplane_status_change"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneConfirmDialog:Landroid/app/Dialog;

.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

.field private mServiceState1:I

.field private mServiceState2:I

.field private mServiceState3:I

.field private mServiceState4:I

.field private final mSwitchPref:Landroid/preference/SwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeSwitchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    .line 70
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    .line 72
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState3:I

    .line 73
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState4:I

    .line 164
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$2;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 200
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$3;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$3;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 212
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$4;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$4;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    .line 222
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$5;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$5;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    .line 89
    iput-object p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 92
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {p2, v1}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 95
    iput-boolean v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    .line 70
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    .line 72
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState3:I

    .line 73
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState4:I

    .line 164
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$2;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 200
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$3;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$3;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 212
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$4;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$4;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    .line 222
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$5;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$5;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    .line 100
    sget-object v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct mtkswitch airplanemode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 104
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 107
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    const-class v1, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->initialTelephonyManagerEx(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$502(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    return p1
.end method

.method static synthetic access$602(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState3:I

    return p1
.end method

.method static synthetic access$702(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState4:I

    return p1
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 311
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 313
    .local v0, "airplaneModeEnabled":Z
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMtkGemini()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    if-eqz v0, :cond_3

    .line 316
    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState3:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState4:I

    if-eq v1, v2, :cond_3

    .line 320
    :cond_0
    sget-object v1, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfinish! serviceState1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceState2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    if-eqz v0, :cond_3

    .line 328
    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    if-eq v1, v2, :cond_3

    .line 329
    sget-object v1, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfinish! serviceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_3
    sget-object v1, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish! airplaneModeEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 338
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private orignalonCheckedChanged(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 415
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0540

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "airplane_mode"

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangePluginSwitchAction(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private regListenForGeminiPlus(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMTK_GEMINI_3SIM_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_3()I

    move-result v2

    const-class v3, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMTK_GEMINI_4SIM_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_3()I

    move-result v2

    const-class v3, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_4()I

    move-result v2

    const-class v3, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .param p1, "enabling"    # Z

    .prologue
    const/4 v2, 0x0

    .line 278
    sget-object v1, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAirplaneModeOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 294
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 300
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v1, v2

    .line 280
    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 465
    return-void
.end method

.method private showAirplaneConfirmDialog()V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 429
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Z)V

    .line 447
    invoke-direct {p0, v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setChecked(Z)V

    .line 451
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 397
    sget-object v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    :cond_2
    if-eqz p2, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->showAirplaneConfirmDialog()V

    goto :goto_0

    .line 407
    :cond_3
    invoke-direct {p0, p2}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 433
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 434
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Z)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 436
    invoke-direct {p0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Z)V

    .line 437
    invoke-direct {p0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 355
    const/4 v0, 0x0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 234
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMtkGemini()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    iget-object v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_1()I

    move-result v3

    const-class v4, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    iget-object v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_2()I

    move-result v3

    const-class v4, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 254
    invoke-direct {p0, v5}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->regListenForGeminiPlus(I)V

    .line 262
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_1
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v1

    const-class v2, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->releaseMtkTelephonyManagerExt(Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    .line 271
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 274
    :cond_2
    iput-object v6, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 275
    return-void

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 114
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 115
    .local v0, "isAirplaneOn":Z
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    :cond_0
    iput-boolean v5, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    .line 127
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMtkGemini()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    iget-object v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_1()I

    move-result v3

    const-class v4, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    iget-object v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_2()I

    move-result v3

    const-class v4, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 144
    invoke-direct {p0, v5}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->regListenForGeminiPlus(I)V

    .line 152
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 153
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "action.lenovo.notify_airplane_status_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    :cond_3
    return-void

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 1
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 360
    if-eqz p1, :cond_1

    .line 362
    invoke-direct {p0, p2}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 0
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 475
    return-void
.end method
