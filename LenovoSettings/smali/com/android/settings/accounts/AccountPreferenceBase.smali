.class Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# static fields
.field public static final ACCOUNT_TYPES_FILTER_KEY:Ljava/lang/String; = "account_types"

.field public static final AUTHORITIES_FILTER_KEY:Ljava/lang/String; = "authorities"

.field protected static final TAG:Ljava/lang/String; = "AccountSettings"


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUm:Landroid/os/UserManager;

.field protected mUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 131
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "prefs":Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 168
    .local v3, "targetCtx":Landroid/content/Context;
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 170
    .local v4, "themedCtx":Landroid/content/Context;
    const v5, 0x103012b

    invoke-virtual {v4, v5}, Landroid/content/Context;->setTheme(I)V

    .line 171
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    iget v6, v0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {v5, v4, v6, p2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 180
    .end local v0    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v3    # "targetCtx":Landroid/content/Context;
    .end local v4    # "themedCtx":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v2

    .line 174
    .restart local v0    # "desc":Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 88
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 111
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 112
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    .line 76
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/flyme/deviceoriginalsettings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 79
    new-instance v1, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 117
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 123
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 186
    return-void
.end method
