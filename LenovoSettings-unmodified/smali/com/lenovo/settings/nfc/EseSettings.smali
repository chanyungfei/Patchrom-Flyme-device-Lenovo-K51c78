.class public Lcom/lenovo/settings/nfc/EseSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EseSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Lcom/lenovo/settings/nfc/EseSettings$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/nfc/EseSettings$1;-><init>(Lcom/lenovo/settings/nfc/EseSettings;)V

    iput-object v0, p0, Lcom/lenovo/settings/nfc/EseSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/nfc/EseSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/nfc/EseSettings;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lenovo/settings/nfc/EseSettings;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 123
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->finish()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isEseTypeEseEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_multise_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    const-string v2, "Embedded SE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isEseTypeSimEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_multise_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    const-string v2, "SIM1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/nfc/EseSettings;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0310

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 31
    const-string v2, "ese_type_hce_settings"

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/nfc/EseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    iput-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 32
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    const v3, 0x7f0c0312

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setTitle(I)V

    .line 33
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    const v3, 0x7f0c0313

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setSummary(I)V

    .line 35
    const-string v2, "ese_type_ese_settings"

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/nfc/EseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    iput-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 36
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    const v3, 0x7f0c0314

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setTitle(I)V

    .line 37
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    const v3, 0x7f0c0315

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setSummary(I)V

    .line 38
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-direct {p0}, Lcom/lenovo/settings/nfc/EseSettings;->isEseTypeEseEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    .line 40
    const-string v2, "ese_type_sim_settings"

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/nfc/EseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    iput-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 41
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    const v3, 0x7f0c0316

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setTitle(I)V

    .line 42
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    const v3, 0x7f0c0317

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setSummary(I)V

    .line 43
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-direct {p0}, Lcom/lenovo/settings/nfc/EseSettings;->isEseTypeSimEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    .line 45
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 47
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->disableRadio()V

    .line 50
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->disableRadio()V

    .line 51
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->disableRadio()V

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_multise_active"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 59
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/nfc/EseSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 56
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const-string v2, "Embedded SE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_1

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 65
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    if-ne p1, v1, :cond_4

    .line 66
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 67
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "curSet":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "HCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    .end local v0    # "curSet":Ljava/lang/String;
    :cond_2
    :goto_0
    return v4

    .line 71
    .restart local v0    # "curSet":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    const-string v3, "HCE"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 72
    .end local v0    # "curSet":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    if-ne p1, v1, :cond_7

    .line 73
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 74
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 75
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 76
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "curSet":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v1, "Embedded SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    const-string v3, "Embedded SE"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 79
    .end local v0    # "curSet":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeHceSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 81
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeEseSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/lenovo/settings/nfc/EseSettings;->mEseTypeSimSettings:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "curSet":Ljava/lang/String;
    if-eqz v0, :cond_9

    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    :cond_9
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/EseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    const-string v3, "SIM1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
