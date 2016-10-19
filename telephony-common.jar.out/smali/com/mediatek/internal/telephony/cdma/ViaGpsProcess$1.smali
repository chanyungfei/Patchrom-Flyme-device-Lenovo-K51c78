.class Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ViaGpsProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 380
    const-string v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailable: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$000(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    move-result-object v0

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setNetworkId(I)V

    .line 382
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$100(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;ILandroid/os/Message;)V

    .line 383
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 388
    const-string v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLost: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$100(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;ILandroid/os/Message;)V

    .line 390
    return-void
.end method
