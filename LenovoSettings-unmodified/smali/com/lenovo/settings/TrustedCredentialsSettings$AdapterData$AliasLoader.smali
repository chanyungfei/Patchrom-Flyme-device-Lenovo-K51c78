.class Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)V
    .locals 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 453
    iget-object v0, p1, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    .line 454
    iget-object v0, p1, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1300(Lcom/lenovo/settings/TrustedCredentialsSettings;)Ljava/util/HashMap;

    move-result-object v0

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1100(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void
.end method

.method private setListViewEmptyText()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 554
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 555
    .local v0, "emptyView":Landroid/widget/TextView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    const v1, 0x7f0c0247

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 558
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 559
    const v1, -0x8a8a8b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 561
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 563
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 564
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 25
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 471
    .local v14, "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1000(Lcom/lenovo/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v23

    .line 472
    .local v23, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v21

    .line 475
    .local v21, "n":I
    new-instance v12, Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 477
    .local v12, "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    const/16 v20, 0x0

    .line 478
    .local v20, "max":I
    const/16 v24, 0x0

    .line 479
    .local v24, "progress":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 480
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserHandle;

    .line 481
    .local v22, "profile":Landroid/os/UserHandle;
    invoke-virtual/range {v22 .. v22}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 482
    .local v8, "profileId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v19

    .line 485
    .local v19, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1600(Lcom/lenovo/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    invoke-virtual/range {v19 .. v19}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 487
    .local v3, "service":Landroid/security/IKeyChainService;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1100(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$1700(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v11

    .line 488
    .local v11, "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    new-instance v14, Landroid/util/SparseArray;

    .end local v14    # "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 523
    .end local v3    # "service":Landroid/security/IKeyChainService;
    .end local v8    # "profileId":I
    .end local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .end local v17    # "i":I
    .end local v19    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v20    # "max":I
    .end local v21    # "n":I
    .end local v22    # "profile":Landroid/os/UserHandle;
    .end local v23    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v24    # "progress":I
    :cond_0
    :goto_1
    return-object v14

    .line 491
    .restart local v3    # "service":Landroid/security/IKeyChainService;
    .restart local v8    # "profileId":I
    .restart local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .restart local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .restart local v14    # "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    .restart local v17    # "i":I
    .restart local v19    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v20    # "max":I
    .restart local v21    # "n":I
    .restart local v22    # "profile":Landroid/os/UserHandle;
    .restart local v23    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v24    # "progress":I
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int v20, v20, v2

    .line 492
    invoke-virtual {v12, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 494
    .end local v3    # "service":Landroid/security/IKeyChainService;
    .end local v8    # "profileId":I
    .end local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v19    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v22    # "profile":Landroid/os/UserHandle;
    :cond_2
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 495
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserHandle;

    .line 496
    .restart local v22    # "profile":Landroid/os/UserHandle;
    invoke-virtual/range {v22 .. v22}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 497
    .restart local v8    # "profileId":I
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 498
    .restart local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 499
    new-instance v14, Landroid/util/SparseArray;

    .end local v14    # "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 518
    .end local v8    # "profileId":I
    .end local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .end local v17    # "i":I
    .end local v20    # "max":I
    .end local v21    # "n":I
    .end local v22    # "profile":Landroid/os/UserHandle;
    .end local v23    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v24    # "progress":I
    :catch_0
    move-exception v15

    .line 519
    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "TrustedCredentialsSettings"

    const-string v4, "Remote exception while loading aliases."

    invoke-static {v2, v4, v15}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    goto :goto_1

    .line 501
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v8    # "profileId":I
    .restart local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .restart local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .restart local v14    # "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    .restart local v17    # "i":I
    .restart local v20    # "max":I
    .restart local v21    # "n":I
    .restart local v22    # "profile":Landroid/os/UserHandle;
    .restart local v23    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v24    # "progress":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1600(Lcom/lenovo/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 503
    .restart local v3    # "service":Landroid/security/IKeyChainService;
    new-instance v13, Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 504
    .local v13, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 505
    .local v10, "aliasMax":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v10, :cond_4

    .line 506
    move/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/ParcelableString;

    iget-object v6, v2, Lcom/android/internal/util/ParcelableString;->string:Ljava/lang/String;

    .line 507
    .local v6, "alias":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v3, v6, v2}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v16

    .line 509
    .local v16, "encodedCertificate":[B
    invoke-static/range {v16 .. v16}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 510
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {v4}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1500(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v5}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1100(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/lenovo/settings/TrustedCredentialsSettings$1;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 505
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 514
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v16    # "encodedCertificate":[B
    :cond_4
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 515
    invoke-virtual {v14, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 494
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 521
    .end local v3    # "service":Landroid/security/IKeyChainService;
    .end local v8    # "profileId":I
    .end local v10    # "aliasMax":I
    .end local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .end local v13    # "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;"
    .end local v14    # "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v20    # "max":I
    .end local v21    # "n":I
    .end local v22    # "profile":Landroid/os/UserHandle;
    .end local v23    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v24    # "progress":I
    :catch_1
    move-exception v15

    .line 522
    .local v15, "e":Ljava/lang/InterruptedException;
    const-string v2, "TrustedCredentialsSettings"

    const-string v4, "InterruptedException while loading aliases."

    invoke-static {v2, v4, v15}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 446
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "certHolders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    const/4 v5, 0x0

    .line 539
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 540
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 541
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 542
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1500(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->notifyDataSetChanged()V

    .line 545
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 546
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 549
    invoke-direct {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->setListViewEmptyText()V

    .line 550
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 446
    check-cast p1, Landroid/util/SparseArray;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/lenovo/settings/TrustedCredentialsSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1100(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mProgress:I
    invoke-static {v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$1400(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 461
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {v1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1500(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;->access$1100(Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->getListViewId(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    .line 462
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progressAndMax"    # [Ljava/lang/Integer;

    .prologue
    .line 529
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 530
    .local v1, "progress":I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 531
    .local v0, "max":I
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 535
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 446
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
