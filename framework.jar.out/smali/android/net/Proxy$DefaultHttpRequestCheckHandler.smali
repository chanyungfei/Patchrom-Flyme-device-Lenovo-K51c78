.class Landroid/net/Proxy$DefaultHttpRequestCheckHandler;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestCheckHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpRequestCheckHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method


# virtual methods
.method public checkEmailSendRequest()Z
    .locals 2

    .prologue
    .line 369
    const-string v0, "Proxy"

    const-string v1, "checkCtaPermission for email"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string/jumbo v0, "sub-permission.SEND_EMAIL"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkMmsSendRequest()Z
    .locals 2

    .prologue
    .line 363
    const-string v0, "Proxy"

    const-string v1, "checkCtaPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string/jumbo v0, "sub-permission.SEND_MMS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
