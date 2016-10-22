.class public Lcom/lenovo/settings/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/TrustedCredentialsSettings$5;,
        Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;,
        Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;,
        Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;,
        Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field private static final REQUEST_PIN_CHALLENGE:I = 0x3015

.field private static final TAG:Ljava/lang/String; = "TrustedCredentialsSettings"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_SYSTEM:I = 0x1

.field public static final TYPE_USER:I = 0x2


# instance fields
.field private mAliasLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;",
            "Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;

.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    .line 172
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 790
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;
    .param p2, "x2"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/settings/TrustedCredentialsSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lenovo/settings/TrustedCredentialsSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/settings/TrustedCredentialsSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->ensurePin()V

    return-void
.end method

.method static synthetic access$3302(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method private closeKeyChainConnections()V
    .locals 3

    .prologue
    .line 239
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 240
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 244
    return-void
.end method

.method private ensurePin()V
    .locals 3

    .prologue
    .line 776
    iget-boolean v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    if-nez v2, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 778
    .local v1, "um":Landroid/os/UserManager;
    iget-boolean v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mChallengeRequested:Z

    if-nez v2, :cond_0

    .line 779
    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, "requestPin":Landroid/content/Intent;
    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 783
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mChallengeRequested:Z

    .line 787
    .end local v0    # "requestPin":Landroid/content/Intent;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    .line 788
    return-void
.end method

.method private getViewForCertificate(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;
    .param p2, "mTab"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 665
    if-nez p3, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 667
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400b0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 668
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V

    .line 669
    .local v0, "holder":Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;
    const v2, 0x7f0b0168

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->access$2102(Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 671
    const v2, 0x7f0b0169

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->access$2202(Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 673
    const v2, 0x7f0b016a

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    # setter for: Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0, v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->access$2302(Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 675
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 679
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->access$2100(Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$2400(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->access$2200(Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$2500(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z
    invoke-static {p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$2600(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->access$2300(Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v4

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 683
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;->access$2300(Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 685
    :cond_0
    return-object p3

    .line 677
    .end local v0    # "holder":Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/settings/TrustedCredentialsSettings$ViewHolder;
    goto :goto_0

    :cond_2
    move v2, v3

    .line 682
    goto :goto_1
.end method

.method private showCertDialog(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 5
    .param p1, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 695
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Lcom/flyme/deviceoriginalsettings/SslCertificate;
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$2700(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/SslCertificate;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flyme/deviceoriginalsettings/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 696
    .local v2, "view":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 697
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c0006

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 698
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 700
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    # invokes: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v3, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$2800(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v3

    new-instance v4, Lcom/lenovo/settings/TrustedCredentialsSettings$3;

    invoke-direct {v4, p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$3;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/lenovo/settings/TrustedCredentialsSettings$4;

    invoke-direct {v4, p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$4;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 734
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 772
    .local v1, "certDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 773
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 179
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const v0, 0x7f0400b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 228
    .local v0, "aliasLoader":Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    invoke-virtual {v0, v3}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    goto :goto_0

    .line 230
    .end local v0    # "aliasLoader":Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 232
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 235
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 236
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 189
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 191
    sget-object v3, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .line 192
    .local v3, "tab":Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 194
    sget-object v3, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, "rootView":Landroid/view/View;
    iget-object v4, p0, Lcom/lenovo/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 200
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I
    invoke-static {v3}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$300(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 201
    .local v1, "lv":Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {v0, p0, v3, v7}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V

    .line 203
    .local v0, "adapter":Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 204
    new-instance v4, Lcom/lenovo/settings/TrustedCredentialsSettings$1;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$1;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 223
    .end local v0    # "adapter":Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
    .end local v1    # "lv":Landroid/widget/ExpandableListView;
    :goto_0
    return-void

    .line 213
    :cond_1
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {v3}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$600(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 214
    .local v1, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {v0, p0, v3, v7}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V

    .line 215
    .local v0, "adapter":Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    new-instance v4, Lcom/lenovo/settings/TrustedCredentialsSettings$2;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$2;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
