.class Lcom/android/internal/telephony/cdma/utk/UdpReceiver;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mBufSize:I

.field private mDatagramSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 1
    .param p1, "dataSocket"    # Ljava/net/DatagramSocket;
    .param p2, "bufSize"    # I
    .param p3, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 1065
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 1066
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 1067
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mBufSize:I

    .line 1068
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mBufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->cacheBuf:[B

    .line 1069
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1073
    const-string v5, "UdpReceiver"

    const-string v6, " enter UdpReceiver Thread"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mRun:Z

    if-eqz v5, :cond_2

    .line 1076
    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mBufSize:I

    new-array v4, v5, [B

    .line 1078
    .local v4, "tmp":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v5, v4

    invoke-direct {v2, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1080
    .local v2, "datagramPacket":Ljava/net/DatagramPacket;
    const/4 v1, 0x0

    .line 1082
    .local v1, "dataLen":I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1083
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 1085
    const-string v5, "UdpReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " receive data len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    if-lez v1, :cond_0

    .line 1089
    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mBufSize:I

    if-ge v1, v5, :cond_1

    .line 1090
    new-array v0, v1, [B

    .line 1091
    .local v0, "buf":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1096
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->compAndCache([B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1097
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->sendMessageToChannel(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    .end local v0    # "buf":[B
    :catch_0
    move-exception v3

    .line 1102
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "UdpReceiver"

    const-string v6, " catch  IOException"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    move-object v0, v4

    .restart local v0    # "buf":[B
    goto :goto_1

    .line 1106
    .end local v0    # "buf":[B
    .end local v1    # "dataLen":I
    .end local v2    # "datagramPacket":Ljava/net/DatagramPacket;
    .end local v4    # "tmp":[B
    :cond_2
    const-string v5, "UdpReceiver"

    const-string v6, " exit UdpReceiver Thread"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    return-void
.end method
