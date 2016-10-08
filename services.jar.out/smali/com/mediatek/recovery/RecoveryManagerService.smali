.class public Lcom/mediatek/recovery/RecoveryManagerService;
.super Lcom/mediatek/recovery/IRecoveryManagerService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/recovery/RecoveryManagerService$b;,
        Lcom/mediatek/recovery/RecoveryManagerService$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private n:Lcom/mediatek/recovery/EventLogger;

.field private o:Z

.field private p:Ljava/io/File;

.field private q:Ljava/io/File;

.field private r:Lcom/mediatek/recovery/RecoveryManagerService$a;

.field private s:Lcom/mediatek/recovery/RecoveryParser;

.field private t:Lcom/mediatek/recovery/BackupServant;

.field private final u:Lcom/mediatek/recovery/RecoveryManagerService$b;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/mediatek/recovery/IRecoveryManagerService$Stub;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->o:Z

    .line 89
    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->v:Z

    .line 131
    iput-object p1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mContext:Landroid/content/Context;

    .line 132
    new-instance v0, Lcom/mediatek/recovery/EventLogger;

    const-string v1, "RecoveryManagerService"

    invoke-direct {v0, v1}, Lcom/mediatek/recovery/EventLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecoveryManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Lcom/mediatek/recovery/RecoveryManagerService$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mediatek/recovery/RecoveryManagerService$b;-><init>(Lcom/mediatek/recovery/RecoveryManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->u:Lcom/mediatek/recovery/RecoveryManagerService$b;

    .line 136
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "framework"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->p:Ljava/io/File;

    .line 137
    new-instance v0, Lcom/mediatek/recovery/RecoveryParser;

    invoke-direct {v0}, Lcom/mediatek/recovery/RecoveryParser;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    .line 138
    new-instance v0, Lcom/mediatek/recovery/BackupServant;

    invoke-direct {v0}, Lcom/mediatek/recovery/BackupServant;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->t:Lcom/mediatek/recovery/BackupServant;

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->p:Ljava/io/File;

    const-string v2, "recovery.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->q:Ljava/io/File;

    .line 140
    new-instance v0, Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->q:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/mediatek/recovery/RecoveryManagerService$a;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->r:Lcom/mediatek/recovery/RecoveryManagerService$a;

    .line 142
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    invoke-virtual {v0}, Lcom/mediatek/recovery/RecoveryParser;->read()V

    .line 143
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)I
    .locals 7

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 404
    const/4 v3, -0x1

    .line 405
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 406
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v1, v1, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/Module;

    .line 408
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    if-nez v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->r:Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v5, v1, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/mediatek/recovery/RecoveryManagerService$a;->a(Lcom/mediatek/recovery/RecoveryManagerService$a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/AbstractExceptionParser;

    iput-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    .line 411
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    if-nez v2, :cond_0

    .line 412
    const-string v2, "RecoveryManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get exception parser class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from recovery module: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Skip it!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_0
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    invoke-virtual {v2, p1}, Lcom/mediatek/recovery/AbstractExceptionParser;->parseException(Ljava/lang/RuntimeException;)Ljava/util/ArrayList;

    move-result-object v2

    .line 422
    iget-object v1, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    invoke-virtual {v1}, Lcom/mediatek/recovery/AbstractExceptionParser;->getLastError()I

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    const-string v1, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovery module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mismatch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 427
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    :cond_2
    const-string v1, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovery module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returns unavailable pathes, try other modules!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 433
    :cond_3
    iget-object v3, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovery module: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "match the exception for file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " start restoring"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mediatek/recovery/EventLogger;->logBootRecovery(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/recovery/RecoveryManagerService;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    .line 439
    if-eqz v0, :cond_4

    .line 440
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/recovery/EventLogger;->logBootRecovery(Ljava/lang/String;)V

    .line 446
    :goto_1
    return v0

    .line 442
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->d()V

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/mediatek/recovery/RecoveryManagerService;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    const-string v2, "RecoveryManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reboot for reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 349
    if-eqz v2, :cond_1

    .line 350
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v2, v3, p1, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    if-nez v0, :cond_0

    .line 360
    const-string v0, "RecoveryManagerService"

    const-string v1, "Fall back to force reboot"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/reboot"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :cond_0
    :goto_1
    return-void

    .line 353
    :cond_1
    :try_start_2
    const-string v0, "RecoveryManagerService"

    const-string v2, "Power Manager Service is dead !!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move v0, v1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    const-string v0, "RecoveryManagerService"

    const-string v2, "Exception happened when performing pm reboot "

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 363
    :catch_1
    move-exception v0

    .line 364
    const-string v1, "RecoveryManagerService"

    const-string v2, "Failed to reboot device"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 340
    const-string v0, "Repair"

    invoke-direct {p0, v0}, Lcom/mediatek/recovery/RecoveryManagerService;->b(Ljava/lang/String;)V

    .line 341
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 152
    if-nez v0, :cond_0

    .line 153
    const-string v0, "RecoveryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recovery failed, Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v0, -0xa

    .line 227
    :goto_0
    return v0

    .line 158
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 161
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    iget-object v2, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 164
    if-nez v2, :cond_1

    .line 165
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v0, -0xb

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 172
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 178
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    if-nez v2, :cond_5

    .line 179
    const-string v2, "RecoveryManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no default recovery action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4
    iget-object v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->r:Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/mediatek/recovery/RecoveryManagerService$a;->a(Lcom/mediatek/recovery/RecoveryManagerService$a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/AbstractRecoveryMethod;

    .line 210
    if-nez v2, :cond_7

    .line 211
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, recovery class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instantiation failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, -0x8

    goto/16 :goto_0

    .line 182
    :cond_5
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 183
    new-instance v2, Ljava/io/File;

    iget-object v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_6

    .line 186
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, cannot finish defualt REMOVE action for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, -0x3

    goto/16 :goto_0

    .line 194
    :cond_6
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 195
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->t:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/recovery/BackupServant;->restore(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    move-result v2

    .line 196
    if-eqz v2, :cond_4

    .line 197
    const-string v0, "RecoveryManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovery failed, cannot perform resotre for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 200
    goto/16 :goto_0

    .line 216
    :cond_7
    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mediatek/recovery/AbstractRecoveryMethod;->doRecover(Ljava/lang/Object;)I

    move-result v1

    .line 218
    if-eqz v1, :cond_3

    .line 219
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, recovery method execute failed, error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v0, -0x9

    goto/16 :goto_0

    .line 227
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public backupSingleFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, -0x4

    .line 282
    const/4 v3, 0x0

    .line 283
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 284
    const/4 v1, 0x0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget-object v1, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 287
    if-nez v1, :cond_2

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 293
    :goto_0
    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->t:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/recovery/BackupServant;->backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    move-result v0

    .line 296
    :goto_1
    return v0

    :cond_0
    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 291
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    move v1, v3

    goto :goto_0
.end method

.method c()V
    .locals 5

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 255
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 257
    iget-object v1, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 259
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 261
    iget v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 262
    iget-object v4, p0, Lcom/mediatek/recovery/RecoveryManagerService;->t:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/recovery/BackupServant;->backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    goto :goto_0

    .line 266
    :cond_2
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string v0, "RecoveryManangerService v2.0"

    return-object v0
.end method

.method public handleException(Ljava/lang/RuntimeException;Z)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 369
    const-string v1, "RecoveryManagerService"

    const-string v2, "Catch exception "

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v1

    .line 373
    if-nez v1, :cond_0

    .line 374
    const-string v1, "RecoveryManagerService"

    const-string v2, "The exception backtrace is null, stop handle progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->v:Z

    if-eqz v1, :cond_2

    .line 378
    const-string v1, "RecoveryManagerService"

    const-string v2, "The first exception happened in system server has been caught, stop handle progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    invoke-virtual {v1}, Lcom/mediatek/recovery/EventLogger;->getLastBootStatus()I

    move-result v1

    sget v2, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_SUCCESS:I

    if-ne v1, v2, :cond_1

    .line 384
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    invoke-virtual {v1, p1}, Lcom/mediatek/recovery/EventLogger;->logBootFail(Ljava/lang/Throwable;)V

    .line 386
    :cond_1
    sget-object v1, Lcom/mediatek/recovery/RecoveryManager;->ANTIBRICKING_LEVEL:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 388
    const-string v1, "RecoveryManagerService"

    const-string v2, "RMS is partial support, do not recover any files, just record the exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_1
    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 398
    throw p1

    .line 381
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->v:Z

    goto :goto_0

    .line 391
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService;->a(Ljava/lang/RuntimeException;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 392
    :catch_0
    move-exception v1

    .line 394
    const-string v2, "RecoveryManagerService"

    const-string v3, "Exception recovery failed due to RMS excetipn"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 400
    :cond_4
    return-void
.end method

.method public startBootMonitor()V
    .locals 4

    .prologue
    .line 488
    const-string v0, "RecoveryManagerService"

    const-string v1, "Start boot monitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->u:Lcom/mediatek/recovery/RecoveryManagerService$b;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->u:Lcom/mediatek/recovery/RecoveryManagerService$b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/recovery/RecoveryManagerService$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/recovery/RecoveryManagerService$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 490
    return-void
.end method

.method public stopBootMonitor()V
    .locals 2

    .prologue
    .line 497
    const-string v0, "RecoveryManagerService"

    const-string v1, "Stop boot monitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->u:Lcom/mediatek/recovery/RecoveryManagerService$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/recovery/RecoveryManagerService$b;->removeMessages(I)V

    .line 499
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    const-string v1, "systemReady()"

    invoke-virtual {v0, v1}, Lcom/mediatek/recovery/EventLogger;->logBootSuccess(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->c()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->o:Z

    .line 276
    return-void
.end method
