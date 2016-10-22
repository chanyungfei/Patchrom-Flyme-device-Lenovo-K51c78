.class public Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/lenovo/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$SettingSyncStateClickListener;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;,
        Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;
    }
.end annotation


# static fields
.field private static final ADD_ACCOUNT_ACTION:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final MENU_SETTING:I = 0x1

.field private static final ORDER_LAST:I = 0x3e9

.field private static final ORDER_NEXT_TO_LAST:I = 0x3e8

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field public static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"


# instance fields
.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 702
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$3;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$3;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 650
    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    iget v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v4, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v2

    .line 510
    :cond_1
    invoke-virtual {p1, p2}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 512
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 513
    const-string v2, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No sync authorities for account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 514
    goto :goto_0

    .line 516
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v4, :cond_3

    .line 517
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 521
    goto :goto_0
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 389
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 393
    return-void
.end method

.method private getAccountTypePreferences(Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "helper"    # Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, "accountTypes":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    array-length v1, v9

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    .local v8, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v1, v9

    if-ge v11, v1, :cond_4

    .line 448
    aget-object v7, v9, v11

    .line 450
    .local v7, "accountType":Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 453
    :cond_1
    const-string v1, "com.lenovo.lsf.account"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 457
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v7, p2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v10

    .line 463
    .local v10, "accounts":[Landroid/accounts/Account;
    array-length v1, v10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v7}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v12, 0x1

    .line 466
    .local v12, "skipToAccount":Z
    :goto_2
    if-eqz v12, :cond_3

    .line 467
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v5, "fragmentArguments":Landroid/os/Bundle;
    const-string v1, "account"

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 470
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 475
    .local v0, "tempAcc":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;
    const v1, 0x7f040059

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->setLayoutResource(I)V

    .line 477
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :goto_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 463
    .end local v0    # "tempAcc":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;
    .end local v5    # "fragmentArguments":Landroid/os/Bundle;
    .end local v12    # "skipToAccount":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 479
    .restart local v12    # "skipToAccount":Z
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 480
    .restart local v5    # "fragmentArguments":Landroid/os/Bundle;
    const-string v1, "account_type"

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "account_label"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 485
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v1, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 488
    .restart local v0    # "tempAcc":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;
    const v1, 0x7f040059

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->setLayoutResource(I)V

    .line 490
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 495
    .end local v0    # "tempAcc":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v5    # "fragmentArguments":Landroid/os/Bundle;
    .end local v7    # "accountType":Ljava/lang/String;
    .end local v10    # "accounts":[Landroid/accounts/Account;
    .end local v12    # "skipToAccount":Z
    :cond_4
    new-instance v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$2;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    return-object v8
.end method

.method private isMobileqqAndLsf([Landroid/accounts/AuthenticatorDescription;)Z
    .locals 6
    .param p1, "authDescs"    # [Landroid/accounts/AuthenticatorDescription;

    .prologue
    const/4 v3, 0x0

    .line 240
    const/4 v2, 0x0

    .local v2, "isMobileqq":Z
    const/4 v1, 0x0

    .line 241
    .local v1, "isLsf":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 242
    const-string v4, "com.lenovo.lsf.account"

    aget-object v5, p1, v0

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    const/4 v1, 0x1

    .line 241
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const-string v4, "com.tencent.mobileqq.account"

    aget-object v5, p1, v0

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    const/4 v2, 0x1

    goto :goto_1

    .line 250
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private isMobileqqOrLsf([Landroid/accounts/AuthenticatorDescription;)Z
    .locals 3
    .param p1, "authDescs"    # [Landroid/accounts/AuthenticatorDescription;

    .prologue
    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 231
    const-string v1, "com.lenovo.lsf.account"

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.mobileqq.account"

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    const/4 v1, 0x1

    .line 236
    :goto_1
    return v1

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 396
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 397
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 398
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 399
    .local v0, "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 397
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 368
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0c0aa8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 369
    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 371
    const v1, 0x7f040059

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 373
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 374
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 375
    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 381
    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 382
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 383
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 384
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 406
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 407
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 408
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 409
    .local v0, "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 407
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "authenticatorHelper":Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;)V
    .locals 5
    .param p1, "profileData"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;

    .prologue
    .line 416
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 417
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 418
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    iget-object v4, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getAccountTypePreferences(Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 420
    .local v2, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 421
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 422
    iget-object v4, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_0
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 425
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 436
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;>;"
    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 437
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 439
    :cond_2
    return-void

    .line 429
    :cond_3
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 430
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f020033

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 431
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f0c0022

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 434
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 344
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$1;)V

    .line 345
    .local v1, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 346
    if-eqz p2, :cond_3

    .line 347
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 348
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0c0020

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 349
    iget-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 353
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    new-instance v2, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 356
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_modify_accounts"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    return-void

    .line 348
    :cond_2
    const v2, 0x7f0c001f

    goto :goto_0

    .line 351
    :cond_3
    iput-object p3, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    goto :goto_1
.end method


# virtual methods
.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 221
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;

    .line 222
    .local v0, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;)V

    .line 227
    :goto_0
    return-void

    .line 225
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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f0c06db

    .line 131
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 134
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    .line 135
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "authorities"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x0

    .line 149
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c053e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020079

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 150
    .local v0, "mi":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 155
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 214
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 215
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 216
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->cleanUpPreferences()V

    .line 217
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v9, 0x7f0c02fc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 257
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 258
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;

    .line 259
    .local v3, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-ne p1, v7, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v7

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 263
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v7, v7

    if-nez v7, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 300
    .end local v3    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;
    :cond_0
    :goto_1
    return v5

    .line 267
    .restart local v3    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;
    :cond_1
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v7, v7

    if-ne v7, v6, :cond_2

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    invoke-direct {p0, v7}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->isMobileqqOrLsf([Landroid/accounts/AuthenticatorDescription;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    invoke-direct {p0, v7}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->isMobileqqAndLsf([Landroid/accounts/AuthenticatorDescription;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 281
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.USER"

    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const-string v5, "authorities"

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 285
    goto :goto_1

    .line 287
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-ne p1, v7, :cond_5

    .line 288
    iget-object v5, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    .line 289
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v7, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$1;

    invoke-direct {v7, p0, v4}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;I)V

    invoke-static {v5, v4, v7}, Lcom/flyme/deviceoriginalsettings/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    move v5, v6

    .line 297
    goto :goto_1

    .line 257
    .end local v4    # "userId":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$SettingSyncStateClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$SettingSyncStateClickListener;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$1;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 172
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->updateUi()V

    .line 207
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 208
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 209
    return-void
.end method

.method updateUi()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 306
    const v8, 0x7f060002

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 307
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v8}, Lcom/flyme/deviceoriginalsettings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 309
    const-string v7, "AccountSettings"

    const-string v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->finish()V

    .line 339
    :cond_0
    return-void

    .line 314
    :cond_1
    const-string v8, "account"

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 315
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 317
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 318
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v6, v7, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 331
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 332
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 333
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;

    .line 334
    .local v3, "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 335
    iget-object v7, v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_3
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->updateAccountTypes(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_4
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 321
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 322
    .restart local v5    # "profilesCount":I
    if-le v5, v0, :cond_5

    .line 323
    .local v0, "addCategory":Z
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_2

    .line 324
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    :cond_5
    move v0, v7

    .line 322
    goto :goto_1
.end method
