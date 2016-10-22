.class public Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# static fields
.field private static final ADD_ACCOUNT_REQUEST:I = 0x2

.field private static final CHOOSE_ACCOUNT_REQUEST:I = 0x1

.field static final EXTRA_HAS_MULTIPLE_USERS:Ljava/lang/String; = "hasMultipleUsers"

.field static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selected_account"

.field private static final KEY_ADD_CALLED:Ljava/lang/String; = "AddAccountCalled"

.field private static final KEY_CALLER_IDENTITY:Ljava/lang/String; = "pendingIntent"

.field private static final SHOULD_NOT_RESOLVE:Ljava/lang/String; = "SHOULDN\'T RESOLVE!"

.field private static final TAG:Ljava/lang/String; = "AccountSettings"


# instance fields
.field private mAddAccountCalled:Z

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 202
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v9, "identityIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "SHOULDN\'T RESOLVE!"

    const-string v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 205
    const-string v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-static {p0, v5, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 208
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    const-string v0, "hasMultipleUsers"

    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 220
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 175
    :pswitch_0
    if-nez p2, :cond_0

    .line 176
    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->setResult(I)V

    .line 177
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 181
    :cond_0
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->setResult(I)V

    .line 185
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f0c0a99

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const-string v0, "AddAccountCalled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 134
    const-string v0, "AccountSettings"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v2, "restored"

    invoke-static {v0, v2}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 138
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v11, v4, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 140
    const-string v0, "no_modify_accounts"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v11, v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const v0, 0x7f0c0b9b

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->finish()V

    .line 169
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.settings.ADD_ACCOUNT_SETTINGS"

    move-object v0, p0

    move v3, v1

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, "authorities":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "accountTypes":[Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 162
    const-string v0, "authorities"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_3
    if-eqz v8, :cond_4

    .line 165
    const-string v0, "account_types"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :cond_4
    const-string v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v10, v12}, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method
