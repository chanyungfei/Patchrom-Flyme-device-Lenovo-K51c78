.class public abstract Lcom/mediatek/simservs/capability/CapabilitiesType;
.super Lcom/mediatek/simservs/xcap/InquireType;
.source "CapabilitiesType.java"


# static fields
.field static final ATT_ACTIVE:Ljava/lang/String; = "active"


# instance fields
.field public mActived:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
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
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/InquireType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/CapabilitiesType;->mActived:Z

    .line 47
    invoke-direct {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->loadConfiguration()V

    .line 48
    return-void
.end method

.method private loadConfiguration()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1f4

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getContent()Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "xmlContent":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 59
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6}, Lorg/xml/sax/InputSource;-><init>()V

    .line 60
    .local v6, "is":Lorg/xml/sax/InputSource;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 63
    :try_start_0
    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 73
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 75
    .local v1, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_0

    .line 76
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 77
    .local v0, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 78
    .local v7, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-lez v10, :cond_0

    .line 79
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 80
    invoke-interface {v7, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 81
    .local v8, "node":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "active"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 82
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/mediatek/simservs/capability/CapabilitiesType;->mActived:Z

    .line 88
    .end local v0    # "activeElement":Lorg/w3c/dom/Element;
    .end local v5    # "i":I
    .end local v7    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/capability/CapabilitiesType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    .line 89
    return-void

    .line 64
    .end local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v4

    .line 65
    .local v4, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 67
    new-instance v10, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v10, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v10

    .line 68
    .end local v4    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v4

    .line 69
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    new-instance v10, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v10, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v10

    .line 79
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "activeElement":Lorg/w3c/dom/Element;
    .restart local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i":I
    .restart local v7    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "node":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract initServiceInstance(Lorg/w3c/dom/Document;)V
.end method

.method public isActive()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v1, "active"

    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getByAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 100
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    :cond_0
    const-string v1, "active"

    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getByAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "active"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "active"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
