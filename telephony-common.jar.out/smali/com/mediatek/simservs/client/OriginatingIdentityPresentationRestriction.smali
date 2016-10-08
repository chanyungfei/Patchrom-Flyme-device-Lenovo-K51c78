.class public Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
.super Lcom/mediatek/simservs/client/SimservType;
.source "OriginatingIdentityPresentationRestriction.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "originating-identity-presentation-restriction"


# instance fields
.field public mContainDefaultBehaviour:Z

.field public mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "xui"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "originating-identity-presentation-restriction"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 7
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    const-string v0, "default-behaviour"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 44
    .local v6, "defaultBehaviour":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iput-boolean v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 46
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 47
    .local v5, "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "originating-identity-presentation-restriction"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 62
    .end local v5    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v1, "default-behaviour"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 52
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 53
    iput-boolean v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 54
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 55
    .restart local v5    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "originating-identity-presentation-restriction"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    goto :goto_0

    .line 58
    .end local v5    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :cond_1
    new-instance v0, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "originating-identity-presentation-restriction"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    goto :goto_0
.end method

.method public isContainDefaultBehaviour()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    return v0
.end method

.method public isDefaultPresentationRestricted()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->isPresentationRestricted()Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "serviceXml":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setContent(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 78
    return-void
.end method

.method public setDefaultPresentationRestricted(Z)V
    .locals 2
    .param p1, "presentationRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setPresentationRestricted(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "defaultBehaviourXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContent(Ljava/lang/String;)V

    .line 132
    .end local v0    # "defaultBehaviourXml":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->saveConfiguration()V

    goto :goto_0
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 86
    const/4 v6, 0x0

    .line 87
    .local v6, "root":Lorg/w3c/dom/Element;
    const/4 v7, 0x0

    .line 88
    .local v7, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 90
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 91
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 92
    .local v2, "document":Lorg/w3c/dom/Document;
    const-string v8, "originating-identity-presentation-restriction"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 93
    invoke-interface {v2, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 94
    iget-object v8, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v8, v2}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 95
    .local v1, "defaultElement":Lorg/w3c/dom/Element;
    invoke-interface {v6, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 96
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 105
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "defaultElement":Lorg/w3c/dom/Element;
    .end local v2    # "document":Lorg/w3c/dom/Document;
    :goto_0
    return-object v7

    .line 97
    :catch_0
    move-exception v5

    .line 99
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 101
    .local v3, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v3    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v3

    .line 103
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method
