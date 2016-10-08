.class public Lcom/mediatek/simservs/capability/ActionCapabilities;
.super Lcom/mediatek/simservs/capability/ServiceCapabilities;
.source "ActionCapabilities.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "serv-cap-actions"

.field static final TAG_NOTIFY_CALLER:Ljava/lang/String; = "serv-cap-notify-caller"

.field static final TAG_NOTIFY_SERVED_USER:Ljava/lang/String; = "serv-cap-notify-served-user"

.field static final TAG_NOTIFY_SERVED_USER_ON_OUTBOUND_CALL:Ljava/lang/String; = "serv-cap-notify-served-user-on-outbound-call"

.field static final TAG_REVEAL_IDENTITY_TO_CALLER:Ljava/lang/String; = "serv-cap-reveal-identity-to-caller"

.field static final TAG_REVEAL_IDENTITY_TO_TARGET:Ljava/lang/String; = "serv-cap-reveal-identity-to-target"

.field static final TAG_REVEAL_SERVED_USER_IDENTITY_TO_CALLER:Ljava/lang/String; = "serv-cap-reveal-served-user-identity-to-caller"

.field static final TAG_TARGET:Ljava/lang/String; = "serv-cap-target"


# instance fields
.field public mNotifyCallerProvisioned:Z

.field public mNotifyServedUserOnOutboundCallProvisioned:Z

.field public mNotifyServedUserProvisioned:Z

.field public mRevealIdentityToCallerProvisioned:Z

.field public mRevealIdentityToTargetProvisioned:Z

.field public mRevealServedUserIdentityToCallerProvisioned:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 28
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyCallerProvisioned:Z

    .line 29
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserProvisioned:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserOnOutboundCallProvisioned:Z

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToCallerProvisioned:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealServedUserIdentityToCallerProvisioned:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToTargetProvisioned:Z

    .line 46
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

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 28
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyCallerProvisioned:Z

    .line 29
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserProvisioned:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserOnOutboundCallProvisioned:Z

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToCallerProvisioned:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealServedUserIdentityToCallerProvisioned:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToTargetProvisioned:Z

    .line 60
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/capability/ActionCapabilities;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "serv-cap-actions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v5, 0x0

    .line 65
    move-object v2, p1

    check-cast v2, Lorg/w3c/dom/Element;

    .line 67
    .local v2, "domElement":Lorg/w3c/dom/Element;
    const-string v4, "serv-cap-notify-caller"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 68
    .local v1, "conditionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_0

    .line 69
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 70
    .local v0, "conditionElement":Lorg/w3c/dom/Element;
    const-string v4, "provisioned"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "provisioned":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyCallerProvisioned:Z

    .line 74
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v3    # "provisioned":Ljava/lang/String;
    :cond_0
    const-string v4, "serv-cap-notify-served-user"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 76
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 77
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v4, "provisioned"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3    # "provisioned":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserProvisioned:Z

    .line 81
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v3    # "provisioned":Ljava/lang/String;
    :cond_1
    const-string v4, "serv-cap-notify-served-user-on-outbound-call"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    .line 83
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 84
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v4, "provisioned"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .restart local v3    # "provisioned":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserOnOutboundCallProvisioned:Z

    .line 88
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v3    # "provisioned":Ljava/lang/String;
    :cond_2
    const-string v4, "serv-cap-reveal-identity-to-caller"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 89
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_3

    .line 90
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 91
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v4, "provisioned"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .restart local v3    # "provisioned":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToCallerProvisioned:Z

    .line 95
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v3    # "provisioned":Ljava/lang/String;
    :cond_3
    const-string v4, "serv-cap-reveal-served-user-identity-to-caller"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_4

    .line 97
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 98
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v4, "provisioned"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .restart local v3    # "provisioned":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealServedUserIdentityToCallerProvisioned:Z

    .line 102
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v3    # "provisioned":Ljava/lang/String;
    :cond_4
    const-string v4, "serv-cap-reveal-identity-to-target"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_5

    .line 104
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 105
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v4, "provisioned"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .restart local v3    # "provisioned":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToTargetProvisioned:Z

    .line 108
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v3    # "provisioned":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public isNotifyCallerProvisioned()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyCallerProvisioned:Z

    return v0
.end method

.method public isNotifyServedUserOnOutboundCallProvisioned()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserOnOutboundCallProvisioned:Z

    return v0
.end method

.method public isNotifyServedUserProvisioned()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserProvisioned:Z

    return v0
.end method

.method public isRevealIdentityToCallerProvisioned()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToCallerProvisioned:Z

    return v0
.end method

.method public isRevealIdentityToTargetProvisioned()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToTargetProvisioned:Z

    return v0
.end method

.method public isRevealServedUserIdentityToCallerProvisioned()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealServedUserIdentityToCallerProvisioned:Z

    return v0
.end method
