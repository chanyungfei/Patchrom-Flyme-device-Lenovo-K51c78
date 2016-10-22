.class Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
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
        "Ljava/util/List",
        "<",
        "Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field mList:Landroid/view/View;

.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    return-void
.end method

.method private setListViewEmptyText()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 339
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, "emptyView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    const v2, 0x7f0c0247

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 344
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v3, v3, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    const v2, -0x8a8a8b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 353
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TrustedCredentialsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResources has error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 285
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 296
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$2200(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    # invokes: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$2300(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v7

    .line 297
    .local v7, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    .line 298
    .local v10, "max":I
    const/4 v11, 0x0

    .line 299
    .local v11, "progress":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v8, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, "alias":Ljava/lang/String;
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$2200(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 302
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$2200(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 310
    return-object v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 285
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;>;"
    const/4 v3, 0x0

    .line 322
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 323
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    .line 325
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$1900(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 326
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 332
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->setListViewEmptyText()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->access$1900(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 290
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mProgress:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$2100(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 291
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$800(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    .line 292
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progressAndMax"    # [Ljava/lang/Integer;

    .prologue
    .line 313
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 314
    .local v1, "progress":I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 315
    .local v0, "max":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 319
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 285
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
