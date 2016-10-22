.class public Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;
.super Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$FragmentStarter;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field public static final KEY_ACCOUNT_LABEL:Ljava/lang/String; = "account_label"

.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final LAUNCHING_LOCATION_SETTINGS:Ljava/lang/String; = "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

.field private static final MENU_SYNC_CANCEL_ID:I = 0x2

.field private static final MENU_SYNC_NOW_ID:I = 0x1

.field private static final REQUEST_SHOW_SYNC_SETTINGS:I = 0x1


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;-><init>()V

    .line 419
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private addAuthenticatorSettings()V
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 413
    .local v0, "prefs":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 416
    :cond_0
    return-void
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 525
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 527
    .local v0, "authDesc":Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p1, p2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 528
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v6

    .line 531
    :cond_1
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 532
    .local v4, "resolvedActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 534
    .local v5, "resolvedAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v7, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 535
    .local v1, "authenticatorAppInf":Landroid/content/pm/ApplicationInfo;
    iget-boolean v7, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v7, :cond_2

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 537
    .end local v1    # "authenticatorAppInf":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 538
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "AccountSettings"

    const-string v8, "Intent considered unsafe due to exception."

    invoke-static {v7, v8, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 334
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 335
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 336
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget-object v3, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    const/4 v3, 0x1

    .line 340
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    :goto_1
    return v3

    .line 334
    .restart local v2    # "syncInfo":Landroid/content/SyncInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 11
    .param p1, "sync"    # Z

    .prologue
    .line 215
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 216
    .local v8, "userId":I
    invoke-static {v8}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 217
    .local v7, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v2, "extras":Landroid/os/Bundle;
    const-string v9, "force"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 221
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 223
    .local v5, "pref":Landroid/preference/Preference;
    instance-of v9, v5, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    if-eqz v9, :cond_2

    .line 224
    check-cast v5, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    .end local v5    # "pref":Landroid/preference/Preference;
    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 226
    .local v0, "account":Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v9, v7

    if-ge v4, v9, :cond_2

    .line 227
    aget-object v6, v7, v4

    .line 228
    .local v6, "sa":Landroid/content/SyncAdapterType;
    aget-object v9, v7, v4

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8, v2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 226
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 235
    :cond_1
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    .line 221
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "j":I
    .end local v6    # "sa":Landroid/content/SyncAdapterType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_3
    return-void
.end method

.method private showAccountsIfNeeded()V
    .locals 17

    .prologue
    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v7

    .line 358
    .local v7, "accounts":[Landroid/accounts/Account;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 359
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 360
    const v2, 0x7f060023

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 361
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v12, v7

    .local v12, "n":I
    :goto_1
    if-ge v9, v12, :cond_6

    .line 362
    aget-object v3, v7, v9

    .line 364
    .local v3, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 361
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 365
    :cond_3
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 367
    .local v5, "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x1

    .line 368
    .local v15, "showAccount":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    .line 369
    const/4 v15, 0x0

    .line 370
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v11, :cond_4

    aget-object v14, v8, v10

    .line 371
    .local v14, "requestedAuthority":Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 372
    const/4 v15, 0x1

    .line 378
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "requestedAuthority":Ljava/lang/String;
    :cond_4
    if-eqz v15, :cond_2

    .line 379
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 380
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/flyme/deviceoriginalsettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 382
    .local v1, "preference":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    const v2, 0x7f04005a

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setLayoutResource(I)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v2, :cond_2

    .line 385
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_2

    .line 370
    .end local v1    # "preference":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v14    # "requestedAuthority":Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 390
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v5    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "requestedAuthority":Ljava/lang/String;
    .end local v15    # "showAccount":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_7

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-static {}, Lcom/flyme/deviceoriginalsettings/LenovoFacebook;->getFacebookAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/LenovoFacebook;->getLenovoFacebookAccountStatus(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v6, v0}, Lcom/flyme/deviceoriginalsettings/LenovoFacebook;->addAuthenticatorSettings(Landroid/content/Context;Landroid/preference/PreferenceManager;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 396
    .local v13, "prefs":Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_0

    .line 397
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 403
    .end local v13    # "prefs":Landroid/preference/PreferenceScreen;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->finish()V

    goto/16 :goto_0
.end method

.method private startAccountSettings(Lcom/flyme/deviceoriginalsettings/AccountPreference;)V
    .locals 7
    .param p1, "acctPref"    # Lcom/flyme/deviceoriginalsettings/AccountPreference;

    .prologue
    .line 162
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    const-string v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const-class v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0a97

    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 169
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .param p1, "prefs"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 456
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 457
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 458
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 459
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 478
    new-instance v5, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$FragmentStarter;

    const-class v6, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c018f

    invoke-direct {v5, p0, v6, v7}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$FragmentStarter;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 516
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 517
    goto :goto_0

    .line 482
    :cond_1
    const/high16 v5, 0x10000

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 484
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_2

    .line 485
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 488
    :cond_2
    const-string v5, "account"

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 489
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 490
    new-instance v5, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;

    invoke-direct {v5, p0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 518
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    .line 351
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 352
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 132
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 137
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 547
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 549
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 550
    check-cast v0, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    .line 551
    .local v0, "accPref":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    .end local v0    # "accPref":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 175
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 101
    :cond_0
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 179
    const/4 v2, 0x1

    const v3, 0x7f0c0aa6

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02009d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 182
    .local v1, "syncNow":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 183
    const/4 v2, 0x2

    const v3, 0x7f0c0aa7

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02009c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 186
    .local v0, "syncCancel":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 187
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 188
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    const v2, 0x7f040064

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 119
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 121
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 211
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 203
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 207
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 153
    instance-of v0, p2, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    if-eqz v0, :cond_0

    .line 154
    check-cast p2, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/flyme/deviceoriginalsettings/AccountPreference;)V

    .line 158
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 156
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 192
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 193
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 195
    .local v0, "syncActive":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_2

    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    return-void

    .end local v0    # "syncActive":Z
    :cond_0
    move v0, v2

    .line 193
    goto :goto_0

    .restart local v0    # "syncActive":Z
    :cond_1
    move v3, v2

    .line 195
    goto :goto_1

    :cond_2
    move v1, v2

    .line 196
    goto :goto_2
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onStart()V

    .line 108
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 109
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 110
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    .line 111
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onStop()V

    .line 145
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 146
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 147
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 34

    .prologue
    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    if-nez v30, :cond_0

    .line 329
    :goto_0
    return-void

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v29

    .line 251
    .local v29, "userId":I
    invoke-static/range {v29 .. v29}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v10

    .line 253
    .local v10, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/4 v5, 0x0

    .line 254
    .local v5, "anySyncFailed":Z
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 257
    .local v11, "date":Ljava/util/Date;
    invoke-static/range {v29 .. v29}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v22

    .line 258
    .local v22, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v28, "userFacing":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "k":I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "n":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    .line 260
    aget-object v20, v22, v14

    .line 261
    .local v20, "sa":Landroid/content/SyncAdapterType;
    invoke-virtual/range {v20 .. v20}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 262
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 265
    .end local v20    # "sa":Landroid/content/SyncAdapterType;
    :cond_2
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .local v9, "count":I
    :goto_2
    if-ge v12, v9, :cond_f

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 267
    .local v19, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    move/from16 v30, v0

    if-nez v30, :cond_4

    .line 265
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v19

    .line 271
    check-cast v3, Lcom/flyme/deviceoriginalsettings/AccountPreference;

    .line 272
    .local v3, "accountPref":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 273
    .local v2, "account":Landroid/accounts/Account;
    const/16 v23, 0x0

    .line 274
    .local v23, "syncCount":I
    const-wide/16 v16, 0x0

    .line 275
    .local v16, "lastSuccessTime":J
    const/16 v25, 0x0

    .line 276
    .local v25, "syncIsFailing":Z
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 277
    .local v6, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 278
    .local v26, "syncingNow":Z
    if-eqz v6, :cond_9

    .line 279
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 280
    .local v7, "authority":Ljava/lang/String;
    move/from16 v0, v29

    invoke-static {v2, v7, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v21

    .line 282
    .local v21, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v2, v7}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v24

    .line 283
    .local v24, "syncEnabled":Z
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 284
    .local v8, "authorityIsPending":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v7}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 285
    .local v4, "activelySyncing":Z
    if-eqz v21, :cond_7

    if-eqz v24, :cond_7

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_7

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    const/4 v15, 0x1

    .line 290
    .local v15, "lastSyncFailed":Z
    :goto_5
    if-eqz v15, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    .line 291
    const/16 v25, 0x1

    .line 292
    const/4 v5, 0x1

    .line 294
    :cond_5
    or-int v26, v26, v4

    .line 295
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v30, v0

    cmp-long v30, v16, v30

    if-gez v30, :cond_6

    .line 296
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v16, v0

    .line 298
    :cond_6
    if-eqz v24, :cond_8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    const/16 v30, 0x1

    :goto_6
    add-int v23, v23, v30

    .line 299
    goto :goto_4

    .line 285
    .end local v15    # "lastSyncFailed":Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_5

    .line 298
    .restart local v15    # "lastSyncFailed":Z
    :cond_8
    const/16 v30, 0x0

    goto :goto_6

    .line 301
    .end local v4    # "activelySyncing":Z
    .end local v7    # "authority":Ljava/lang/String;
    .end local v8    # "authorityIsPending":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "lastSyncFailed":Z
    .end local v21    # "status":Landroid/content/SyncStatusInfo;
    .end local v24    # "syncEnabled":Z
    :cond_9
    const-string v30, "AccountSettings"

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 302
    const-string v30, "AccountSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "no syncadapters found for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_a
    if-eqz v25, :cond_b

    .line 306
    const/16 v30, 0x2

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 307
    :cond_b
    if-nez v23, :cond_c

    .line 308
    const/16 v30, 0x1

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 309
    :cond_c
    if-lez v23, :cond_e

    .line 310
    if-eqz v26, :cond_d

    .line 311
    const/16 v30, 0x3

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 313
    :cond_d
    const/16 v30, 0x0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSyncStatus(IZ)V

    .line 314
    const-wide/16 v30, 0x0

    cmp-long v30, v16, v30

    if-lez v30, :cond_3

    .line 315
    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSyncStatus(IZ)V

    .line 316
    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 317
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 318
    .local v27, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c0aa2

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v27, v32, v33

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 323
    .end local v27    # "timeString":Ljava/lang/String;
    :cond_e
    const/16 v30, 0x1

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 327
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountPref":Lcom/flyme/deviceoriginalsettings/AccountPreference;
    .end local v6    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "lastSuccessTime":J
    .end local v19    # "pref":Landroid/preference/Preference;
    .end local v23    # "syncCount":I
    .end local v25    # "syncIsFailing":Z
    .end local v26    # "syncingNow":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v5, :cond_10

    const/16 v30, 0x0

    :goto_7
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 327
    :cond_10
    const/16 v30, 0x8

    goto :goto_7
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
