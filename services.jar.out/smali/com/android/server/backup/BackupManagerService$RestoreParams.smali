.class Lcom/android/server/backup/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public isSystemRestore:Z

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V
    .locals 3
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J

    .prologue
    const/4 v1, 0x0

    .line 435
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 437
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 438
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 439
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    .line 440
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    .line 443
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 444
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;I)V
    .locals 1
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkg"    # Landroid/content/pm/PackageInfo;
    .param p8, "_pmToken"    # I

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 423
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 424
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 425
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    .line 426
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 427
    iput p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 430
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V
    .locals 1
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_filterSet"    # [Ljava/lang/String;
    .param p8, "_isSystemRestore"    # Z

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 451
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 452
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 453
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    .line 456
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    .line 457
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 458
    return-void
.end method
