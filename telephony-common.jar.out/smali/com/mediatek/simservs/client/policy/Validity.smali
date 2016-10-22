.class public Lcom/mediatek/simservs/client/policy/Validity;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Validity.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "validity"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "validity"

    return-object v0
.end method
