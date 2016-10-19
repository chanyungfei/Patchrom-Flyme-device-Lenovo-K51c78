.class Lcom/android/internal/telephony/cat/bip/TcpChannel$2;
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
    .line 1024
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$2;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_0
    const-string v1, "[BIP]"

    const-string v2, "[TCP]running TCP channel thread"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$2;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1029
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$2;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 1030
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$2;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    :goto_0
    monitor-exit p0

    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/net/SocketException;
    :try_start_2
    const-string v1, "[BIP]"

    const-string v2, "[TCP]Fail to create tcp socket"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel$2;->this$0:Lcom/android/internal/telephony/cat/bip/TcpChannel;

    const/4 v2, 0x7

    iput v2, v1, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1026
    .end local v0    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
