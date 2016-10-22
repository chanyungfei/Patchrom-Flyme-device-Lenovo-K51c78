.class Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
    }
.end annotation


# instance fields
.field private final mCertHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 1
    .param p2, "tab"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    .line 245
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 246
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    .line 247
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/android/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    return-void
.end method

.method private load()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 258
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 262
    if-nez p2, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 264
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400b0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 265
    new-instance v1, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 266
    .local v1, "holder":Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    const v3, 0x7f0b0168

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1302(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 268
    const v3, 0x7f0b0169

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1402(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 270
    const v3, 0x7f0b016a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    # setter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1, v3}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1502(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 271
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 275
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 276
    .local v0, "certHolder":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1300(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1400(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$1700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z
    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$1800(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1500(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v5

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 280
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1500(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 282
    :cond_0
    return-object p2

    .line 273
    .end local v0    # "certHolder":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .end local v1    # "holder":Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    .restart local v1    # "holder":Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    goto :goto_0

    .restart local v0    # "certHolder":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    :cond_2
    move v3, v4

    .line 279
    goto :goto_1
.end method
