.class Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsOptionMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 480
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isWlan:Z
    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$500(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->val$context:Landroid/content/Context;

    const-string v2, "account_wlan_sync"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isChecked:Z
    invoke-static {v3}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$600(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z

    move-result v3

    # invokes: Lcom/android/settings/accounts/AccountSettingsOptionMenu;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/accounts/AccountSettingsOptionMenu;->access$700(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 482
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isChecked:Z
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$600(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z

    move-result v2

    # setter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mWlanSync:Z
    invoke-static {v1, v2}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$802(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;Z)Z

    .line 492
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mpre:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$1100(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isChecked:Z
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$600(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 494
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 495
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 496
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$1200(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 498
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->setSyncResult(Landroid/content/Context;)V

    .line 500
    return-void

    .line 484
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->val$context:Landroid/content/Context;

    const-string v2, "account_auto_sync"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isChecked:Z
    invoke-static {v3}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$600(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z

    move-result v3

    # invokes: Lcom/android/settings/accounts/AccountSettingsOptionMenu;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/accounts/AccountSettingsOptionMenu;->access$700(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 485
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isChecked:Z
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$600(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z

    move-result v2

    # setter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mAutoSync:Z
    invoke-static {v1, v2}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$902(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;Z)Z

    .line 486
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mAutoSync:Z
    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$900(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mProfileData:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ProfileData;
    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$1000(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Lcom/android/settings/accounts/AccountSettingsOptionMenu$ProfileData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ProfileData;->wlanAccountPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mProfileData:Lcom/android/settings/accounts/AccountSettingsOptionMenu$ProfileData;
    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$1000(Lcom/android/settings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Lcom/android/settings/accounts/AccountSettingsOptionMenu$ProfileData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettingsOptionMenu$ProfileData;->wlanAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
