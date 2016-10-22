.class public Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "AccountSettingsOptionMenu.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_SETTINGS_SYNC:Ljava/lang/String; = "accounts_settings_sync"

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final KEY_ACCOUNT_AUTO_SYNC:Ljava/lang/String; = "account_auto_sync"

.field private static final KEY_ACCOUNT_WLAN_SYNC:Ljava/lang/String; = "account_wlan_sync"

.field private static final MESSAGE_UPDATA_UI:I = 0x1

.field private static final ORDER_NEXT_TO_LAST:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field mHandle:Landroid/os/Handler;

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
    .line 71
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthoritiesCount:I

    .line 98
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mHandle:Landroid/os/Handler;

    .line 413
    return-void
.end method

.method static synthetic access$1300(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getDefaultValues(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->listenToAccountUpdates()V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 183
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 187
    return-void
.end method

.method private static getDefaultValues(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "valuesName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 295
    const-string v1, "accounts_settings_sync"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 296
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 341
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 342
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 343
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    iget-object v0, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 344
    .local v0, "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 342
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 317
    .local v0, "currentProfile":Landroid/os/UserHandle;
    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-direct {v1, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 318
    .local v1, "preference":Landroid/preference/Preference;
    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    move-object v2, v1

    .line 319
    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_auto_sync"

    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getDefaultValues(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 321
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

    .line 323
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 324
    return-object v1

    .line 319
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private newWlanAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 329
    .local v0, "currentProfile":Landroid/os/UserHandle;
    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-direct {v1, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 330
    .local v1, "preference":Landroid/preference/Preference;
    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    move-object v2, v1

    .line 331
    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_wlan_sync"

    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getDefaultValues(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 332
    const-string v3, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhangsy: ((SwitchPreference)preference).isChecked()="

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

    .line 333
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "account_auto_sync"

    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getDefaultValues(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 335
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 336
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 337
    return-object v1

    .line 333
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setDefaultValues(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "valuesName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 300
    const-string v3, "accounts_settings_sync"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 301
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "account_auto_sync"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    const-string v3, "account_auto_sync"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 304
    const-string v3, "account_wlan_sync"

    const-string v4, "account_wlan_sync"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 310
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    return-void

    .line 306
    :cond_0
    const-string v3, "account_wlan_sync"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v3, "account_auto_sync"

    const-string v4, "account_auto_sync"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 351
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 352
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 353
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    iget-object v0, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 354
    .local v0, "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 352
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;)V
    .locals 2
    .param p1, "profileData"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .prologue
    .line 361
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 362
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->wlanAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 369
    :cond_0
    return-void
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 277
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;)V

    .line 278
    .local v1, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    iput-object p1, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 279
    iput-object p3, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 281
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    new-instance v2, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 286
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    .line 287
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->newWlanAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->wlanAccountPreference:Landroid/preference/Preference;

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    return-void
.end method


# virtual methods
.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .line 192
    .local v0, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;)V

    .line 197
    :goto_0
    return-void

    .line 195
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
    .line 142
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    .line 144
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthorities:[Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mAuthoritiesCount:I

    .line 148
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->setHasOptionsMenu(Z)V

    .line 149
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 176
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->stopListeningToAccountUpdates()V

    .line 177
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->cleanUpPreferences()V

    .line 179
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 202
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 203
    .local v2, "currentProfile":Landroid/os/UserHandle;
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 205
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_6

    .line 206
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .line 208
    .local v4, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    iget-object v0, v4, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 210
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "AccountSettings"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v4    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    .end local p1    # "preference":Landroid/preference/Preference;
    :goto_1
    return v11

    .restart local v4    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    move-object v0, p1

    .line 213
    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    .local v6, "isChecked":Z
    move-object v0, p1

    .line 214
    check-cast v0, Landroid/preference/SwitchPreference;

    if-nez v6, :cond_1

    move v1, v11

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "account_auto_sync"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getDefaultValues(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v11

    :goto_3
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mHandle:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->show(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;ZLandroid/os/UserHandle;Landroid/preference/Preference;Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;ZZLandroid/os/Handler;)V

    goto :goto_1

    :cond_1
    move v1, v5

    .line 214
    goto :goto_2

    :cond_2
    move v1, v5

    .line 215
    goto :goto_3

    .line 222
    .end local v6    # "isChecked":Z
    :cond_3
    iget-object v0, v4, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->wlanAccountPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 224
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    const-string v0, "AccountSettings"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :cond_4
    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    .line 229
    .restart local v6    # "isChecked":Z
    new-instance v10, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mHandle:Landroid/os/Handler;

    invoke-direct {v10, v2, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;-><init>(Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 231
    .local v10, "mAutoSyncChangeFragment":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "account_wlan_sync"

    invoke-static {v0, v1, v6}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 232
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->setSyncResult(Landroid/content/Context;)V

    goto :goto_1

    .line 205
    .end local v6    # "isChecked":Z
    .end local v10    # "mAutoSyncChangeFragment":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v4    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    :cond_6
    move v11, v5

    .line 239
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 155
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateUi()V

    .line 169
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 170
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->listenToAccountUpdates()V

    .line 171
    return-void
.end method

.method updateUi()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 244
    const v8, 0x7f060002

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->addPreferencesFromResource(I)V

    .line 247
    const-string v8, "account"

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 248
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 250
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 251
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v6, v7, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 264
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 265
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 266
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .line 267
    .local v3, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 268
    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 270
    :cond_1
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_2
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 254
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 255
    .restart local v5    # "profilesCount":I
    if-le v5, v0, :cond_3

    .line 256
    .local v0, "addCategory":Z
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 257
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    :cond_3
    move v0, v7

    .line 255
    goto :goto_1

    .line 272
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method
