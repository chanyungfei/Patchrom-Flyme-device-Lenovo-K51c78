.class Lcom/flyme/deviceoriginalsettings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 193
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # setter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mPinConfirmed:Z
    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$002(Lcom/flyme/deviceoriginalsettings/MasterClear;Z)Z

    .line 194
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # invokes: Lcom/flyme/deviceoriginalsettings/MasterClear;->runRestrictionsChallenge()Z
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$100(Lcom/flyme/deviceoriginalsettings/MasterClear;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # getter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$200(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # getter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$200(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # setter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mWipeCacheAndkeepSdcard:Z
    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$302(Lcom/flyme/deviceoriginalsettings/MasterClear;Z)Z

    .line 204
    :goto_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    const/16 v4, 0x37

    # invokes: Lcom/flyme/deviceoriginalsettings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$400(Lcom/flyme/deviceoriginalsettings/MasterClear;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # getter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$500(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # getter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$500(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    const-string v3, "MasterClear"

    const-string v4, "checked"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # invokes: Lcom/flyme/deviceoriginalsettings/MasterClear;->getBackupActivityIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$600(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/content/Intent;

    move-result-object v2

    .line 211
    .local v2, "intent":Landroid/content/Intent;
    const/16 v0, 0x10

    .line 212
    .local v0, "ExitApplication":I
    :try_start_0
    const-string v3, "flag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    const/16 v4, 0x39

    invoke-virtual {v3, v2, v4}, Lcom/flyme/deviceoriginalsettings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v0    # "ExitApplication":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    const/4 v4, 0x1

    # setter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mWipeCacheAndkeepSdcard:Z
    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$302(Lcom/flyme/deviceoriginalsettings/MasterClear;Z)Z

    goto :goto_1

    .line 218
    :cond_3
    const-string v3, "MasterClear"

    const-string v4, "not checked"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # invokes: Lcom/flyme/deviceoriginalsettings/MasterClear;->showFinalConfirmation()V
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$700(Lcom/flyme/deviceoriginalsettings/MasterClear;)V

    goto :goto_0
.end method
