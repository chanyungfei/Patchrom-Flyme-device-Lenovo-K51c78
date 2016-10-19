.class public Lcom/mediatek/epdg/EpdgServiceImpl;
.super Lcom/mediatek/epdg/IEpdgManager$Stub;
.source "EpdgServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EpdgServiceImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTracker:Lcom/mediatek/epdg/EpdgTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/epdg/IEpdgManager$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "EpdgServiceImpl"

    const-string v1, "Creating EpdgServiceImpl"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/mediatek/epdg/EpdgTracker;

    invoke-direct {v0}, Lcom/mediatek/epdg/EpdgTracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mTracker:Lcom/mediatek/epdg/EpdgTracker;

    .line 49
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "EpdgService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "EpdgService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "EpdgService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "ePDG service status"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mTracker:Lcom/mediatek/epdg/EpdgTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/epdg/EpdgTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public getAllConfiguration()[Lcom/mediatek/epdg/EpdgConfig;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mTracker:Lcom/mediatek/epdg/EpdgTracker;

    invoke-virtual {v0}, Lcom/mediatek/epdg/EpdgTracker;->getAllConfiguration()[Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration(I)Lcom/mediatek/epdg/EpdgConfig;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mTracker:Lcom/mediatek/epdg/EpdgTracker;

    invoke-virtual {v0, p1}, Lcom/mediatek/epdg/EpdgTracker;->getConfiguration(I)Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v0

    return-object v0
.end method

.method public getReasonCode(I)I
    .locals 1
    .param p1, "capabilityType"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mTracker:Lcom/mediatek/epdg/EpdgTracker;

    invoke-virtual {v0, p1}, Lcom/mediatek/epdg/EpdgTracker;->getReasonCode(I)I

    move-result v0

    return v0
.end method

.method public setAllConfiguration([Lcom/mediatek/epdg/EpdgConfig;)V
    .locals 1
    .param p1, "configs"    # [Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mTracker:Lcom/mediatek/epdg/EpdgTracker;

    invoke-virtual {v0, p1}, Lcom/mediatek/epdg/EpdgTracker;->setAllConfiguration([Lcom/mediatek/epdg/EpdgConfig;)V

    .line 108
    return-void
.end method

.method public setConfiguration(ILcom/mediatek/epdg/EpdgConfig;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "config"    # Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mTracker:Lcom/mediatek/epdg/EpdgTracker;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/epdg/EpdgTracker;->setConfiguration(ILcom/mediatek/epdg/EpdgConfig;)V

    .line 103
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 74
    const-string v1, "EpdgServiceImpl"

    const-string v2, "Starting EPDG service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mHandler:Landroid/os/Handler;

    .line 80
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mTracker:Lcom/mediatek/epdg/EpdgTracker;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/epdg/EpdgTracker;->start(Landroid/content/Context;Landroid/os/Handler;)V

    .line 82
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgServiceImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    return-void
.end method
