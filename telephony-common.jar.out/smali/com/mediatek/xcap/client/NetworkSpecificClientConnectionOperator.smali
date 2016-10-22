.class public Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;
.super Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.source "NetworkSpecificClientConnectionOperator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XcapClient"

.field private static final staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private mResolver:Lcom/mediatek/xcap/client/NameResolver;

.field private mShouldUseIpv6:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0
    .param p1, "schemes"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 47
    return-void
.end method

.method private resolveHostName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    iget-object v5, p0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->mResolver:Lcom/mediatek/xcap/client/NameResolver;

    invoke-interface {v5, p1}, Lcom/mediatek/xcap/client/NameResolver;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .local v2, "arr$":[Ljava/net/InetAddress;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 67
    .local v0, "address":Ljava/net/InetAddress;
    iget-boolean v5, p0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->mShouldUseIpv6:Z

    if-eqz v5, :cond_1

    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    .line 68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-boolean v5, p0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->mShouldUseIpv6:Z

    if-nez v5, :cond_0

    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 19
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Connection must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_0
    if-nez p2, :cond_1

    .line 94
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Target host must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_1
    if-nez p5, :cond_2

    .line 99
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameters must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Connection must not be open."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v17

    .line 106
    .local v17, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v18

    .line 109
    .local v18, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v0, v18

    instance-of v5, v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v5, :cond_7

    .line 110
    sget-object v3, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .local v3, "plainSf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v15, v18

    .line 111
    check-cast v15, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 117
    .local v15, "layeredSf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->resolveHostName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 119
    .local v10, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_6

    .line 120
    const-string v5, "XcapClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkSpecificClientConnectionOperator: connecting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {v3}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 123
    .local v4, "sock":Ljava/net/Socket;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 126
    :try_start_0
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v12

    .line 130
    .local v12, "connsock":Ljava/net/Socket;
    if-eq v4, v12, :cond_4

    .line 131
    move-object v4, v12

    .line 132
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 145
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 146
    if-eqz v15, :cond_8

    .line 147
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v15, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v16

    .line 151
    .local v16, "layeredsock":Ljava/net/Socket;
    move-object/from16 v0, v16

    if-eq v0, v4, :cond_5

    .line 152
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 154
    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 176
    .end local v4    # "sock":Ljava/net/Socket;
    .end local v12    # "connsock":Ljava/net/Socket;
    .end local v16    # "layeredsock":Ljava/net/Socket;
    :cond_6
    :goto_2
    return-void

    .line 113
    .end local v3    # "plainSf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v10    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v14    # "i":I
    .end local v15    # "layeredSf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :cond_7
    move-object/from16 v3, v18

    .line 114
    .restart local v3    # "plainSf":Lorg/apache/http/conn/scheme/SocketFactory;
    const/4 v15, 0x0

    .restart local v15    # "layeredSf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    goto/16 :goto_0

    .line 156
    .restart local v4    # "sock":Ljava/net/Socket;
    .restart local v10    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v12    # "connsock":Ljava/net/Socket;
    .restart local v14    # "i":I
    :cond_8
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 161
    .end local v12    # "connsock":Ljava/net/Socket;
    :catch_0
    move-exception v13

    .line 162
    .local v13, "ex":Ljava/net/SocketException;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v14, v5, :cond_a

    .line 163
    instance-of v5, v13, Ljava/net/ConnectException;

    if-eqz v5, :cond_9

    check-cast v13, Ljava/net/ConnectException;

    .end local v13    # "ex":Ljava/net/SocketException;
    move-object v11, v13

    .line 167
    .local v11, "cause":Ljava/net/ConnectException;
    :goto_3
    new-instance v5, Lorg/apache/http/conn/HttpHostConnectException;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v11}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v5

    .line 163
    .end local v11    # "cause":Ljava/net/ConnectException;
    .restart local v13    # "ex":Ljava/net/SocketException;
    :cond_9
    new-instance v5, Ljava/net/ConnectException;

    invoke-virtual {v13}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/net/ConnectException;

    move-object v11, v5

    goto :goto_3

    .line 170
    .end local v13    # "ex":Ljava/net/SocketException;
    :catch_1
    move-exception v13

    .line 171
    .local v13, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v14, v5, :cond_a

    .line 172
    throw v13

    .line 119
    .end local v13    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1
.end method

.method public setNameResolver(Lcom/mediatek/xcap/client/NameResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/mediatek/xcap/client/NameResolver;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->mResolver:Lcom/mediatek/xcap/client/NameResolver;

    .line 51
    return-void
.end method

.method public setShouldUseIpv6(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->mShouldUseIpv6:Z

    .line 55
    return-void
.end method
