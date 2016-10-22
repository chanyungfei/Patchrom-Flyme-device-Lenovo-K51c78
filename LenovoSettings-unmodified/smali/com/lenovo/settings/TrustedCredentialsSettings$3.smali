.class Lcom/lenovo/settings/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

.field final synthetic val$certHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 702
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1000(Lcom/lenovo/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mChallengeSucceeded:Z
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$2900(Lcom/lenovo/settings/TrustedCredentialsSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # invokes: Lcom/lenovo/settings/TrustedCredentialsSettings;->ensurePin()V
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$3000(Lcom/lenovo/settings/TrustedCredentialsSettings;)V

    .line 726
    :goto_0
    return-void

    .line 707
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 708
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$3100(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 709
    const v2, 0x1040013

    new-instance v3, Lcom/lenovo/settings/TrustedCredentialsSettings$3$1;

    invoke-direct {v3, p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$3$1;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 717
    const v2, 0x1040009

    new-instance v3, Lcom/lenovo/settings/TrustedCredentialsSettings$3$2;

    invoke-direct {v3, p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$3$2;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 723
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 724
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 725
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
