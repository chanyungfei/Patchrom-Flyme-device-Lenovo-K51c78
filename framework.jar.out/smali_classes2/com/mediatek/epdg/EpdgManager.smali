.class public Lcom/mediatek/epdg/EpdgManager;
.super Ljava/lang/Object;
.source "EpdgManager.java"


# static fields
.field public static final MAX_NETWORK_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EpdgManager"

.field public static final TYPE_FAST:I = 0x0

.field public static final TYPE_IMS:I = 0x1

.field public static final TYPE_NET:I = 0x2

.field private static sEpdgManager:Lcom/mediatek/epdg/EpdgManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/mediatek/epdg/IEpdgManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v1, "epdg_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/epdg/IEpdgManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/epdg/IEpdgManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    .line 48
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgManager;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/epdg/EpdgManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-class v1, Lcom/mediatek/epdg/EpdgManager;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/mediatek/epdg/EpdgManager;->sEpdgManager:Lcom/mediatek/epdg/EpdgManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/mediatek/epdg/EpdgManager;

    invoke-direct {v0, p0}, Lcom/mediatek/epdg/EpdgManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/epdg/EpdgManager;->sEpdgManager:Lcom/mediatek/epdg/EpdgManager;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-object v0, Lcom/mediatek/epdg/EpdgManager;->sEpdgManager:Lcom/mediatek/epdg/EpdgManager;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getConfiguration(I)Lcom/mediatek/epdg/EpdgConfig;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 74
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/mediatek/epdg/EpdgConfig;

    invoke-direct {v1}, Lcom/mediatek/epdg/EpdgConfig;-><init>()V

    .line 80
    :goto_0
    return-object v1

    .line 78
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    invoke-interface {v1, p1}, Lcom/mediatek/epdg/IEpdgManager;->getConfiguration(I)Lcom/mediatek/epdg/EpdgConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/mediatek/epdg/EpdgConfig;

    invoke-direct {v1}, Lcom/mediatek/epdg/EpdgConfig;-><init>()V

    goto :goto_0
.end method

.method public getConfiguration()[Lcom/mediatek/epdg/EpdgConfig;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-object v1

    .line 94
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    invoke-interface {v2}, Lcom/mediatek/epdg/IEpdgManager;->getAllConfiguration()[Lcom/mediatek/epdg/EpdgConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDisconnectCause(I)I
    .locals 3
    .param p1, "capabiltyType"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    if-nez v2, :cond_0

    .line 141
    :goto_0
    return v1

    .line 139
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    invoke-interface {v2, p1}, Lcom/mediatek/epdg/IEpdgManager;->getReasonCode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setConfiguration(ILcom/mediatek/epdg/EpdgConfig;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "config"    # Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/epdg/IEpdgManager;->setConfiguration(ILcom/mediatek/epdg/EpdgConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setConfiguration([Lcom/mediatek/epdg/EpdgConfig;)V
    .locals 1
    .param p1, "config"    # [Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgManager;->mService:Lcom/mediatek/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/mediatek/epdg/IEpdgManager;->setAllConfiguration([Lcom/mediatek/epdg/EpdgConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method
