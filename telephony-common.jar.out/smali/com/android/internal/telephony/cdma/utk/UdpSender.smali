.class Lcom/android/internal/telephony/cdma/utk/UdpSender;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mDataToSend:[B

.field private mDatagramPacket:Ljava/net/DatagramPacket;

.field private mDatagramSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I[BLcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "dataSocket"    # Ljava/net/DatagramSocket;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "data"    # [B
    .param p5, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    const/4 v2, 0x1

    .line 1117
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 1118
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 1119
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mDataToSend:[B

    .line 1120
    new-instance v0, Ljava/net/DatagramPacket;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mDatagramPacket:Ljava/net/DatagramPacket;

    .line 1121
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 1122
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1126
    const-string v1, "UdpSender"

    const-string v2, " enter UdpSender Thread"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mDatagramPacket:Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mDataToSend:[B

    invoke-virtual {v1, v2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 1131
    :try_start_0
    const-string v1, "UdpSender"

    const-string v2, " sending"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mDatagramSocket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mDatagramPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1133
    const-string v1, "UdpSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sent length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpSender;->mDatagramPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/utk/UdpSender;->sendMessageToChannel(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :goto_0
    const-string v1, "UdpSender"

    const-string v2, " exit UdpSender Thread"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v6, v1, v5, v7}, Lcom/android/internal/telephony/cdma/utk/UdpSender;->sendMessageToChannel(IIILjava/lang/Object;)V

    .line 1139
    const-string v1, "UdpSender"

    const-string v2, " catch Exception"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
