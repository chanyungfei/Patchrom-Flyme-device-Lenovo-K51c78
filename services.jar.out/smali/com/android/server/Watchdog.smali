.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_SF_WAIT:I = 0x4e20

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/mediaserver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/32 v4, 0xea60

    .line 238
    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 246
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "foreground thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 248
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v3, "main thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "ui thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "i/o thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "display thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    const-string v0, "ro.have_aee_feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v0}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    .line 266
    :cond_0
    return-void
.end method

.method public static GetSFReboot()I
    .locals 2

    .prologue
    .line 105
    const-string v0, "service.sf.reboot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static SetSFReboot()V
    .locals 3

    .prologue
    .line 109
    const-string v1, "service.sf.reboot"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "OldTime":I
    add-int/lit8 v0, v0, 0x1

    .line 111
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/16 v0, 0x9

    .line 112
    :cond_0
    const-string v1, "service.sf.reboot"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 356
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 604
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 605
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    .line 606
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Watchdog"

    const-string v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dumpAllBackTraces(Z)Ljava/io/File;
    .locals 5
    .param p1, "clearTraces"    # Z

    .prologue
    const/4 v4, 0x0

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRunningProcessPids(Ljava/util/ArrayList;)V

    .line 640
    const/4 v2, 0x1

    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v2, v0, v4, v4, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 642
    .local v1, "stack":Ljava/io/File;
    return-object v1
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 613
    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-object v1

    .line 618
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 619
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    .prologue
    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 335
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 336
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 345
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 234
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public GetSFStatus()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 97
    iget-object v2, p0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/mediatek/aee/ExceptionLog;->SFMatterJava(JJ)J

    move-result-wide v0

    .line 100
    :cond_0
    return-wide v0
.end method

