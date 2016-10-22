.class Landroid/net/Proxy$DefaultSocketMomCheckHandler;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/net/SocketCheckHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSocketMomCheckHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method


# virtual methods
.method public checkEmailSendRequest()Z
    .locals 2

    .prologue
    .line 383
    const-string/jumbo v0, "sub-permission.SEND_EMAIL"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
