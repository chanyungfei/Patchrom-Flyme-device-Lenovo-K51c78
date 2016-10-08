.class Lcom/mediatek/rns/RnsServiceImpl$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$5;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$5;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1112
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkCallback - onAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$5;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1300(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$5;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mState:I
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1400(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1114
    :cond_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$5;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mState:I
    invoke-static {v1, v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$1402(Lcom/mediatek/rns/RnsServiceImpl;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :cond_1
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "RnsServiceImpl"

    const-string v2, "NetworkCallback not available in onAvailable:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1131
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$5;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 1133
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkCallback - onLost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onUnavailable()V
    .locals 2

    .prologue
    .line 1124
    const-string v0, "RnsServiceImpl"

    const-string v1, "NetworkCallback - onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$5;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const/4 v1, 0x3

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mState:I
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1402(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 1126
    return-void
.end method
