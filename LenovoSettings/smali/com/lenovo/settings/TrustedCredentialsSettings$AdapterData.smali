.class Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

.field private final mCertHoldersByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V
    .locals 1
    .param p2, "tab"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p3, "adapter"    # Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    .line 442
    iput-object p2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .line 443
    iput-object p3, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .line 444
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .param p4, "x3"    # Lcom/lenovo/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 434
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public remove(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 3
    .param p1, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 569
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    iget v2, p1, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 571
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 572
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 575
    .end local v0    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;"
    :cond_0
    return-void
.end method
