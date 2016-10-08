.class public abstract Lcom/mediatek/simservs/xcap/InquireType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "InquireType.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 54
    const/16 v16, 0x0

    .line 55
    .local v16, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v13, 0x0

    .line 56
    .local v13, "response":Lorg/apache/http/HttpResponse;
    const/4 v14, 0x0

    .line 58
    .local v14, "ret":Ljava/lang/String;
    const/4 v7, 0x0

    .line 61
    .local v7, "headers":[Lorg/apache/http/Header;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/InquireType;->getNodeUri()Ljava/net/URI;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "nodeUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v4

    .line 64
    .local v4, "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    invoke-virtual {v4}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableSimservQueryWhole()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 65
    const/16 v18, 0x0

    const-string v19, "simservs"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    const-string v20, "simservs"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 69
    :cond_0
    new-instance v15, Ljava/net/URI;

    invoke-direct {v15, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 71
    .local v15, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 72
    new-instance v12, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    .line 73
    .local v12, "resolver":Lcom/mediatek/xcap/client/NameResolver;
    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lcom/mediatek/xcap/client/NameResolver;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .local v3, "arr$":[Ljava/net/InetAddress;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    if-ge v8, v10, :cond_1

    aget-object v2, v3, v8

    .line 74
    .local v2, "address":Ljava/net/InetAddress;
    new-instance v17, Lcom/mediatek/xcap/client/XcapClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v18, v0

    instance-of v0, v2, Ljava/net/Inet6Address;

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;Z)V

    .end local v16    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v17, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object/from16 v16, v17

    .line 78
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v17    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v16    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_1
    if-nez v16, :cond_3

    .line 79
    new-instance v18, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v19, 0x1f4

    invoke-direct/range {v18 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v18
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v3    # "arr$":[Ljava/net/InetAddress;
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "nodeUri":Ljava/lang/String;
    .end local v12    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    .end local v15    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v5

    .line 123
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 124
    const-string v18, "User name may not be null"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 125
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 126
    new-instance v18, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v19, 0x193

    invoke-direct/range {v18 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v18

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v18

    .line 82
    .restart local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v11    # "nodeUri":Ljava/lang/String;
    .restart local v15    # "uri":Ljava/net/URI;
    :cond_2
    :try_start_2
    new-instance v17, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .end local v16    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v17    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object/from16 v16, v17

    .line 85
    .end local v17    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v16    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 86
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Lorg/apache/http/Header;

    .line 87
    const/16 v18, 0x0

    new-instance v19, Lorg/apache/http/message/BasicHeader;

    const-string v20, "X-3GPP-Intended-Identity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v19, v7, v18

    .line 89
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 91
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v7}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 93
    if-eqz v13, :cond_5

    .line 94
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 95
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 96
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 98
    .local v9, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/simservs/xcap/InquireType;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 134
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "is":Ljava/io/InputStream;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 136
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v11    # "nodeUri":Ljava/lang/String;
    .end local v15    # "uri":Ljava/net/URI;
    :goto_0
    return-object v14

    .line 99
    .restart local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v11    # "nodeUri":Ljava/lang/String;
    .restart local v15    # "uri":Ljava/net/URI;
    :cond_6
    :try_start_3
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0x199

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 100
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 101
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 103
    .restart local v9    # "is":Ljava/io/InputStream;
    if-eqz v9, :cond_8

    .line 104
    const-string v18, "true"

    const-string v19, "xcap.handl409"

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 106
    const/4 v14, 0x0

    .line 107
    new-instance v18, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v19, 0x199

    const-string v20, "phrase"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Lcom/mediatek/simservs/xcap/InquireType;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v18
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v11    # "nodeUri":Ljava/lang/String;
    .end local v15    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v5

    .line 129
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    new-instance v18, Lcom/mediatek/simservs/xcap/XcapException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v11    # "nodeUri":Ljava/lang/String;
    .restart local v15    # "uri":Ljava/net/URI;
    :cond_7
    const/4 v14, 0x0

    .line 111
    :try_start_5
    new-instance v18, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v19, 0x199

    invoke-direct/range {v18 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v18
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v11    # "nodeUri":Ljava/lang/String;
    .end local v15    # "uri":Ljava/net/URI;
    :catch_2
    move-exception v5

    .line 132
    .local v5, "e":Ljava/net/URISyntaxException;
    :try_start_6
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0

    .line 114
    .end local v5    # "e":Ljava/net/URISyntaxException;
    .restart local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v11    # "nodeUri":Ljava/lang/String;
    .restart local v15    # "uri":Ljava/net/URI;
    :cond_8
    const/4 v14, 0x0

    .line 115
    :try_start_7
    new-instance v18, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v19, 0x199

    invoke-direct/range {v18 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v18

    .line 118
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "is":Ljava/io/InputStream;
    :cond_9
    const/4 v14, 0x0

    .line 119
    new-instance v18, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v18
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 134
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v11    # "nodeUri":Ljava/lang/String;
    .end local v15    # "uri":Ljava/net/URI;
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0
.end method
