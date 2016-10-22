.class Lcom/lenovo/settings/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$2;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$2;->val$adapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$2;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$2;->val$adapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/lenovo/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$500(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 220
    return-void
.end method
