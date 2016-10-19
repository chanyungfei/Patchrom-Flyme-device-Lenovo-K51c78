.class public Lcom/mediatek/simservs/client/policy/Rule;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Rule.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:rule"

.field public static final NODE_XML_NAMESPACE:Ljava/lang/String; = "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"


# instance fields
.field public mActions:Lcom/mediatek/simservs/client/policy/Actions;

.field public mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

.field public mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 32
    const-string v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 32
    const-string v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/Rule;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 61
    return-void
.end method


# virtual methods
.method public createActions()Lcom/mediatek/simservs/client/policy/Actions;
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public createConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .locals 5

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method public getActions()Lcom/mediatek/simservs/client/policy/Actions;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public getConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "cp:rule"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 10
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v9, 0x0

    .line 70
    move-object v8, p1

    check-cast v8, Lorg/w3c/dom/Element;

    .line 71
    .local v8, "domElement":Lorg/w3c/dom/Element;
    const-string v0, "id"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 72
    const-string v0, "conditions"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 73
    .local v7, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 93
    :goto_0
    const-string v0, "actions"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 94
    .local v6, "actionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_3

    .line 95
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 112
    :goto_1
    return-void

    .line 77
    .end local v6    # "actionsNode":Lorg/w3c/dom/NodeList;
    :cond_0
    const-string v0, "urn:ietf:params:xml:ns:common-policy"

    const-string v1, "conditions"

    invoke-interface {v8, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 79
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 80
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_0

    .line 83
    :cond_1
    const-string v0, "cp:conditions"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 84
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2

    .line 85
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_0

    .line 98
    .restart local v6    # "actionsNode":Lorg/w3c/dom/NodeList;
    :cond_3
    const-string v0, "urn:ietf:params:xml:ns:common-policy"

    const-string v1, "actions"

    invoke-interface {v8, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 99
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_4

    .line 100
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto :goto_1

    .line 103
    :cond_4
    const-string v0, "cp:actions"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 104
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_5

    .line 105
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto/16 :goto_1

    .line 108
    :cond_5
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto/16 :goto_1
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 5
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Rule;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Rule;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cp:rule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%5b@id=%22"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%22%5d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->saveContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v3, "cp:rule"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 123
    .local v2, "ruleElement":Lorg/w3c/dom/Element;
    const-string v3, "id"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/Conditions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 127
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 130
    .end local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-eqz v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/Actions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 132
    .local v0, "actionsElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 134
    .end local v0    # "actionsElement":Lorg/w3c/dom/Element;
    :cond_1
    return-object v2
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 202
    const/4 v5, 0x0

    .line 203
    .local v5, "root":Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    .line 204
    .local v6, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 206
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 207
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 208
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 209
    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 210
    invoke-virtual {p0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 219
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    :goto_0
    return-object v6

    .line 211
    :catch_0
    move-exception v4

    .line 213
    .local v4, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v4    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 215
    .local v2, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v2    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v2

    .line 217
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method
