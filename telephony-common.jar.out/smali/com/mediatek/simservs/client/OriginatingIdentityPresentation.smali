.class public Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
.super Lcom/mediatek/simservs/client/SimservType;
.source "OriginatingIdentityPresentation.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "originating-identity-presentation"


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
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "originating-identity-presentation"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 38
    return-void
.end method
