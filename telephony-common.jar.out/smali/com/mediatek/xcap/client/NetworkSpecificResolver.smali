.class public Lcom/mediatek/xcap/client/NetworkSpecificResolver;
.super Ljava/lang/Object;
.source "NetworkSpecificResolver.java"

# interfaces
.implements Lcom/mediatek/xcap/client/NameResolver;


# instance fields
.field private mNetwork:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mediatek/xcap/client/NetworkSpecificResolver;->mNetwork:Landroid/net/Network;

    .line 41
    return-void
.end method


# virtual methods
.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/NetworkSpecificResolver;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mediatek/xcap/client/NetworkSpecificResolver;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    monitor-exit p0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    monitor-exit p0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
