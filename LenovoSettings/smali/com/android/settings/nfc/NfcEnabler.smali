.class public Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private mBeamDisallowed:Z

.field private final mContext:Landroid/content/Context;

.field private final mEse:Landroid/preference/PreferenceScreen;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;
    .param p3, "ese"    # Landroid/preference/PreferenceScreen;
    .param p4, "androidBeam"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler$1;-><init>(Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 63
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    .line 64
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 65
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 66
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mBeamDisallowed:Z

    .line 69
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 80
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private getEseType()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0c0311

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 157
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .end local v0    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 159
    .restart local v0    # "val":Ljava/lang/String;
    :cond_2
    const-string v1, "HCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0312

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_3
    const-string v1, "Embedded SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0314

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_4
    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0316

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleNfcStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->setChecked(Z)V

    .line 119
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->getEseType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c060e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->setChecked(Z)V

    .line 129
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 130
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->getEseType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c060c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 134
    goto :goto_1

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c060d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 148
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mEse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setChecked(Z)V

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    :goto_1
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 88
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method
