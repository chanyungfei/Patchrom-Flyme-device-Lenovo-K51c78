.class public Lcom/mediatek/simservs/client/DefaultBehaviour;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "DefaultBehaviour.java"


# static fields
.field public static final DEFAULT_BEHAVIOUR_PRESENTATION_NOT_RESTRICTED:Ljava/lang/String; = "presentation-not-restricted"

.field public static final DEFAULT_BEHAVIOUR_PRESENTATION_RESTRICTED:Ljava/lang/String; = "presentation-restricted"

.field public static final NODE_NAME:Ljava/lang/String; = "default-behaviour"


# instance fields
.field public mPresentationRestricted:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 37
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
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 51
    invoke-interface {p5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "content":Ljava/lang/String;
    const-string v1, "presentation-restricted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    .line 53
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "default-behaviour"

    return-object v0
.end method

.method public isPresentationRestricted()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    return v0
.end method

.method public setPresentationRestricted(Z)V
    .locals 0
    .param p1, "presentationRestricted"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    .line 97
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 82
    const-string v1, "default-behaviour"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 83
    .local v0, "defaultElement":Lorg/w3c/dom/Element;
    iget-boolean v1, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "presentation-restricted"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const-string v1, "presentation-not-restricted"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "<default-behaviour>presentation-restricted</default-behaviour>"

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<default-behaviour>presentation-not-restricted</default-behaviour>"

    goto :goto_0
.end method
