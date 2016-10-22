.class Lcom/mediatek/xcap/client/XcapClient$1;
.super Ljava/lang/Object;
.source "XcapClient.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/xcap/client/XcapClient;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/xcap/client/XcapClient;


# direct methods
.method constructor <init>(Lcom/mediatek/xcap/client/XcapClient;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient$1;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 239
    const/16 v0, 0x1e

    return v0
.end method
