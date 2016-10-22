.class public Lcom/mediatek/recovery/RecoveryManager;
.super Ljava/lang/Object;
.source "RecoveryManager.java"

# interfaces
.implements Lcom/mediatek/recovery/IRecoveryManager;


# static fields
.field public static final ANTIBRICKING_LEVEL:Ljava/lang/String;

.field public static final ANTIBRICKING_LEVEL_DISABLE:Ljava/lang/String; = "0"

.field public static final ANTIBRICKING_LEVEL_LOG_ONLY:Ljava/lang/String; = "1"

.field public static final ANTIBRICKING_LEVEL_RECOVERY:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "RecoveryManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field mInstance:Lcom/mediatek/recovery/RecoveryManager;

.field private mService:Lcom/mediatek/recovery/IRecoveryManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "ro.mtk_antibricking_level"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/recovery/RecoveryManager;->ANTIBRICKING_LEVEL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManager;->mInstance:Lcom/mediatek/recovery/RecoveryManager;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/recovery/IRecoveryManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/mediatek/recovery/IRecoveryManagerService;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManager;->mInstance:Lcom/mediatek/recovery/RecoveryManager;

    .line 63
    iput-object p1, p0, Lcom/mediatek/recovery/RecoveryManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/mediatek/recovery/RecoveryManager;->mService:Lcom/mediatek/recovery/IRecoveryManagerService;

    .line 65
    return-void
.end method


# virtual methods
.method public backupSingleFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManager;->mService:Lcom/mediatek/recovery/IRecoveryManagerService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/recovery/IRecoveryManagerService;->backupSingleFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RecoveryManagerService has died!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManager;->mService:Lcom/mediatek/recovery/IRecoveryManagerService;

    invoke-interface {v1}, Lcom/mediatek/recovery/IRecoveryManagerService;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RecoveryManager"

    const-string v2, "getVersion() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startBootMonitor()V
    .locals 3

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManager;->mService:Lcom/mediatek/recovery/IRecoveryManagerService;

    invoke-interface {v1}, Lcom/mediatek/recovery/IRecoveryManagerService;->startBootMonitor()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RecoveryManager"

    const-string/jumbo v2, "startBootMonitor() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopBootMonitor()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManager;->mService:Lcom/mediatek/recovery/IRecoveryManagerService;

    invoke-interface {v1}, Lcom/mediatek/recovery/IRecoveryManagerService;->stopBootMonitor()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RecoveryManager"

    const-string/jumbo v2, "stopBootMonitor() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
