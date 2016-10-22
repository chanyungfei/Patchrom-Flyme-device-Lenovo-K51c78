.class public Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "AccountSettingsOptionMenu.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    }
.end annotation


# static fields
.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final ORDER_NEXT_TO_LAST:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthoritiesCount:I

    .line 323
    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->listenToAccountUpdates()V

    return-void
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 143
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 147
    return-void
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 252
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 253
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 254
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    iget-object v0, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 255
    .local v0, "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 253
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 239
    .local v0, "currentProfile":Landroid/os/UserHandle;
    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-direct {v1, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 240
    .local v1, "preference":Landroid/preference/Preference;
    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    move-object v2, v1

    .line 241
    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 243
    const-string v3, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liqxtest: ((SwitchPreference)preference).isChecked()="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 247
    return-object v1
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 262
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 263
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 264
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    iget-object v0, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 265
    .local v0, "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 263
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;)V
    .locals 2
    .param p1, "profileData"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .prologue
    .line 272
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 273
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 279
    :cond_0
    return-void
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;)V

    .line 222
    .local v1, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    iput-object p1, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 223
    iput-object p3, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 225
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    new-instance v2, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 230
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    return-void
.end method


# virtual methods
.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .line 152
    .local v0, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    .line 104
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthorities:[Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthoritiesCount:I

    .line 108
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->setHasOptionsMenu(Z)V

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 136
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->stopListeningToAccountUpdates()V

    .line 137
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->cleanUpPreferences()V

    .line 139
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 162
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 163
    .local v1, "currentProfile":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 164
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 166
    .local v3, "isChecked":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 167
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .line 168
    .local v4, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-ne p1, v5, :cond_3

    .line 170
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    const-string v5, "AccountSettings"

    const-string v6, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v4    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    :goto_1
    return v7

    .restart local v4    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    :cond_0
    move-object v5, p1

    .line 173
    check-cast v5, Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    move-object v5, p1

    .line 174
    check-cast v5, Landroid/preference/SwitchPreference;

    if-nez v3, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v8, v7

    :cond_1
    invoke-static {p0, v8, v1, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->show(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;ZLandroid/os/UserHandle;Landroid/preference/Preference;)V

    goto :goto_1

    :cond_2
    move v6, v8

    .line 174
    goto :goto_2

    .line 166
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    :cond_4
    move v7, v8

    .line 183
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 115
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 128
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateUi()V

    .line 129
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->listenToAccountUpdates()V

    .line 131
    return-void
.end method

.method updateUi()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 188
    const v8, 0x7f060001

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->addPreferencesFromResource(I)V

    .line 191
    const-string v8, "account"

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 192
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 194
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 195
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v6, v7, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 208
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 209
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 210
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .line 211
    .local v3, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 212
    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_1
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_2
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 198
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 199
    .restart local v5    # "profilesCount":I
    if-le v5, v0, :cond_3

    .line 200
    .local v0, "addCategory":Z
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 201
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    :cond_3
    move v0, v7

    .line 199
    goto :goto_1

    .line 216
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method
