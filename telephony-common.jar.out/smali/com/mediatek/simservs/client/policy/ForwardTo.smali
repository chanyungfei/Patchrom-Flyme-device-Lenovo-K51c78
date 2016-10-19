.class public Lcom/mediatek/simservs/client/policy/ForwardTo;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "ForwardTo.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "forward-to"

.field static final TAG_NOTIFY_CALLER:Ljava/lang/String; = "notify-caller"

.field static final TAG_NOTIFY_SERVED_USER:Ljava/lang/String; = "notify-served-user"

.field static final TAG_NOTIFY_SERVED_USER_ON_OUTBOUND_CALL:Ljava/lang/String; = "notify-served-user-on-outbound-call"

.field static final TAG_REVEAL_IDENTITY_TO_CALLER:Ljava/lang/String; = "reveal-identity-to-caller"

.field static final TAG_REVEAL_IDENTITY_TO_TARGET:Ljava/lang/String; = "reveal-identity-to-target"

.field static final TAG_REVEAL_SERVED_USER_IDENTITY_TO_CALLER:Ljava/lang/String; = "reveal-served-user-identity-to-caller"

.field static final TAG_TARGET:Ljava/lang/String; = "target"


# instance fields
.field public mNotifyCaller:Z

.field public mNotifyServedUser:Z

.field public mNotifyServedUserOnOutboundCall:Z

.field public mRevealIdentityToCaller:Z

.field public mRevealIdentityToTarget:Z

.field public mRevealServedUserIdentityToCaller:Z

.field public mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 2
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 35
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 36
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 35
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 36
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 67
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/ForwardTo;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "forward-to"

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 14
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v13, 0x0

    .line 77
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 78
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v11, "target"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 79
    .local v2, "forwardToNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_7

    .line 80
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 81
    .local v10, "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 97
    .end local v10    # "targetElement":Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    const-string v11, "notify-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_9

    .line 99
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 100
    .local v4, "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "notifyCaller":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 119
    .end local v3    # "notifyCaller":Ljava/lang/String;
    .end local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    const-string v11, "reveal-identity-to-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 120
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_b

    .line 121
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 122
    .local v6, "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "revealCaller":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 142
    .end local v5    # "revealCaller":Ljava/lang/String;
    .end local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    :cond_2
    :goto_2
    const-string v11, "reveal-identity-to-target"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_d

    .line 144
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 145
    .local v8, "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "revealTarget":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 165
    .end local v7    # "revealTarget":Ljava/lang/String;
    .end local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    :cond_3
    :goto_3
    const-string v11, "reveal-served-user-identity-to-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 166
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_f

    .line 167
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 168
    .local v1, "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 188
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_4
    :goto_4
    const-string v11, "notify-served-user"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 189
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_11

    .line 190
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 191
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 192
    .restart local v9    # "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 211
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_5
    :goto_5
    const-string v11, "notify-served-user-on-outbound-call"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 212
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_13

    .line 213
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 214
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 215
    .restart local v9    # "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 233
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_6
    :goto_6
    return-void

    .line 83
    :cond_7
    const-string v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v12, "target"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 84
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_8

    .line 85
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 86
    .restart local v10    # "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    goto/16 :goto_0

    .line 88
    .end local v10    # "targetElement":Lorg/w3c/dom/Element;
    :cond_8
    const-string v11, "ss:target"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_0

    .line 91
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 92
    .restart local v10    # "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    goto/16 :goto_0

    .line 103
    .end local v10    # "targetElement":Lorg/w3c/dom/Element;
    :cond_9
    const-string v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v12, "notify-caller"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 104
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_a

    .line 105
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 106
    .restart local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 107
    .restart local v3    # "notifyCaller":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    goto/16 :goto_1

    .line 109
    .end local v3    # "notifyCaller":Ljava/lang/String;
    .end local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_a
    const-string v11, "ss:notify-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 111
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_1

    .line 112
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 113
    .restart local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 114
    .restart local v3    # "notifyCaller":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    goto/16 :goto_1

    .line 125
    .end local v3    # "notifyCaller":Ljava/lang/String;
    .end local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_b
    const-string v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v12, "reveal-identity-to-caller"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_c

    .line 128
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 129
    .restart local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 130
    .restart local v5    # "revealCaller":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    goto/16 :goto_2

    .line 132
    .end local v5    # "revealCaller":Ljava/lang/String;
    .end local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    :cond_c
    const-string v11, "ss:reveal-identity-to-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_2

    .line 135
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 136
    .restart local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 137
    .restart local v5    # "revealCaller":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    goto/16 :goto_2

    .line 148
    .end local v5    # "revealCaller":Ljava/lang/String;
    .end local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    :cond_d
    const-string v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v12, "reveal-identity-to-target"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 150
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_e

    .line 151
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 152
    .restart local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 153
    .restart local v7    # "revealTarget":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    goto/16 :goto_3

    .line 155
    .end local v7    # "revealTarget":Ljava/lang/String;
    .end local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    :cond_e
    const-string v11, "ss:reveal-identity-to-target"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 157
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_3

    .line 158
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 159
    .restart local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 160
    .restart local v7    # "revealTarget":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    goto/16 :goto_3

    .line 171
    .end local v7    # "revealTarget":Ljava/lang/String;
    .end local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    :cond_f
    const-string v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v12, "reveal-served-user-identity-to-caller"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 173
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_10

    .line 174
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 175
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 176
    .restart local v9    # "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    goto/16 :goto_4

    .line 178
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_10
    const-string v11, "ss:reveal-served-user-identity-to-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 180
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_4

    .line 181
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 182
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 183
    .restart local v9    # "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    goto/16 :goto_4

    .line 194
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_11
    const-string v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v12, "notify-served-user"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 196
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_12

    .line 197
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 198
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 199
    .restart local v9    # "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    goto/16 :goto_5

    .line 201
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_12
    const-string v11, "ss:notify-served-user"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 203
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_5

    .line 204
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 205
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 206
    .restart local v9    # "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    goto/16 :goto_5

    .line 217
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_13
    const-string v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v12, "notify-served-user-on-outbound-call"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 219
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_14

    .line 220
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 221
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 222
    .restart local v9    # "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    goto/16 :goto_6

    .line 224
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_14
    const-string v11, "ss:notify-served-user-on-outbound-call"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 226
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_6

    .line 227
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 228
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 229
    .restart local v9    # "str":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    goto/16 :goto_6
