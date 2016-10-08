.class public Lcom/mediatek/simservs/capability/BarringServiceCapability;
.super Lcom/mediatek/simservs/capability/CapabilitiesType;
.source "BarringServiceCapability.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-barring-serv-cap"


# instance fields
.field mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;


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
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/capability/CapabilitiesType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getConditionCapabilities()Lcom/mediatek/simservs/capability/ConditionCapabilities;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "communication-barring-serv-cap"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 7
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 50
    const-string v0, "serv-cap-conditions"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 51
    .local v6, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 53
    .local v5, "conditionNode":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/capability/ConditionCapabilities;

    iget-object v1, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "communication-barring-serv-cap"

    iget-object v3, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/capability/ConditionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    .line 57
    .end local v5    # "conditionNode":Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method
