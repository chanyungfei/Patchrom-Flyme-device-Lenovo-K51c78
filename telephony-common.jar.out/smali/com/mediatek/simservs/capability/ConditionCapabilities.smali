.class public Lcom/mediatek/simservs/capability/ConditionCapabilities;
.super Lcom/mediatek/simservs/capability/ServiceCapabilities;
.source "ConditionCapabilities.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "serv-cap-conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "serv-cap-anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "serv-cap-busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "serv-cap-communication-diverted"

.field static final TAG_EXTERNAL_LIST:Ljava/lang/String; = "serv-cap-external-list"

.field static final TAG_IDENTITY:Ljava/lang/String; = "serv-cap-identity"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "serv-cap-international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "serv-cap-international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "serv-cap-media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "serv-cap-not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "serv-cap-not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "serv-cap-no-answer"

.field static final TAG_OTHER_IDENTITY:Ljava/lang/String; = "serv-cap-other-identity"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "serv-cap-presence-status"

.field static final TAG_REQUEST_NAME:Ljava/lang/String; = "serv-cap-request-name"

.field static final TAG_ROAMING:Ljava/lang/String; = "serv-cap-roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "serv-cap-rule-deactivated"

.field static final TAG_VALIDITY:Ljava/lang/String; = "serv-cap-validity"


# instance fields
.field public mAnonymousProvisioned:Z

.field public mCommunicationDivertedProvisioned:Z

.field public mExternalListProvisioned:Z

.field public mIdentityProvisioned:Z

.field public mInternationalProvisioned:Z

.field public mInternationalexHCProvisioned:Z

.field mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

.field public mOtherIdentityProvisioned:Z

.field public mPresenceStatusProvisioned:Z

.field public mRequestNameProvisioned:Z

.field public mRoamingProvisioned:Z

.field public mRuleDeactivatedProvisioned:Z

.field public mValidityProvisioned:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "nodes"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 77
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/capability/ConditionCapabilities;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getMediaConditions()Lcom/mediatek/simservs/capability/MediaConditions;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "serv-cap-conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 11
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v5, 0x0

    .line 82
    move-object v8, p1

    check-cast v8, Lorg/w3c/dom/Element;

    .line 84
    .local v8, "domElement":Lorg/w3c/dom/Element;
    const-string v0, "serv-cap-anonymous"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 85
    .local v7, "conditionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 87
    .local v6, "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 91
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_0
    const-string v0, "serv-cap-request-name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 92
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 94
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 98
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_1
    const-string v0, "serv-cap-communication-diverted"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 99
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2

    .line 100
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 101
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 102
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 105
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_2
    const-string v0, "serv-cap-external-list"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 106
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_3

    .line 107
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 108
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 109
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 112
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_3
    const-string v0, "serv-cap-identity"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 113
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_4

    .line 114
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 115
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 116
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 119
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_4
    const-string v0, "serv-cap-international"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 120
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_5

    .line 121
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 122
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 123
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 126
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_5
    const-string v0, "serv-cap-international-exHC"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 127
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_6

    .line 128
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 129
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 130
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 133
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_6
    const-string v0, "serv-cap-other-identity"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 134
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_7

    .line 135
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 136
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 137
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 140
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_7
    const-string v0, "serv-cap-presence-status"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 141
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_8

    .line 142
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 143
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 144
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 147
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_8
    const-string v0, "serv-cap-roaming"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 148
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_9

    .line 149
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 150
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 151
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 154
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_9
    const-string v0, "serv-cap-rule-deactivated"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 155
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_a

    .line 156
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 157
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 161
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_a
    const-string v0, "serv-cap-validity"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 162
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_b

    .line 163
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 164
    .restart local v6    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 165
    .restart local v10    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 168
    .end local v6    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v10    # "provisioned":Ljava/lang/String;
    :cond_b
    const-string v0, "serv-cap-media"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 169
    .local v9, "mediassNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_c

    .line 170
    new-instance v0, Lcom/mediatek/simservs/capability/MediaConditions;

    iget-object v1, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "serv-cap-conditions"

    iget-object v3, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v9, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/capability/MediaConditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

    .line 173
    :cond_c
    return-void
.end method

.method public isAnonymousProvisioned()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    return v0
.end method

.method public isCommunicationDivertedProvisioned()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    return v0
.end method

.method public isExternalListProvisioned()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    return v0
.end method

.method public isIdentityProvisioned()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    return v0
.end method

.method public isInternationalProvisioned()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    return v0
.end method

.method public isInternationalexHCProvisioned()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    return v0
.end method

.method public isOtherIdentityProvisioned()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    return v0
.end method

.method public isPresenceStatusProvisioned()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    return v0
.end method

.method public isRequestNameProvisioned()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    return v0
.end method

.method public isRoamingProvisioned()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    return v0
.end method

.method public isRuleDeactivatedProvisioned()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    return v0
.end method

.method public isValidityProvisioned()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    return v0
.end method
