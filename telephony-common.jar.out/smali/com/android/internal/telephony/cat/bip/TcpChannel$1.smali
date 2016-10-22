.class Lcom/android/internal/telephony/cat/bip/TcpChannel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/bip/TcpChannel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/TcpChannel;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 8

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    const-string v5, "[BIP]"

    const-string v6, "[TCP]running TCP channel thread"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    const/4 v3, 0x0

    .line 993
    .local v3, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    iput-object v6, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 994
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 995
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mAddress:Ljava/net/InetAddress;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget v6, v6, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .local v4, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    const/16 v6, 0x3a98

    invoke-virtual {v5, v4, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1002
    :goto_0
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1003
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    const/4 v6, 0x4

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I

    .line 1004
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/16 v6, 0x80

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v3, v4

    .line 1018
    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    # invokes: Lcom/android/internal/telephony/cat/bip/TcpChannel;->onOpenChannelCompleted()V
    invoke-static {v5}, Lcom/android/internal/telephony/cat/bip/TcpChannel;->access$000(Lcom/android/internal/telephony/cat/bip/TcpChannel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1019
    monitor-exit p0

    return-void

    .line 998
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v2

    .line 999
    .local v2, "e3":Ljava/net/SocketTimeoutException;
    :try_start_5
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TCP]Time out of connect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1010
    .end local v2    # "e3":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 1011
    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_3
    :try_start_6
    const-string v5, "[BIP]"

    const-string v6, "[TCP]Fail to create socket"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1013
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 990
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1006
    .restart local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_0
    :try_start_7
    const-string v5, "[BIP]"

    const-string v6, "[TCP]socket is not connected."

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I

    .line 1008
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1014
    :catch_2
    move-exception v1

    move-object v3, v4

    .line 1015
    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    .local v1, "e2":Ljava/lang/NullPointerException;
    .restart local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_4
    :try_start_8
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TCP]Null pointer tcp socket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1014
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    goto :goto_4

    .line 1010
    :catch_4
    move-exception v0

    goto :goto_3
.end method
