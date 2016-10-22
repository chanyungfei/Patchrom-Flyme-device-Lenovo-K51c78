.class Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation


# instance fields
.field private mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 390
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    .line 391
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/lenovo/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 412
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 415
    :cond_0
    return v1
.end method

.method public getItem(I)Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 425
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListViewId(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 401
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$600(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1100(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/lenovo/settings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p2, p3}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1200(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 407
    return-void
.end method

.method public remove(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 397
    return-void
.end method
