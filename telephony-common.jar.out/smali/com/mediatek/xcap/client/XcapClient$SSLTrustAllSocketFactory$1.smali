.class Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory$1;
.super Ljava/lang/Object;
.source "XcapClient.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;-><init>(Lcom/mediatek/xcap/client/XcapClient;Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;

.field final synthetic val$this$0:Lcom/mediatek/xcap/client/XcapClient;


# direct methods
.method constructor <init>(Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;Lcom/mediatek/xcap/client/XcapClient;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory$1;->this$1:Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;

    iput-object p2, p0, Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory$1;->val$this$0:Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 614
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 619
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return-object v0
.end method