.end method

.method public isNotifyCaller()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    return v0
.end method

.method public isNotifyServedUse()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    return v0
.end method

.method public isNotifyServedUserOnOutboundCall()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    return v0
.end method

.method public isRevealIdentityToCaller()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    return v0
.end method

.method public isRevealIdentityToTarget()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    return v0
.end method

.method public isRevealServedUserIdentityToCaller()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    return v0
.end method

.method public setNotifyCaller(Z)V
    .locals 0
    .param p1, "notifyCaller"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 288
    return-void
.end method

.method public setNotifyServedUser(Z)V
    .locals 0
    .param p1, "notifyToServedUser"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 300
    return-void
.end method

.method public setNotifyServedUserOnOutboundCall(Z)V
    .locals 0
    .param p1, "notifyToServedUser"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 304
    return-void
.end method

.method public setRevealIdentityToCaller(Z)V
    .locals 0
    .param p1, "revealIdToCaller"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 292
    return-void
.end method

.method public setRevealIdentityToTarget(Z)V
    .locals 0
    .param p1, "revealIdToTarget"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 308
    return-void
.end method

.method public setRevealServedUserIdentityToCaller(Z)V
    .locals 0
    .param p1, "revealIdToCaller"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 296
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 9
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 242
    const-string v8, "forward-to"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 244
    .local v1, "forwardElement":Lorg/w3c/dom/Element;
    const-string v8, "target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 245
    .local v0, "allowElement":Lorg/w3c/dom/Element;
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 246
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 248
    const-string v8, "notify-caller"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 249
    .local v2, "notifyCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    if-eqz v8, :cond_0

    const-string v8, "true"

    :goto_0
    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 250
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 252
    const-string v8, "reveal-identity-to-caller"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 254
    .local v5, "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    if-eqz v8, :cond_1

    const-string v8, "true"

    :goto_1
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 255
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 257
    const-string v8, "reveal-served-user-identity-to-caller"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 259
    .local v7, "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    if-eqz v8, :cond_2

    const-string v8, "true"

    :goto_2
    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 261
    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 263
    const-string v8, "notify-served-user"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 265
    .local v3, "notifyServedUserElement":Lorg/w3c/dom/Element;
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    if-eqz v8, :cond_3

    const-string v8, "true"

    :goto_3
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 266
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 268
    const-string v8, "notify-served-user-on-outbound-call"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 270
    .local v4, "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    if-eqz v8, :cond_4

    const-string v8, "true"

    :goto_4
    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 272
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 274
    const-string v8, "reveal-identity-to-target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 276
    .local v6, "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    if-eqz v8, :cond_5

    const-string v8, "true"

    :goto_5
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 277
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 279
    return-object v1

    .line 249
    .end local v3    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    .end local v4    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    .end local v5    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    .end local v6    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    .end local v7    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_0
    const-string v8, "false"

    goto :goto_0

    .line 254
    .restart local v5    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_1
    const-string v8, "false"

    goto :goto_1

    .line 259
    .restart local v7    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_2
    const-string v8, "false"

    goto :goto_2

    .line 265
    .restart local v3    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    :cond_3
    const-string v8, "false"

    goto :goto_3

    .line 270
    .restart local v4    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    :cond_4
    const-string v8, "false"

    goto :goto_4

    .line 276
    .restart local v6    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    :cond_5
    const-string v8, "false"

    goto :goto_5
.end method
