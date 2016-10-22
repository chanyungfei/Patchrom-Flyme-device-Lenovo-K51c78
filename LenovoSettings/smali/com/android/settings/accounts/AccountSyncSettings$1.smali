.class Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->access$000(Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->access$000(Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.lenovo.lsf.account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->notifyLsfExit()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->access$100(Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->access$000(Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v2, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 141
    return-void
.end method
