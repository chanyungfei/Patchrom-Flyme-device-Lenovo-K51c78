.class Lcom/lenovo/settings/TrustedCredentialsSettings$3$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$3;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings$3;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3$1;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 712
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;

    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3$1;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$3;

    iget-object v1, v1, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$3$1;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$3;

    iget-object v2, v2, Lcom/lenovo/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 713
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 715
    return-void
.end method
