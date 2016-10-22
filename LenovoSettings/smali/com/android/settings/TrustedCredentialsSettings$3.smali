.class Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->showCertDialog(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 455
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$2800(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mChallengeSucceeded:Z
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$2900(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->ensurePin()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$3000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)V

    .line 478
    :goto_0
    return-void

    .line 460
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$3100(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 462
    const v2, 0x1040013

    new-instance v3, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3$1;-><init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    const v2, 0x1040009

    new-instance v3, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3$2;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3$2;-><init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 477
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
