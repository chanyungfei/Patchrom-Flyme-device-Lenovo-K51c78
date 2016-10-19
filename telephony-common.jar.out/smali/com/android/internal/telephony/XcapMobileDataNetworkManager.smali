.class public Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
.super Ljava/lang/Object;
.source "XcapMobileDataNetworkManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XcapMobileDataNetworkManager"

.field private static final NETWORK_ACQUIRE_TIMEOUT_MILLIS:I = 0x2710

.field private static final NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x1f40


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mXcapMobileDataNetworkRequestCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 77
    iput-object v2, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    .line 78
    iput v3, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 79
    iput-object v2, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    .param p1, "x1"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private inAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private newRequest(J)V
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 162
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;-><init>(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 199
    const-string v2, "XcapMobileDataNetworkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newRequest, subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 205
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 207
    return-void
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 217
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 219
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method private resetLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 226
    iput-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 228
    return-void
.end method


# virtual methods
.method public acquireNetwork(J)Landroid/net/Network;
    .locals 11
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 98
    const-string v6, "XcapMobileDataNetworkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquireNetwork(): subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->inAirplaneMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    :goto_0
    return-object v1

    .line 103
    :cond_0
    const-string v6, "XcapMobileDataNetworkManager"

    const-string v7, "XcapMobileDataNetworkManager: acquireNetwork start"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 106
    iget-object v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_1

    .line 108
    const-string v1, "XcapMobileDataNetworkManager"

    const-string v6, "XcapMobileDataNetworkManager: already available"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    monitor-exit p0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 111
    :cond_1
    :try_start_1
    const-string v6, "XcapMobileDataNetworkManager"

    const-string v7, "XcapMobileDataNetworkManager: start new network request"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->newRequest(J)V

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 116
    .local v2, "shouldEnd":J
    const-wide/16 v4, 0x2710

    .line 117
    .local v4, "waitTime":J
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 119
    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    monitor-exit p0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v6, "XcapMobileDataNetworkManager"

    const-string v7, "XcapMobileDataNetworkManager: acquire network wait interrupted"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 129
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v2, v6

    goto :goto_1

    .line 132
    :cond_3
    const-string v6, "XcapMobileDataNetworkManager"

    const-string v7, "XcapMobileDataNetworkManager: timed out"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V

    .line 135
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    monitor-exit p0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseNetwork()V
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    if-lez v0, :cond_0

    .line 146
    iget v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 147
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XcapMobileDataNetworkManager: release, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V

    .line 154
    :cond_0
    monitor-exit p0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useAcquiredNetwork(Landroid/net/Network;Ljava/lang/String;)V
    .locals 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "xcapRootUri"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 236
    const/4 v6, 0x0

    .line 237
    .local v6, "xcapSrvHostName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 238
    const-string v7, "http://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 239
    const/4 v7, 0x7

    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 247
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 248
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 249
    .local v5, "portStartIndex":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 250
    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 254
    .end local v5    # "portStartIndex":I
    :cond_1
    const-string v7, "XcapMobileDataNetworkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "useAcquiredNetwork(): xcapRootUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", xcapSrvHostName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v6, :cond_2

    .line 259
    :try_start_0
    invoke-virtual {p1, v6}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 260
    .local v0, "address":Ljava/net/InetAddress;
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v7

    const/16 v8, 0x28

    invoke-virtual {v7, v8, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 262
    const-string v7, "XcapMobileDataNetworkManager"

    const-string v8, "useAcquiredNetwork(): requestRouteToHostAddress() failed"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    :goto_2
    return-void

    .line 240
    :cond_3
    const-string v7, "https://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 241
    const/16 v7, 0x8

    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 243
    :cond_4
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 259
    .restart local v0    # "address":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v2

    .line 267
    .local v2, "ex":Ljava/net/UnknownHostException;
    const-string v7, "XcapMobileDataNetworkManager"

    const-string v8, "useAcquiredNetwork(): UnknownHostException"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
