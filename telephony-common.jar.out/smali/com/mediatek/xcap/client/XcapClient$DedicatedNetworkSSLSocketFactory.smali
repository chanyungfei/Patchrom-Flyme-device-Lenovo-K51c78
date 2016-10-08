.class Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "XcapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/xcap/client/XcapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DedicatedNetworkSSLSocketFactory"
.end annotation


# instance fields
.field mSslContext:Ljavax/net/ssl/SSLContext;

.field final synthetic this$0:Lcom/mediatek/xcap/client/XcapClient;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/XcapClient;Ljava/security/KeyStore;)V
    .locals 2
    .param p2, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 572
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    .line 573
    invoke-direct {p0, p2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 568
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 574
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 575
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 589
    .local v0, "sslSocket":Ljava/net/Socket;
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    # getter for: Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/xcap/client/XcapClient;->access$000(Lcom/mediatek/xcap/client/XcapClient;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V

    .line 590
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 582
    .local v0, "sslSocket":Ljava/net/Socket;
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    # getter for: Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/xcap/client/XcapClient;->access$000(Lcom/mediatek/xcap/client/XcapClient;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V

    .line 583
    return-object v0
.end method
