.class Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;
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
.field private final mCertHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p2, "certHolder"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 516
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .line 517
    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;
    .param p3, "x2"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$1;

    .prologue
    .line 513
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 520
    :try_start_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2

    .line 521
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 523
    .local v3, "service":Landroid/security/IKeyChainService;
    :try_start_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$3300(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 525
    .local v0, "bytes":[B
    invoke-interface {v3, v0}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 526
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 531
    :try_start_2
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 542
    .end local v0    # "bytes":[B
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "service":Landroid/security/IKeyChainService;
    :goto_0
    return-object v4

    .line 528
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v3    # "service":Landroid/security/IKeyChainService;
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$3400(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 531
    :try_start_4
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 533
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "service":Landroid/security/IKeyChainService;
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 531
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v3    # "service":Landroid/security/IKeyChainService;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v4
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 535
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "service":Landroid/security/IKeyChainService;
    :catch_1
    move-exception v1

    .line 537
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 538
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 539
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 540
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 542
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 513
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "ok"    # Ljava/lang/Boolean;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->access$3500(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;ZLcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V

    .line 547
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 513
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$AliasOperation;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
