.class Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateExpandableAdapter"
.end annotation


# instance fields
.field private mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 281
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    .line 282
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->load()V

    .line 283
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/lenovo/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 374
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 377
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 379
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getChild(II)Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 321
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1100(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/lenovo/settings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p4, p5}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1200(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 297
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 298
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 301
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 306
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 332
    if-nez p3, :cond_0

    .line 333
    iget-object v4, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 335
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0, p4}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 338
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x1020016

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 339
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 340
    .local v1, "profile":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1000(Lcom/lenovo/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 341
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    const v4, 0x7f0c001f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 346
    :goto_0
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 348
    return-object p3

    .line 344
    :cond_1
    const v4, 0x7f0c001e

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getListViewId(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 370
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$300(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 365
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 366
    return-void
.end method

.method public remove(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 288
    return-void
.end method
