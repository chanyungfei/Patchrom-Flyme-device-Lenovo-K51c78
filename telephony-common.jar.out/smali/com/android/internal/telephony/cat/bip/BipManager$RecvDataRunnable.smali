.class Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecvDataRunnable"
.end annotation


# instance fields
.field cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field requestDataSize:I

.field response:Landroid/os/Message;

.field result:Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 0
    .param p2, "size"    # I
    .param p3, "result"    # Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    .param p4, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    iput p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->requestDataSize:I

    .line 1336
    iput-object p3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    .line 1337
    iput-object p4, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1338
    iput-object p5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    .line 1339
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1342
    const/4 v1, 0x0

    .line 1343
    .local v1, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    const/4 v0, 0x0

    .line 1345
    .local v0, "errCode":I
    const-string v2, "[BIP]"

    const-string v3, "BM-receiveData: start to receive data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v1

    .line 1347
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/bip/Channel;->isReceiveDataTRSent:Z

    .line 1348
    if-nez v1, :cond_0

    .line 1349
    const/4 v0, 0x5

    .line 1353
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 1354
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    .line 1355
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 1356
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1357
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1358
    if-eqz v1, :cond_1

    .line 1359
    iget-object v3, v1, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1360
    :try_start_0
    const-string v2, "[BIP]"

    const-string v4, "BM-receiveData: notify waiting channel."

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/bip/Channel;->isReceiveDataTRSent:Z

    .line 1362
    iget-object v2, v1, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1363
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    :goto_1
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: end to receive data. Result code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    return-void

    .line 1351
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->requestDataSize:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/Channel;->receiveData(ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;)I

    move-result v0

    goto :goto_0

    .line 1363
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1365
    :cond_1
    const-string v2, "[BIP]"

    const-string v3, "BM-receiveData: null channel."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
