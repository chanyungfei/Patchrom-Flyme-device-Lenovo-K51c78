.class public Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UdpReceiverThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/Channel;

.field udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/Channel;Ljava/net/DatagramSocket;)V
    .locals 0
    .param p2, "s"    # Ljava/net/DatagramSocket;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    .line 248
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 252
    const/16 v7, 0x578

    new-array v1, v7, [B

    .line 254
    .local v1, "localBuffer":[B
    const-string v7, "[BIP]"

    const-string v8, "[UDP]RecTr run"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v1

    invoke-direct {v6, v1, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 257
    .local v6, "recvPacket":Ljava/net/DatagramPacket;
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    # getter for: Lcom/android/internal/telephony/cat/bip/Channel;->mStop:Z
    invoke-static {v7}, Lcom/android/internal/telephony/cat/bip/Channel;->access$000(Lcom/android/internal/telephony/cat/bip/Channel;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 258
    const/4 v5, 0x0

    .line 259
    .local v5, "recvLen":I
    const-string v7, "[BIP]"

    const-string v8, "[UDP]Before RecTr: Receive data from network"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 262
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 263
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 271
    :try_start_2
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]RecTr: Receive data from network:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-ltz v5, :cond_9

    .line 273
    const/4 v4, 0x0

    .line 274
    .local v4, "rSize":I
    const/4 v3, 0x0

    .local v3, "localBufferOffset":I
    const/4 v2, 0x0

    .line 275
    .local v2, "localBufferCount":I
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v8, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    :try_start_3
    const-string v7, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[UDP]RecTr:mRxBufferCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    if-nez v7, :cond_3

    .line 280
    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    const/4 v10, 0x0

    invoke-static {v1, v7, v9, v10, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 281
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iput v5, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    .line 282
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/4 v9, 0x0

    iput v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    .line 283
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/cat/bip/Channel;->dataAvailable(I)V

    .line 302
    :cond_0
    :goto_1
    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mIOTTest:I

    if-ne v7, v9, :cond_5

    .line 303
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    if-lez v7, :cond_8

    .line 304
    const-string v7, "[BIP]"

    const-string v9, "[UDP]0 < mRxBufferCount, wait."

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 306
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->isReceiveDataTRSent:Z

    if-nez v7, :cond_0

    .line 307
    const-string v7, "[BIP]"

    const-string v9, "[UDP]Receive TR not sent, wait."

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 344
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 352
    .end local v2    # "localBufferCount":I
    .end local v3    # "localBufferOffset":I
    .end local v4    # "rSize":I
    .end local v5    # "recvLen":I
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "[BIP]"

    const-string v8, "[UDP]RecTr:Error."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 264
    .restart local v5    # "recvLen":I
    :catch_1
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v7, "[BIP]"

    const-string v8, "[UDP]RecTr:read io exception."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 267
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 268
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cat/bip/Channel;->clearChannelBuffer(Z)V

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "recvLen":I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    # getter for: Lcom/android/internal/telephony/cat/bip/Channel;->mStop:Z
    invoke-static {v7}, Lcom/android/internal/telephony/cat/bip/Channel;->access$000(Lcom/android/internal/telephony/cat/bip/Channel;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 350
    const-string v7, "[BIP]"

    const-string v8, "[UDP]RecTr: stop"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 287
    .restart local v2    # "localBufferCount":I
    .restart local v3    # "localBufferOffset":I
    .restart local v4    # "rSize":I
    .restart local v5    # "recvLen":I
    :cond_3
    :try_start_6
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v10, v10, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v12, v12, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 288
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    sub-int/2addr v7, v9

    if-gt v5, v7, :cond_4

    .line 289
    move v4, v5

    .line 294
    :goto_3
    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    invoke-static {v1, v7, v9, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 296
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    add-int/2addr v9, v4

    iput v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    .line 297
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/4 v9, 0x0

    iput v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    .line 298
    const-string v7, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RecTr:rSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRxBufferCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 291
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    sub-int v4, v7, v9

    move v3, v4

    .line 292
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    sub-int v9, v5, v4

    iput v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    goto :goto_3

    .line 315
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lt v7, v9, :cond_8

    .line 317
    :try_start_7
    const-string v7, "[BIP]"

    const-string v9, "[UDP]RecTr:mRxBuffer is full."

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 323
    :goto_4
    :try_start_8
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    if-lez v7, :cond_0

    .line 324
    const-string v7, "[BIP]"

    const-string v9, "[UDP]RecTr:RxBuffer>0."

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    if-lez v7, :cond_6

    .line 326
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v10, v10, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v12, v12, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 328
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    sub-int/2addr v9, v10

    if-gt v7, v9, :cond_7

    .line 329
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v4, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    .line 333
    :goto_5
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    invoke-static {v1, v3, v7, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 334
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    add-int/2addr v9, v4

    iput v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    .line 335
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    sub-int/2addr v9, v4

    iput v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    .line 336
    add-int/2addr v3, v4

    .line 337
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/4 v9, 0x0

    iput v9, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    goto/16 :goto_1

    .line 319
    :catch_2
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v7, "[BIP]"

    const-string v9, "[UDP]RecTr:InterruptedException: mRxBufferCount >= mBufferSize"

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 331
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    sub-int v4, v7, v9

    goto :goto_5

    .line 344
    :cond_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 346
    .end local v2    # "localBufferCount":I
    .end local v3    # "localBufferOffset":I
    .end local v4    # "rSize":I
    :cond_9
    :try_start_9
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]RecTr: buffer data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0
.end method
