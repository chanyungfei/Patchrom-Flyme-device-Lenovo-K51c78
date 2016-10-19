.class Lcom/android/internal/telephony/cdma/utk/TcpReceiver;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mBufSize:I

.field private mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/Socket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "bufSize"    # I
    .param p3, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 962
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 963
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    .line 967
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TcpReceiver"

    const-string v2, " get input stream fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 975
    const-string v4, "TcpReceiver"

    const-string v5, " enter TcpReceiver Thread"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mRun:Z

    if-eqz v4, :cond_2

    .line 978
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    new-array v3, v4, [B

    .line 979
    .local v3, "tmp":[B
    const/4 v2, 0x0

    .line 983
    .local v2, "readLen":I
    :try_start_0
    const-string v4, "TcpReceiver"

    const-string v5, " wait data comming..."

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 985
    const-string v4, "TcpReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " read data len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    if-lez v2, :cond_0

    .line 989
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    if-ge v2, v4, :cond_1

    .line 990
    new-array v0, v2, [B

    .line 991
    .local v0, "buf":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 996
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->sendMessageToChannel(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TcpReceiver"

    const-string v5, " catch IOException"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 993
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    move-object v0, v3

    .restart local v0    # "buf":[B
    goto :goto_1

    .line 1005
    .end local v0    # "buf":[B
    .end local v2    # "readLen":I
    .end local v3    # "tmp":[B
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1010
    :goto_2
    const-string v4, "TcpReceiver"

    const-string v5, " exit TcpReceiver Thread"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    return-void

    .line 1006
    :catch_1
    move-exception v4

    goto :goto_2
.end method
