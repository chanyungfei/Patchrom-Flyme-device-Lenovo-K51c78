.class Lcom/mediatek/epdg/EpdgConnector;
.super Ljava/lang/Object;
.source "EpdgConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;,
        Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x1000

.field static final MAX_RETRY_COUNT:I = 0xa

.field static final SOCKET_ACTION_EPDG:Ljava/lang/String; = "wod_action"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x1388

.field static final SOCKET_SIM_EPDG:Ljava/lang/String; = "wod_sim"

.field private static final TAG:Ljava/lang/String; = "EpdgConnector"

.field private static sInstance:Lcom/mediatek/epdg/EpdgConnector;


# instance fields
.field private final mCbClents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/epdg/EpdgCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDaemonLock:Ljava/lang/Object;

.field mEpdgCommandReceiver:Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;

.field mEpdgSimReceiver:Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;

.field private mOutputStream:Ljava/io/OutputStream;

.field mReceiverThread:Ljava/lang/Thread;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSimDaemonLock:Ljava/lang/Object;

.field private mSimOutputStream:Ljava/io/OutputStream;

.field mSimReceiverThread:Ljava/lang/Thread;

.field private mSimSocket:Landroid/net/LocalSocket;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/mediatek/epdg/EpdgConnector;

    invoke-direct {v0}, Lcom/mediatek/epdg/EpdgConnector;-><init>()V

    sput-object v0, Lcom/mediatek/epdg/EpdgConnector;->sInstance:Lcom/mediatek/epdg/EpdgConnector;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;-><init>(Lcom/mediatek/epdg/EpdgConnector;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mEpdgCommandReceiver:Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;

    .line 59
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnector;->mEpdgCommandReceiver:Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;

    const-string v2, "EPDGReceiver1"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mReceiverThread:Ljava/lang/Thread;

    .line 60
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    new-instance v0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;-><init>(Lcom/mediatek/epdg/EpdgConnector;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mEpdgSimReceiver:Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;

    .line 63
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnector;->mEpdgSimReceiver:Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;

    const-string v2, "EPDGReceiver2"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimReceiverThread:Ljava/lang/Thread;

    .line 64
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mCbClents:Ljava/util/Map;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;[B[B)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/epdg/EpdgConnector;->notifySimAction(Ljava/lang/String;[B[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct/range {p0 .. p9}, Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgAttach(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;

    return-object v0
.end method

.method static getInstance()Lcom/mediatek/epdg/EpdgConnector;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/mediatek/epdg/EpdgConnector;->sInstance:Lcom/mediatek/epdg/EpdgConnector;

    return-object v0
.end method

.method private notifyEpdgAttach(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "nwInterface"    # Ljava/lang/String;
    .param p4, "tunnelIpv4"    # Ljava/lang/String;
    .param p5, "tunnelIpv6"    # Ljava/lang/String;
    .param p6, "pcscfIpv4Addr"    # Ljava/lang/String;
    .param p7, "pcscfIpv6Addr"    # Ljava/lang/String;
    .param p8, "dnsIpv4Addr"    # Ljava/lang/String;
    .param p9, "dnsIpv6Addr"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnector;->mCbClents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    .line 97
    .local v10, "epdgCbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mediatek/epdg/EpdgCallback;>;"
    const-string v1, "EpdgConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEpdgAttach:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/epdg/EpdgCallback;

    .local v0, "cb":Lcom/mediatek/epdg/EpdgCallback;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 100
    invoke-interface/range {v0 .. v9}, Lcom/mediatek/epdg/EpdgCallback;->onEpdgConnected(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v0    # "cb":Lcom/mediatek/epdg/EpdgCallback;
    :cond_0
    return-void
.end method

.method private notifyEpdgDetach(Ljava/lang/String;I)V
    .locals 6
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 106
    const-string v3, "EpdgConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyEpdgDetach:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnector;->mCbClents:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 110
    .local v1, "epdgCbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mediatek/epdg/EpdgCallback;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/epdg/EpdgCallback;

    .line 111
    .local v0, "cb":Lcom/mediatek/epdg/EpdgCallback;
    if-nez p2, :cond_0

    .line 112
    invoke-interface {v0, p1}, Lcom/mediatek/epdg/EpdgCallback;->onEpdgDisconnected(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/mediatek/epdg/EpdgCallback;->onEpdgConnectFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 117
    .end local v0    # "cb":Lcom/mediatek/epdg/EpdgCallback;
    :cond_1
    return-void
.end method

.method private notifyEpdgDisconnected(Ljava/lang/String;)V
    .locals 6
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v3, "EpdgConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyEpdgDisconnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnector;->mCbClents:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 124
    .local v1, "epdgCbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mediatek/epdg/EpdgCallback;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/epdg/EpdgCallback;

    .line 125
    .local v0, "cb":Lcom/mediatek/epdg/EpdgCallback;
    invoke-interface {v0, p1}, Lcom/mediatek/epdg/EpdgCallback;->onEpdgDisconnected(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0    # "cb":Lcom/mediatek/epdg/EpdgCallback;
    :cond_0
    return-void
.end method

.method private notifySimAction(Ljava/lang/String;[B[B)V
    .locals 6
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B

    .prologue
    .line 83
    const-string v3, "EpdgConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySimAction:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnector;->mCbClents:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 87
    .local v1, "epdgCbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mediatek/epdg/EpdgCallback;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/epdg/EpdgCallback;

    .line 88
    .local v0, "cb":Lcom/mediatek/epdg/EpdgCallback;
    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/epdg/EpdgCallback;->onEpdgSimAuthenticate(Ljava/lang/String;[B[B)V

    goto :goto_0

    .line 90
    .end local v0    # "cb":Lcom/mediatek/epdg/EpdgCallback;
    :cond_0
    return-void
.end method

.method private trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "textLength":I
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 169
    const/4 v1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 172
    .end local p1    # "text":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method registerEpdgCallback(ILcom/mediatek/epdg/EpdgCallback;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "cb"    # Lcom/mediatek/epdg/EpdgCallback;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mCbClents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method sendEpdgCommand(Ljava/lang/String;)V
    .locals 4
    .param p1, "rawCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 148
    const-string v1, "EpdgConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SND -> {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "missing output stream"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 155
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 161
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method sendSimCommand(Ljava/lang/String;)V
    .locals 4
    .param p1, "rawCmd"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v1, "EpdgConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SIM] SND -> {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 134
    const-string v1, "EpdgConnector"

    const-string v3, "missing SIM output stream"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method unregisterEpdgCallback(ILcom/mediatek/epdg/EpdgCallback;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "cb"    # Lcom/mediatek/epdg/EpdgCallback;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnector;->mCbClents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method
