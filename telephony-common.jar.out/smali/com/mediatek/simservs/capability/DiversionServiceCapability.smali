.class public Lcom/mediatek/simservs/capability/DiversionServiceCapability;
.super Lcom/mediatek/simservs/capability/CapabilitiesType;
.source "DiversionServiceCapability.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion-serv-cap"


# instance fields
.field mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

.field mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
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
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/capability/CapabilitiesType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getActionCapabilities()Lcom/mediatek/simservs/capability/ActionCapabilities;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

    return-object v0
.end method

.method public getConditionCapabilities()Lcom/mediatek/simservs/capability/ConditionCapabilities;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "communication-diversion-serv-cap"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 14
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v6, 0x0

    .line 63
    const-string v0, "serv-cap-actions"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 64
    .local v12, "actionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    invoke-interface {v12, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 66
    .local v5, "actionNode":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/capability/ActionCapabilities;

    iget-object v1, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "communication-diversion-serv-cap"

    iget-object v3, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/capability/ActionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

    .line 70
    .end local v5    # "actionNode":Lorg/w3c/dom/Element;
    :cond_0
    const-string v0, "serv-cap-conditions"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 71
    .local v13, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 72
    invoke-interface {v13, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 73
    .local v11, "conditionNode":Lorg/w3c/dom/Element;
    new-instance v6, Lcom/mediatek/simservs/capability/ConditionCapabilities;

    iget-object v7, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v8, "communication-diversion-serv-cap"

    iget-object v9, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mIntendedId:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v6 .. v11}, Lcom/mediatek/simservs/capability/ConditionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Node;)V

    iput-object v6, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    .line 77
    .end local v11    # "conditionNode":Lorg/w3c/dom/Element;
    :cond_1
    return-void
.end method
