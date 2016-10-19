.class Lcom/mediatek/rns/RnsServiceImpl$4;
.super Landroid/telephony/PhoneStateListener;
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
    .line 348
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/16 v4, -0x74

    .line 352
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    .line 353
    .local v0, "newSignalRsrp":I
    if-lez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Signal Rsrp is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-lt v0, v4, :cond_2

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v1

    if-le v1, v4, :cond_3

    :cond_2
    if-gt v0, v4, :cond_5

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v1

    if-lt v1, v4, :cond_5

    .line 359
    :cond_3
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1, v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$1602(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-gt v0, v4, :cond_0

    .line 363
    :cond_4
    const-string v1, "RnsServiceImpl"

    const-string v2, "Perform handover"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 368
    :cond_5
    monitor-enter p0

    .line 369
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1, v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$1602(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 370
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