.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 302
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 303
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "thread"    # Landroid/os/Handler;

    .prologue
    .line 307
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 308
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 315
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 270
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 272
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 275
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 282
    :cond_0
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 327
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 37

    .prologue
    .line 379
    const/16 v36, 0x0

    .line 380
    .local v36, "waitedHalf":Z
    const/16 v27, 0x0

    .line 381
    .local v27, "mNeedDump":Z
    const/16 v28, 0x0

    .line 386
    .local v28, "mSFHang":Z
    :goto_0
    const/16 v28, 0x0

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v4, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 390
    :cond_0
    if-eqz v27, :cond_2

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 394
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/Watchdog;->dumpAllBackTraces(Z)Ljava/io/File;

    .line 395
    const/16 v27, 0x0

    .line 399
    :cond_2
    const/16 v20, 0x0

    .line 401
    .local v20, "debuggerWasConnected":I
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWT Watchdog before synchronized:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    monitor-enter p0

    .line 405
    :try_start_0
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWT Watchdog after synchronized:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-wide/16 v34, 0x7530

    .line 411
    .local v34, "timeout":J
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_3

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/Watchdog$HandlerChecker;

    .line 413
    .local v23, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 411
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 416
    .end local v23    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_3
    if-lez v20, :cond_4

    .line 417
    add-int/lit8 v20, v20, -0x1

    .line 425
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 426
    .local v32, "start":J
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-lez v4, :cond_7

    .line 427
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 428
    const/16 v20, 0x2

    .line 432
    :cond_5
    :try_start_1
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWT Watchdog before wait timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWT Watchdog before wait current time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWT Watchdog before wait start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v4, "Watchdog"

    const-string v5, "SWT Watchdog before wait CHECK_INTERVAL:30000"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 439
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWT Watchdog after wait current time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 445
    const/16 v20, 0x2

    .line 447
    :cond_6
    const-wide/16 v4, 0x7530

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v32

    sub-long v34, v4, v6

    goto/16 :goto_2

    .line 441
    :catch_0
    move-exception v21

    .line 442
    .local v21, "e":Ljava/lang/InterruptedException;
    const-string v4, "Watchdog"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 483
    .end local v21    # "e":Ljava/lang/InterruptedException;
    .end local v24    # "i":I
    .end local v32    # "start":J
    .end local v34    # "timeout":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 451
    .restart local v24    # "i":I
    .restart local v32    # "start":J
    .restart local v34    # "timeout":J
    :cond_7
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->GetSFStatus()J

    move-result-wide v14

    .line 452
    .local v14, "SFHangTime":J
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**Get SF Time **"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-wide/32 v4, 0x9c40

    cmp-long v4, v14, v4

    if-lez v4, :cond_b

    .line 454
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**SF hang Time **"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/16 v28, 0x1

    .line 480
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v18

    .line 481
    .local v18, "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    .line 482
    .local v10, "subject":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move/from16 v16, v0

    .line 483
    .local v16, "allowRestart":Z
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**SWT happen **"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-eqz v28, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 491
    const-string v10, "surfaceflinger  hang."

    .line 493
    :cond_9
    const/16 v4, 0xaf2

    invoke-static {v4, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    const-wide/16 v6, 0x2d0

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 496
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/Watchdog;->dumpAllBackTraces(Z)Ljava/io/File;

    .line 501
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 509
    const/16 v4, 0x77

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 510
    const/16 v4, 0x6c

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 530
    const-string v4, "Watchdog"

    const-string v5, "** save all info before killnig system server **"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "watchdog"

    const/4 v6, 0x0

    const-string v7, "system_server"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 534
    monitor-enter p0

    .line 535
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object/from16 v19, v0

    .line 536
    .local v19, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 537
    if-nez v28, :cond_10

    if-eqz v19, :cond_10

    .line 538
    const-string v4, "Watchdog"

    const-string v5, "Reporting stuck state to activity controller"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :try_start_5
    const-string v4, "Service dumps disabled due to hung system process."

    invoke-static {v4}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 541
    const-string v4, "Watchdog"

    const-string v5, "Binder.setDumpDisabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v29

    .line 544
    .local v29, "res":I
    if-ltz v29, :cond_f

    .line 545
    const-string v4, "Watchdog"

    const-string v5, "Activity controller requested to coninue to wait"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 546
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 459
    .end local v10    # "subject":Ljava/lang/String;
    .end local v16    # "allowRestart":Z
    .end local v18    # "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v19    # "controller":Landroid/app/IActivityController;
    .end local v29    # "res":I
    :cond_b
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v31

    .line 460
    .local v31, "waitState":I
    if-nez v31, :cond_c

    .line 462
    const/16 v36, 0x0

    .line 464
    monitor-exit p0

    goto/16 :goto_0

    .line 465
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, v31

    if-ne v0, v4, :cond_d

    .line 468
    monitor-exit p0

    goto/16 :goto_0

    .line 469
    :cond_d
    const/4 v4, 0x2

    move/from16 v0, v31

    if-ne v0, v4, :cond_8

    .line 470
    if-nez v36, :cond_e

    .line 473
    const/16 v27, 0x1

    .line 474
    const/16 v36, 0x1

    .line 476
    :cond_e
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 536
    .end local v31    # "waitState":I
    .restart local v10    # "subject":Ljava/lang/String;
    .restart local v16    # "allowRestart":Z
    .restart local v18    # "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 549
    .restart local v19    # "controller":Landroid/app/IActivityController;
    .restart local v29    # "res":I
    :cond_f
    :try_start_8
    const-string v4, "Watchdog"

    const-string v5, "Activity controller requested to reboot"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 555
    .end local v29    # "res":I
    :cond_10
    :goto_4
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 556
    const/16 v20, 0x2

    .line 558
    :cond_11
    const/4 v4, 0x2

    move/from16 v0, v20

    if-lt v0, v4, :cond_12

    .line 559
    const-string v4, "Watchdog"

    const-string v5, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_5
    const/16 v36, 0x0

    .line 599
    goto/16 :goto_0

    .line 560
    :cond_12
    if-lez v20, :cond_13

    .line 561
    const-string v4, "Watchdog"

    const-string v5, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 562
    :cond_13
    if-nez v16, :cond_14

    .line 563
    const-string v4, "Watchdog"

    const-string v5, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 565
    :cond_14
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v24, 0x0

    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_16

    .line 567
    const-string v5, "Watchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v4}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " stack trace:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v4}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v30

    .line 570
    .local v30, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object/from16 v17, v30

    .local v17, "arr$":[Ljava/lang/StackTraceElement;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_7
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    aget-object v22, v17, v25

    .line 571
    .local v22, "element":Ljava/lang/StackTraceElement;
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 566
    .end local v22    # "element":Ljava/lang/StackTraceElement;
    :cond_15
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 574
    .end local v17    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v25    # "i$":I
    .end local v26    # "len$":I
    .end local v30    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_16
    const-wide/16 v4, 0x61a8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 577
    const-string v4, "Watchdog"

    const-string v5, "*** GOODBYE!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-eqz v28, :cond_17

    .line 581
    const-string v4, "Watchdog"

    const-string v5, "SF hang!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Lcom/android/server/Watchdog;->GetSFReboot()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_18

    .line 584
    const-string v4, "Watchdog"

    const-string v5, "SF hang reboot time larger than 3 time, reboot device!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v4, "Maybe SF driver hang,reboot device."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 594
    :cond_17
    :goto_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 595
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_5

    .line 589
    :cond_18
    invoke-static {}, Lcom/android/server/Watchdog;->SetSFReboot()V

    goto :goto_8

    .line 550
    :catch_1
    move-exception v4

    goto/16 :goto_4
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 288
    monitor-exit p0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1
    .param p1, "allowRestart"    # Z

    .prologue
    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 294
    monitor-exit p0

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
