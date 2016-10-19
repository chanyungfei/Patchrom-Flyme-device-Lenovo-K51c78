.class public Lcom/mediatek/simservs/client/CommunicationDiversion;
.super Lcom/mediatek/simservs/client/SimservType;
.source "CommunicationDiversion.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/RuleType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
    }
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion"


# instance fields
.field mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

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
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 46
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 5

    .prologue
    .line 188
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "communication-diversion"

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 189
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public getNoReplyTimer()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getValue()I

    move-result v0

    return v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "communication-diversion"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 19
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 60
    const-string v1, "NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 61
    .local v16, "noReplyTimerNode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_2

    .line 62
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 64
    .local v15, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 65
    .local v18, "val":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 66
    .local v7, "noReplyTimer":I
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_0

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 106
    .end local v7    # "noReplyTimer":I
    .end local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v18    # "val":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v1, "ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 107
    .local v17, "ruleSetNode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_5

    .line 108
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 110
    .local v6, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 142
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    return-void

    .line 72
    .end local v17    # "ruleSetNode":Lorg/w3c/dom/NodeList;
    :cond_2
    const-string v1, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v2, "NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 74
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    .line 75
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 77
    .restart local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 78
    .restart local v18    # "val":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 79
    .restart local v7    # "noReplyTimer":I
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_0

    .line 85
    .end local v7    # "noReplyTimer":I
    .end local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v18    # "val":Ljava/lang/String;
    :cond_3
    const-string v1, "ss:NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 86
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_4

    .line 87
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 89
    .restart local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 90
    .restart local v18    # "val":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 91
    .restart local v7    # "noReplyTimer":I
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_0

    .line 97
    .end local v7    # "noReplyTimer":I
    .end local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v18    # "val":Ljava/lang/String;
    :cond_4
    new-instance v8, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v11, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    const/4 v14, -0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_0

    .line 115
    .restart local v17    # "ruleSetNode":Lorg/w3c/dom/NodeList;
    :cond_5
    const-string v1, "urn:ietf:params:xml:ns:common-policy"

    const-string v2, "ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 116
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_6

    .line 117
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 119
    .restart local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_1

    .line 125
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_6
    const-string v1, "cp:ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 126
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_7

    .line 127
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 129
    .restart local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_1

    .line 135
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_7
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_1
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
    .line 203
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 205
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

    .line 206
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v4, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "ruleXml":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Rule;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v2    # "ruleXml":Ljava/lang/String;
    .end local v3    # "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_1
    const-string v4, "saveRule"

    const-string v5, "ruleId is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
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
    .line 177
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "ruleXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public setNoReplyTimer(I)V
    .locals 2
    .param p1, "timerValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setValue(I)V

    .line 156
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "noReplyTimerXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContent(Ljava/lang/String;)V

    .line 158
    return-void
.end method
