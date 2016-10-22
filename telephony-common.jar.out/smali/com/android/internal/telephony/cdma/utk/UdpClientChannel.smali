.class Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;
.super Lcom/android/internal/telephony/cdma/utk/BipChannel;
.source "BipChannel.java"


# instance fields
.field private mDatagramSocket:Ljava/net/DatagramSocket;

.field private mLocalAddress:Ljava/net/InetAddress;

.field private mLocalPort:I

.field private mRemoteAddress:Ljava/net/InetAddress;

.field private mRemotePort:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V
    .locals 2
    .param p1, "bs"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p2, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 629
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 631
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemoteAddress:Ljava/net/InetAddress;

    .line 632
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemotePort:I

    .line 633
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mLocalAddress:Ljava/net/InetAddress;

    .line 634
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mLocalPort:I

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemoteAddress:Ljava/net/InetAddress;

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemotePort:I

    .line 644
    return-void
.end method


# virtual methods
.method public linkDisconnect(Z)I
    .locals 4
    .param p1, "listen"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 670
    const-string v0, "UdpClientChannel"

    const-string v1, " linkDisconnect"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->stop()V

    .line 674
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 679
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 680
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBuffer:[B

    .line 683
    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDataAvailableLength:I

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->stopDataToReceiveTimer()V

    .line 690
    return v2
.end method

.method public linkEstablish()I
    .locals 5

    .prologue
    .line 647
    const-string v2, "UdpClientChannel"

    const-string v3, " linkEstablish"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBufferSize:I

    invoke-direct {v2, v3, v4, p0}, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;-><init>(Ljava/net/DatagramSocket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 657
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 658
    .local v1, "thd":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 660
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 661
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v2, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->notifyChannelStatusChanged()V

    .line 666
    :cond_0
    const/4 v2, 0x0

    .end local v1    # "thd":Ljava/lang/Thread;
    :goto_0
    return v2

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/net/SocketException;
    const-string v2, "UdpClientChannel"

    const-string v3, " get datagram socket fail"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public receiveData(I)V
    .locals 4
    .param p1, "reqDataLen"    # I

    .prologue
    .line 696
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->receiveData(I)V

    .line 698
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBuffer:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBuffer:[B

    array-length v1, v1

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBufferIndex:I

    if-ne v1, v3, :cond_0

    .line 700
    const-string v1, "UdpClientChannel"

    const-string v3, " mRxBuffer data receive done"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBuffer:[B

    .line 703
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBufferIndex:I

    .line 705
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveDone:Z

    .line 707
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    const-string v1, "UdpClientChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mReceiveDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveDone:Z

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 713
    const-string v1, "UdpClientChannel"

    const-string v2, " send delay msg"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 715
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 718
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 707
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
    .line 721
    const-string v0, "UdpClientChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sendData sendImmediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendData([BZ)V

    .line 725
    if-eqz p2, :cond_0

    .line 726
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxAvaSize:I

    if-gez v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxLock:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 733
    .local v7, "tmp":[B
    array-length v0, v7

    new-array v4, v0, [B

    .line 734
    .local v4, "dataToSend":[B
    const/4 v0, 0x0

    const/4 v2, 0x0

    array-length v3, v7

    invoke-static {v7, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 737
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBufferSize:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxAvaSize:I

    .line 738
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UdpSender;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemoteAddress:Ljava/net/InetAddress;

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemotePort:I

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UdpSender;-><init>(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I[BLcom/android/internal/telephony/cdma/utk/BipChannel;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 742
    .local v6, "thd":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 738
    .end local v4    # "dataToSend":[B
    .end local v6    # "thd":Ljava/lang/Thread;
    .end local v7    # "tmp":[B
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
