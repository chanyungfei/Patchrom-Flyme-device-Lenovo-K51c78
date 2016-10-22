.class public Lcom/lenovo/settings/nfc/NfcSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "NfcSettings.java"

# interfaces
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private mEse:Landroid/preference/PreferenceScreen;

.field private mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/lenovo/settings/nfc/NfcSettings$1;

    invoke-direct {v0}, Lcom/lenovo/settings/nfc/NfcSettings$1;-><init>()V

    sput-object v0, Lcom/lenovo/settings/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getEseType()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0c0315

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
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
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c031c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .end local v0    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 77
    .restart local v0    # "val":Ljava/lang/String;
    :cond_2
    const-string v1, "HCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0316

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_3
    const-string v1, "Embedded SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0318

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_4
    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c031a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isEseEnabled()Z
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 46
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 47
    iget-object v1, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->show()V

    .line 48
    new-instance v1, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    iget-object v4, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mEse:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v1, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    .line 49
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0615

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 30
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 32
    const-string v0, "ese_settings"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mEse:Landroid/preference/PreferenceScreen;

    .line 33
    const-string v0, "android_beam_settings"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 34
    invoke-direct {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->isEseEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mEse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mEse:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getEseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 63
    iget-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->pause()V

    .line 66
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/nfc/NfcEnabler;->resume()V

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->isEseEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/settings/nfc/NfcSettings;->mEse:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/lenovo/settings/nfc/NfcSettings;->getEseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    :cond_1
    return-void
.end method
