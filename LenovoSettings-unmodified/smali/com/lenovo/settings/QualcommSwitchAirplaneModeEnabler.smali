.class public Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "QualcommSwitchAirplaneModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneConfirmDialog:Landroid/app/Dialog;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$1;-><init>(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$2;-><init>(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 86
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 90
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 91
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 125
    .local v0, "airplane":Z
    :cond_0
    sget-object v1, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAirplaneModeOn->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 3

    .prologue
    .line 155
    const-string v0, "airplane"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAirplaneModeChanged, isAirplaneModeOn->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    :cond_0
    return-void
.end method

.method private orignalonCheckedChanged(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 200
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orignalonCheckedChanged, isChecked->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 202
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    .line 130
    sget-object v1, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAirplaneModeOn enabling->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 144
    sget-object v1, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    const-string v2, "setAirplaneModeOn finish"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showAirplaneConfirmDialog()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0167

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0168

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

    iput-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 212
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 248
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Dialog onCancel"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, v2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Z)V

    .line 250
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 177
    sget-object v1, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, isChecked->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isAirplaneConfirmDialog.isShowing->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :goto_1
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-direct {p0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->showAirplaneConfirmDialog()V

    goto :goto_1

    .line 186
    :cond_2
    invoke-direct {p0, p2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 228
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog onClick which is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    packed-switch p2, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Z)V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Z)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 111
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 119
    :cond_1
    iput-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 120
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 94
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 100
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 2
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 166
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    const-string v1, "setAirplaneModeInECM, setAirplaneModeOn"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;

    const-string v1, "setAirplaneModeInECM, onAirplaneModeChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    :cond_1
    iput-object p1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 222
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
