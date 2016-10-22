.class Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 493
    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 501
    .local v0, "prefIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;->val$pm:Landroid/content/pm/PackageManager;

    # invokes: Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    invoke-static {v1, v2, v0}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->access$000(Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 509
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 504
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refusing to launch authenticator intent becauseit exploits Settings permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
