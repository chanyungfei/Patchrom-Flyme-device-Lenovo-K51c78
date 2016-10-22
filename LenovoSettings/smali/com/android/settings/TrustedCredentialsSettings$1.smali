.class Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->addTab(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

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
    .line 236
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->showCertDialog(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$1000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V

    .line 237
    return-void
.end method
