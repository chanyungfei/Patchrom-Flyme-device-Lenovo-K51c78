.class Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;
.super Lcom/android/internal/telephony/cdma/utk/BipChannel;
.source "BipChannel.java"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V
    .locals 0
    .param p1, "bs"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p2, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .param p3, "id"    # I

    .prologue
    .line 425
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 426
    return-void
.end method


# virtual methods
.method public linkDisconnect(Z)I
    .locals 4
    .param p1, "listen"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 476
    const-string v0, "TcpClientChannel"

    const-string v1, " linkDisconnect"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->stop()V

    .line 483
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 487
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBuffer:[B

    .line 497
    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mDataAvailableLength:I

    .line 499
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->stopDataToReceiveTimer()V

    .line 501
    return v2

    .line 492
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public linkEstablish()I
    .locals 9

    .prologue
    .line 429
    const-string v6, "TcpClientChannel"

    const-string v7, " linkEstablish"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x1

    .line 432
    .local v2, "ret":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v0, v6, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;

    .line 433
    .local v0, "address":Ljava/net/InetAddress;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v1, v6, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    .line 434
    .local v1, "port":I
    const/4 v3, 0x0

    .line 436
    .local v3, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    .line 437
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 439
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .local v4, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_1
    const-string v6, "TcpClientChannel"

    const-string v7, " mSocket.connect..."

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 441
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 446
    :goto_0
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    const-string v6, "TcpClientChannel"

    const-string v7, " mSocket.connect OK"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 449
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v6, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->notifyChannelStatusChanged()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 452
    :cond_0
    const/4 v2, 0x0

    :goto_1
    move-object v3, v4

    .line 464
    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_2
    const-string v6, "TcpClientChannel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    if-nez v2, :cond_1

    .line 467
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    iget v8, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBufferSize:I

    invoke-direct {v6, v7, v8, p0}, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;-><init>(Ljava/net/Socket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 468
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 469
    .local v5, "thd":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 472
    .end local v5    # "thd":Ljava/lang/Thread;
    :cond_1
    return v2

    .line 454
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_2
    :try_start_4
    const-string v6, "TcpClientChannel"

    const-string v7, " mSocket.connect fail"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 458
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    goto :goto_2

    .line 460
    :catch_1
    move-exception v6

    goto :goto_2

    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    goto :goto_2

    .line 458
    :catch_3
    move-exception v6

    goto :goto_2

    .line 442
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method public receiveData(I)V
    .locals 4
    .param p1, "reqDataLen"    # I

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->receiveData(I)V

    .line 509
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBuffer:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBuffer:[B

    array-length v1, v1

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBufferIndex:I

    if-ne v1, v3, :cond_0

    .line 511
    const-string v1, "TcpClientChannel"

    const-string v3, " mRxBuffer data receive done"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBuffer:[B

    .line 513
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBufferIndex:I

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveDone:Z

    .line 517
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    const-string v1, "TcpClientChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mReceiveDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveDone:Z

    if-eqz v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 523
    const-string v1, "TcpClientChannel"

    const-string v2, " send delay msg"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 525
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 528
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 517
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendData([BZ)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "sendImmediately"    # Z

    .prologue
    .line 531
    const-string v3, "TcpClientChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sendData sendImmediately:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendData([BZ)V

    .line 535
    if-eqz p2, :cond_0

    .line 536
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxAvaSize:I

    if-gez v3, :cond_1

    .line 537
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v4, 0x15

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxLock:Ljava/lang/Object;

    monitor-enter v4

    .line 542
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 543
    .local v2, "tmp":[B
    array-length v3, v2

    new-array v0, v3, [B

    .line 544
    .local v0, "dataToSend":[B
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 546
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 547
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBufferSize:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxAvaSize:I

    .line 548
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TcpSender;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-direct {v3, v4, v0, p0}, Lcom/android/internal/telephony/cdma/utk/TcpSender;-><init>(Ljava/net/Socket;[BLcom/android/internal/telephony/cdma/utk/BipChannel;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 551
    .local v1, "thd":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 548
    .end local v0    # "dataToSend":[B
    .end local v1    # "thd":Ljava/lang/Thread;
    .end local v2    # "tmp":[B
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
