.class public Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;
.super Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/flyme/deviceoriginalsettings/DialogCreatable;


# static fields
.field private static final KEY_SYNC_SWITCH:Ljava/lang/String; = "sync_switch"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

.field private mDialogFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private lsfAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.lenovo.lsf.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 145
    .local v0, "acc":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private removeAccountPreferences()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 133
    .local v1, "parent":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 134
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method private startAccountSettings(Lcom/flyme/deviceoriginalsettings/AccountPreference;)V
    .locals 3
    .param p1, "acctPref"    # Lcom/flyme/deviceoriginalsettings/AccountPreference;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->finish()V

    .line 120
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/UserHandle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->removeAccountPreferences()V

    .line 156
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 158
    new-instance v7, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 159
    .local v7, "cpreference":Landroid/preference/Preference;
    const v1, 0x7f040059

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c0279

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    const v1, 0x7f02005c

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lenovo.leos.cloud.sync.intent.action.SYNC_SETTING"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    .end local v7    # "cpreference":Landroid/preference/Preference;
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v11, p1

    .local v11, "n":I
    :goto_1
    if-ge v8, v11, :cond_6

    .line 172
    aget-object v2, p1, v8

    .line 173
    .local v2, "account":Landroid/accounts/Account;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 175
    .local v4, "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 176
    .local v13, "showAccount":Z
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 177
    const/4 v13, 0x0

    .line 178
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v10, :cond_2

    aget-object v12, v6, v9

    .line 179
    .local v12, "requestedAuthority":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    const/4 v13, 0x1

    .line 187
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "requestedAuthority":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v1

    if-nez v1, :cond_3

    .line 188
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.lenovo.lsf.account"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v13, 0x0

    .line 193
    :cond_3
    if-eqz v13, :cond_4

    .line 194
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 195
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 197
    .local v0, "preference":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    const v1, 0x7f040059

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setLayoutResource(I)V

    .line 198
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    .end local v0    # "preference":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 178
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "requestedAuthority":Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 202
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "requestedAuthority":Ljava/lang/String;
    .end local v13    # "showAccount":Z
    :cond_6
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->onSyncStateUpdated()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/LenovoUtils;->setContext(Landroid/content/Context;)V

    .line 91
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->updateAuthDescriptions()V

    .line 95
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 210
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    .line 213
    .local v0, "accPref":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    .end local v0    # "accPref":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sync_switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    .line 62
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->setHasOptionsMenu(Z)V

    .line 74
    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 106
    instance-of v0, p2, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    if-eqz v0, :cond_0

    .line 107
    check-cast p2, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->startAccountSettings(Lcom/flyme/deviceoriginalsettings/AccountPreference;)V

    .line 111
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 109
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onStart()V

    .line 79
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 81
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onStop()V

    .line 100
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 102
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mDialogFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/flyme/deviceoriginalsettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mDialogFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 128
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->mDialogFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
