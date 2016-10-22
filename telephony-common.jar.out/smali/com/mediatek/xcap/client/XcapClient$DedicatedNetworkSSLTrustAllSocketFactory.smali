.class Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLTrustAllSocketFactory;
.super Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;
.source "XcapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/xcap/client/XcapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DedicatedNetworkSSLTrustAllSocketFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/xcap/client/XcapClient;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/XcapClient;Ljava/security/KeyStore;)V
    .locals 0
    .param p2, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 647
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLTrustAllSocketFactory;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;-><init>(Lcom/mediatek/xcap/client/XcapClient;Ljava/security/KeyStore;)V

    .line 649
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
    .line 662
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLTrustAllSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 663
    .local v0, "sslSocket":Ljava/net/Socket;
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLTrustAllSocketFactory;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    # getter for: Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/xcap/client/XcapClient;->access$000(Lcom/mediatek/xcap/client/XcapClient;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V

    .line 664
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
    .line 654
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLTrustAllSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 656
    .local v0, "sslSocket":Ljava/net/Socket;
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLTrustAllSocketFactory;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    # getter for: Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/xcap/client/XcapClient;->access$000(Lcom/mediatek/xcap/client/XcapClient;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V

    .line 657
    return-object v0
.end method
