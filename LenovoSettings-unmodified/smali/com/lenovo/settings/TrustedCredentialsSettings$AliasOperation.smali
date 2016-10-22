.class Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

.field final synthetic this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p2, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 794
    iput-object p2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .line 795
    # setter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;
    invoke-static {p1, p0}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$3302(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;

    .line 796
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Lcom/lenovo/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;
    .param p3, "x2"    # Lcom/lenovo/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 790
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/lenovo/settings/TrustedCredentialsSettings;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 801
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/lenovo/settings/TrustedCredentialsSettings;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/lenovo/settings/TrustedCredentialsSettings;->access$1600(Lcom/lenovo/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    iget v5, v5, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    .line 803
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 804
    .local v3, "service":Landroid/security/IKeyChainService;
    iget-object v4, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {v4}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 805
    iget-object v4, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;
    invoke-static {v4}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$3400(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 806
    .local v0, "bytes":[B
    invoke-interface {v3, v0}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 807
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 821
    .end local v0    # "bytes":[B
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "service":Landroid/security/IKeyChainService;
    :goto_0
    return-object v4

    .line 809
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v3    # "service":Landroid/security/IKeyChainService;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$3500(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 811
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "service":Landroid/security/IKeyChainService;
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v4, "TrustedCredentialsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while toggling alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$3500(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 814
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 815
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_1
    move-exception v1

    .line 817
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v4, "TrustedCredentialsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while toggling alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$3500(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 819
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 820
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "TrustedCredentialsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while toggling alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$3500(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 821
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 790
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "ok"    # Ljava/lang/Boolean;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->access$3600(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;ZLcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 828
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 790
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$AliasOperation;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
