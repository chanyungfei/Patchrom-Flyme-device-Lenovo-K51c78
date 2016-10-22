.class public Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
.super Lcom/mediatek/simservs/client/SimservType;
.source "OutgoingCommunicationBarring.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/RuleType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "outgoing-communication-barring"


# instance fields
.field mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;


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
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 42
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 5

    .prologue
    .line 117
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "outgoing-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 118
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "outgoing-communication-barring"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 7
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v2, 0x0

    .line 46
    const-string v0, "ruleset"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 47
    .local v6, "ruleSetNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 48
    const-string v0, "OutgoingCommunicationBarring"

    const-string v1, "Got ruleset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 50
    .local v5, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "outgoing-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 51
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 82
    .end local v5    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "urn:ietf:params:xml:ns:common-policy"

    const-string v1, "ruleset"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 56
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2

    .line 57
    const-string v0, "OutgoingCommunicationBarring"

    const-string v1, "Got ruleset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 59
    .restart local v5    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "outgoing-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 61
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 65
    .end local v5    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_2
    const-string v0, "cp:ruleset"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 66
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_3

    .line 67
    const-string v0, "OutgoingCommunicationBarring"

    const-string v1, "Got cp:ruleset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 69
    .restart local v5    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "outgoing-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 71
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 75
    .end local v5    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_3
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "outgoing-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 76
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_0
.end method

.method public saveRule(Ljava/lang/String;)V
    .locals 6
    .param p1, "ruleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 134
    .local v3, "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 135
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v4, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "ruleXml":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Rule;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v2    # "ruleXml":Ljava/lang/String;
    .end local v3    # "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_1
    const-string v4, "saveRule"

    const-string v5, "ruleId is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    return-void
.end method

.method public saveRuleSet()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "ruleXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 108
    return-void
.end method
