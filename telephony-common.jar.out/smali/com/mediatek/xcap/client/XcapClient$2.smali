.class Lcom/mediatek/xcap/client/XcapClient$2;
.super Ljava/lang/Object;
.source "XcapClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


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
    .line 333
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient$2;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method
