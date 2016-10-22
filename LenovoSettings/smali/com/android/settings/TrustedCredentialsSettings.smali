.class public Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$4;,
        Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;,
        Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field private static final REQUEST_PIN_CHALLENGE:I = 0x3015

.field private static final TAG:Ljava/lang/String; = "TrustedCredentialsSettings"

.field private static final USER_ACTION:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"


# instance fields
.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private final mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mTabHost:Landroid/widget/TabHost;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 171
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 513
    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->showCertDialog(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->ensurePin()V

    return-void
.end method

.method private addTab(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)V
    .locals 6
    .param p1, "tab"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 226
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$500(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mLabel:I
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$700(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mView:I
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$600(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 229
    .local v2, "systemSpec":Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 231
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$800(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 232
    .local v1, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;)V

    .line 233
    .local v0, "adapter":Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    new-instance v3, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    return-void
.end method

.method private ensurePin()V
    .locals 3

    .prologue
    .line 498
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    if-nez v2, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 500
    .local v1, "um":Landroid/os/UserManager;
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mChallengeRequested:Z

    if-nez v2, :cond_0

    .line 501
    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "requestPin":Landroid/content/Intent;
    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 505
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mChallengeRequested:Z

    .line 509
    .end local v0    # "requestPin":Landroid/content/Intent;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    .line 510
    return-void
.end method

.method private showCertDialog(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 8
    .param p1, "certHolder"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 435
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mSslCert:Lcom/flyme/deviceoriginalsettings/SslCertificate;
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$2600(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/SslCertificate;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/flyme/deviceoriginalsettings/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    .line 436
    .local v5, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 437
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c0006

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 439
    const v6, 0x104000a

    new-instance v7, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$2;

    invoke-direct {v7, p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 446
    .local v2, "certDialog":Landroid/app/Dialog;
    const v6, 0x7f0b0144

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 447
    .local v0, "body":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 448
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400b1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 451
    .local v4, "removeButton":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 452
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    move-result-object v6

    # invokes: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v6, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$2700(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 453
    new-instance v6, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;

    invoke-direct {v6, p0, p1, v2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 482
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 486
    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mChallengeRequested:Z

    .line 488
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

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
    const v0, 0x7f0400b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 185
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 186
    sget-object v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->addTab(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)V

    .line 188
    sget-object v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->addTab(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)V

    .line 189
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$500(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 195
    :cond_0
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method
