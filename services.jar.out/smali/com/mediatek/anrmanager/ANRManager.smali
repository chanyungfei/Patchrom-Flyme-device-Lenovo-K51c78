.class public final Lcom/mediatek/anrmanager/ANRManager;
.super Lcom/mediatek/anrappmanager/ANRManagerNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;,
        Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;,
        Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;,
        Lcom/mediatek/anrmanager/ANRManager$DumpThread;,
        Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;,
        Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;,
        Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;,
        Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;
    }
.end annotation


# static fields
.field public static AnrOption:I = 0x0

.field public static final DISABLE_ALL_ANR_MECHANISM:I = 0x0

.field public static final DISABLE_PARTIAL_ANR_MECHANISM:I = 0x1

.field public static final ENABLE_ALL_ANR_MECHANISM:I = 0x2

.field public static final EVENT_BOOT_COMPLETED:I = 0x2329

.field public static final EVENT_DEXOPT_DONE:I = 0x232a

.field public static final IS_USER_BUILD:Z

.field protected static final MAX_MTK_TRACE_COUNT:I = 0xa

.field private static NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field protected static final REMOVE_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ed

.field public static final RENAME_TRACE_FILES_MSG:I = 0x3ee

.field public static final SIGNAL_STKFLT:I = 0x10

.field protected static final START_ANR_DUMP_MSG:I = 0x3eb

.field public static final START_MONITOR_BROADCAST_TIMEOUT_MSG:I = 0x3e9

.field protected static final START_MONITOR_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ec

.field public static final START_MONITOR_SERVICE_TIMEOUT_MSG:I = 0x3ea

.field public static final UPDATE_CPU_USAGE:I = 0x3ef

.field protected static additionNBTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

.field private static final d:Ljava/lang/Object;

.field private static final e:Ljava/lang/Object;

.field private static final f:Lcom/android/internal/os/ProcessCpuTracker;

.field private static h:Lcom/mediatek/anrmanager/ANRManager;

.field public static mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mZygotePids:[I


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private final g:Ljava/util/concurrent/atomic/AtomicLong;

.field private i:J

.field private j:J

.field public mAnrDumpMgr:Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;

.field public mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    sput v4, Lcom/mediatek/anrmanager/ANRManager;->AnrOption:I

    .line 101
    const-string v0, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/mediatek/anrmanager/ANRManager;->IS_USER_BUILD:Z

    .line 104
    sput-object v5, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->d:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->e:Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->f:Lcom/android/internal/os/ProcessCpuTracker;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "/system/bin/mediaserver"

    aput-object v3, v0, v1

    const-string v1, "/system/bin/surfaceflinger"

    aput-object v1, v0, v2

    const-string v1, "/system/bin/netd"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    .line 130
    sput-object v5, Lcom/mediatek/anrmanager/ANRManager;->h:Lcom/mediatek/anrmanager/ANRManager;

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/mediatek/anrappmanager/ANRManagerNative;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1475
    iput-wide v2, p0, Lcom/mediatek/anrmanager/ANRManager;->i:J

    .line 1478
    iput-wide v2, p0, Lcom/mediatek/anrmanager/ANRManager;->j:J

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;ILandroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 147
    invoke-direct {p0}, Lcom/mediatek/anrappmanager/ANRManagerNative;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1475
    iput-wide v2, p0, Lcom/mediatek/anrmanager/ANRManager;->i:J

    .line 1478
    iput-wide v2, p0, Lcom/mediatek/anrmanager/ANRManager;->j:J

    .line 148
    iput p2, p0, Lcom/mediatek/anrmanager/ANRManager;->a:I

    .line 149
    iput-object p3, p0, Lcom/mediatek/anrmanager/ANRManager;->b:Landroid/content/Context;

    .line 150
    sput-object p1, Lcom/mediatek/anrmanager/ANRManager;->c:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    .line 152
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;

    invoke-direct {v1}, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;-><init>()V

    invoke-static {v1}, Lcom/mediatek/anrappmanager/ANRAppManager;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/ANRAppManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/anrappmanager/ANRAppManager;->newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mediatek/anrmanager/ANRManager;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager;->a:I

    return v0
.end method

.method private final a(I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 256
    const/4 v0, 0x2

    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string v0, "5"

    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->setZramTag(Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 271
    if-eq p1, v7, :cond_2

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_2
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager;->a:I

    if-eq p1, v0, :cond_3

    .line 276
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_3
    const-string v0, "dalvik.vm.mtk-stack-trace-file"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    const-string v0, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preDumpStackTraces Begin tracePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preDumpStackTraces Stage I Begin tracePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v6, v0}, Lcom/mediatek/anrmanager/ANRManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;Z)V

    .line 293
    if-eq p1, v7, :cond_6

    .line 294
    invoke-static {p1, p1}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 296
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 297
    if-eqz v0, :cond_4

    .line 298
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    if-eq v0, p1, :cond_4

    iget v5, p0, Lcom/mediatek/anrmanager/ANRManager;->a:I

    if-eq v0, v5, :cond_4

    .line 300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    :cond_5
    invoke-static {p1, v1, v6}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->b(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 310
    :cond_6
    const-string v0, "ANRManager"

    const-string v4, "preDumpStackTraces Stage II Begin"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Lcom/mediatek/anrmanager/ANRManager;->a:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    invoke-direct {p0, v3, v1, v2, v8}, Lcom/mediatek/anrmanager/ANRManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;Z)V

    .line 314
    const-string v0, "ANRManager"

    const-string v1, "preDumpStackTraces Stage II End"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/mediatek/anrmanager/ANRManager;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1417
    if-nez p1, :cond_0

    .line 1444
    :goto_0
    return-void

    .line 1421
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1422
    const/4 v2, 0x0

    .line 1424
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 1425
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 1428
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1430
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1434
    if-eqz v1, :cond_1

    .line 1436
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1442
    :cond_1
    :goto_1
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeStringToFile close error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1431
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1432
    :goto_2
    :try_start_3
    const-string v2, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeStringToFile error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1434
    if-eqz v1, :cond_2

    .line 1436
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1442
    :cond_2
    :goto_3
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 1437
    :catch_2
    move-exception v0

    .line 1438
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeStringToFile close error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1434
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_3

    .line 1436
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1442
    :cond_3
    :goto_5
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 1437
    :catch_3
    move-exception v1

    .line 1438
    const-string v2, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeStringToFile close error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1434
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1431
    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v2, Lcom/mediatek/anrmanager/ANRManager$1;

    const/16 v0, 0x8

    invoke-direct {v2, p0, p1, v0}, Lcom/mediatek/anrmanager/ANRManager$1;-><init>(Lcom/mediatek/anrmanager/ANRManager;Ljava/lang/String;I)V

    .line 326
    :try_start_0
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 329
    if-eqz p2, :cond_1

    .line 331
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 332
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 333
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    :try_start_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 335
    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preDumpStackTraces process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zygote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v4, 0x10

    invoke-static {v0, v4}, Landroid/os/Process;->sendSignal(II)V

    .line 347
    :goto_1
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 348
    monitor-exit v2

    .line 332
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 342
    :cond_0
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preDumpStackTraces native process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zygote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {v0, p1}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    goto :goto_1

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    :try_start_4
    const-string v1, "ANRManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 355
    :cond_1
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 357
    if-eqz p4, :cond_2

    .line 358
    const/4 v0, 0x1

    const-string v1, "/data/anr/mtk_traces.txt"

    const-string v2, "/data/anr/mtk_traces_"

    invoke-static {v0, v1, v2}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 360
    :cond_2
    return-void

    .line 355
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    throw v0
.end method

.method private a_()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 1168
    const/4 v1, 0x0

    .line 1170
    :try_start_0
    const-string v0, "ro.have_aee_feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    new-instance v0, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v0}, Lcom/mediatek/aee/ExceptionLog;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/aee/ExceptionLog;->isException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1179
    :goto_1
    return-object v0

    .line 1173
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1179
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->c:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-object v0
.end method

.method public static enableANRDebuggingMechanism()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 1255
    sget v1, Lcom/mediatek/anrmanager/ANRManager;->AnrOption:I

    packed-switch v1, :pswitch_data_0

    .line 1263
    :goto_0
    :pswitch_0
    return v0

    .line 1259
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1261
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefault(Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;)Lcom/mediatek/anrmanager/ANRManager;
    .locals 1

    .prologue
    .line 140
    sput-object p0, Lcom/mediatek/anrmanager/ANRManager;->c:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    .line 141
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->h:Lcom/mediatek/anrmanager/ANRManager;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {v0}, Lcom/mediatek/anrmanager/ANRManager;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->h:Lcom/mediatek/anrmanager/ANRManager;

    .line 144
    :cond_0
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->h:Lcom/mediatek/anrmanager/ANRManager;

    return-object v0
.end method

.method public static renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    .line 729
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameFiles Begin, clearTraces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subnativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 734
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 735
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 737
    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 738
    sget-object v2, Lcom/mediatek/anrmanager/ANRManager;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    const/16 v1, 0x8

    :goto_0
    if-lez v1, :cond_2

    .line 742
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 744
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 741
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 748
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 750
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 754
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 760
    const-string v1, "ANRManager"

    const-string v2, "renameFiles End"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :goto_1
    return-object v0

    .line 750
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to prepare ANR traces file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkNBTDumpPid(I)V
    .locals 3

    .prologue
    .line 1212
    invoke-virtual {p0, p1}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1278
    .line 1280
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    :goto_0
    return v1

    .line 1283
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1284
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 1285
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1288
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/mediatek/anrmanager/ANRManager;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1292
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_1
    move v1, v0

    .line 1298
    goto :goto_0

    .line 1292
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    const-string v0, "ANRManager"

    const-string v2, "createFile fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1296
    goto :goto_1
.end method

.method public copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1303
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    .line 1307
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1308
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1311
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1313
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1317
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    const-string v0, "ANRManager"

    const-string v2, "copyToFile fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1322
    :goto_2
    return v0

    .line 1311
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1313
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1317
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    .line 1314
    :catch_1
    move-exception v3

    .line 1315
    const-string v3, "ANRManager"

    const-string v4, "copyToFile: getFD fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1314
    :catch_2
    move-exception v3

    .line 1315
    const-string v3, "ANRManager"

    const-string v4, "copyToFile: getFD fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1
.end method

.method public createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 1270
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1271
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1272
    :cond_0
    const-string v0, "ANRManager"

    const-string v1, "file isn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v0, 0x0

    .line 1275
    :cond_1
    return-object v0
.end method

.method public delayRenameTraceFiles(I)V
    .locals 4

    .prologue
    const/16 v1, 0x3ee

    .line 722
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    .line 723
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 724
    return-void
.end method

.method public dumpBinderInfo(I)V
    .locals 5

    .prologue
    .line 1347
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/binderinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1349
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1350
    const-string v0, "ANRManager"

    const-string v1, "dumpBinderInfo fail due to file likely to be locked by others"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1354
    const-string v0, "ANRManager"

    const-string v1, "dumpBinderInfo fail due to file cannot be created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    const-string v0, "ANRManager"

    const-string v1, "dumpBinderInfo fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1357
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1360
    :cond_3
    const-string v1, "/sys/kernel/debug/binder/failed_transaction_log"

    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1361
    if-eqz v1, :cond_4

    .line 1362
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER FAILED TRANSACTION LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1366
    :cond_4
    const-string v1, "sys/kernel/debug/binder/timeout_log"

    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1367
    if-eqz v1, :cond_5

    .line 1368
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TIMEOUT LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1372
    :cond_5
    const-string v1, "/sys/kernel/debug/binder/transaction_log"

    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1373
    if-eqz v1, :cond_6

    .line 1374
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TRANSACTION LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1378
    :cond_6
    const-string v1, "/sys/kernel/debug/binder/transactions"

    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1379
    if-eqz v1, :cond_7

    .line 1380
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TRANSACTIONS ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1384
    :cond_7
    const-string v1, "/sys/kernel/debug/binder/stats"

    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1385
    if-eqz v1, :cond_8

    .line 1386
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER STATS ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1390
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1393
    if-eqz v2, :cond_0

    .line 1394
    const-string v1, "/data/anr/binderinfo"

    const-string v3, "------ BINDER PROCESS STATE: $i ------\n"

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAndroidTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1087
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1088
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1089
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android time :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1081
    sget-object v1, Lcom/mediatek/anrmanager/ANRManager;->f:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1082
    :try_start_0
    const-string v0, "ANRManager"

    const-string v2, "getProcessState"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->f:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1084
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public informMessageDump(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1228
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1229
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-le v1, v2, :cond_0

    .line 1231
    const-string v0, ""

    .line 1233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    sget-object v1, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    :goto_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informMessageDump pid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return-void

    .line 1236
    :cond_1
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 1237
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1239
    :cond_2
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isAnrDeferrable(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 1503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1504
    iget-wide v4, p0, Lcom/mediatek/anrmanager/ANRManager;->j:J

    cmp-long v1, p1, v4

    if-gez v1, :cond_0

    .line 1506
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrDeferrable(): true since timerStartTimeMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDexoptDone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/anrmanager/ANRManager;->j:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :goto_0
    return v0

    .line 1510
    :cond_0
    sget-boolean v1, Lcom/mediatek/anrmanager/ANRManager;->IS_USER_BUILD:Z

    if-nez v1, :cond_3

    .line 1511
    iget-wide v4, p0, Lcom/mediatek/anrmanager/ANRManager;->i:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/mediatek/anrmanager/ANRManager;->i:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 1513
    :cond_1
    const-string v1, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAnrDeferrable(): true since mEventBootCompleted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/mediatek/anrmanager/ANRManager;->i:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1517
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/anrmanager/ANRManager;->a_()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1518
    const-string v1, "ANRManager"

    const-string v2, "isAnrDeferrable(): true since exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1522
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJavaProcess(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1447
    if-gtz p1, :cond_0

    .line 1468
    :goto_0
    return v0

    .line 1451
    :cond_0
    sget-object v2, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    if-nez v2, :cond_1

    .line 1452
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "zygote64"

    aput-object v3, v2, v0

    const-string v3, "zygote"

    aput-object v3, v2, v1

    .line 1456
    invoke-static {v2}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    sput-object v2, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    .line 1459
    :cond_1
    sget-object v2, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    if-eqz v2, :cond_3

    .line 1460
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result v3

    .line 1461
    sget-object v4, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    array-length v5, v4

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_3

    aget v6, v4, v2

    .line 1462
    if-ne v3, v6, :cond_2

    move v0, v1

    .line 1463
    goto :goto_0

    .line 1461
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1467
    :cond_3
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a Java process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isProcDoCoredump(I)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 1151
    const/4 v1, 0x0

    .line 1153
    :try_start_0
    const-string v0, "ro.have_aee_feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    new-instance v0, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v0}, Lcom/mediatek/aee/ExceptionLog;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/aee/ExceptionLog;->isNativeException(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[coredump] Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is doing coredump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1163
    :goto_1
    return-object v0

    .line 1156
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1163
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public notifyLightWeightANR(ILjava/lang/String;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    const/16 v1, 0x3ef

    const/16 v4, 0x3ec

    .line 1097
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    packed-switch p3, :pswitch_data_0

    .line 1115
    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1135
    :cond_1
    :goto_1
    return-void

    .line 1100
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1101
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1104
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_0

    .line 1119
    :cond_2
    packed-switch p3, :pswitch_data_1

    .line 1131
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager;->a(I)V

    goto :goto_1

    .line 1121
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, p1, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1123
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1126
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v4}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v4}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_1

    .line 1098
    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1119
    :pswitch_data_1
    .packed-switch 0x3ec
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public prepareStackTraceFile(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 642
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareStackTraceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 651
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 655
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 657
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 658
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 660
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b6

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to prepare stack trace file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerDumpNBTReceiver()V
    .locals 3

    .prologue
    .line 1184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1185
    const-string v1, "android.intent.action.ACTION_ADD_NBT_DUMP_PID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1186
    const-string v1, "android.intent.action.ACTION_REMOVE_NBT_DUMP_PID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1187
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager;->b:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/anrmanager/ANRManager$2;

    invoke-direct {v2, p0}, Lcom/mediatek/anrmanager/ANRManager$2;-><init>(Lcom/mediatek/anrmanager/ANRManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1209
    return-void
.end method

.method public removeNBTDumpPid(I)V
    .locals 3

    .prologue
    .line 1219
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    sget-object v1, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1221
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    return-void
.end method

.method public setZramMonitor(Z)V
    .locals 3

    .prologue
    .line 1406
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZramMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const-string v1, "/sys/module/mlog/parameters/timer_intval"

    if-eqz p1, :cond_0

    const-string v0, "100"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    return-void

    .line 1407
    :cond_0
    const-string v0, "6000"

    goto :goto_0
.end method

.method public setZramTag(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1411
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZramTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-string v0, "/sys/module/mlog/parameters/do_mlog"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/anrmanager/ANRManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    return-void
.end method

.method public skipANR(I)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1143
    invoke-virtual {p0, p1}, Lcom/mediatek/anrmanager/ANRManager;->isProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1146
    return-object v0
.end method

.method public startANRManager()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 162
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnrMonitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 164
    new-instance v1, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;-><init>(Lcom/mediatek/anrmanager/ANRManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    .line 165
    new-instance v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;

    invoke-direct {v0, p0}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;-><init>(Lcom/mediatek/anrmanager/ANRManager;)V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrDumpMgr:Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;

    .line 166
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->f:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 168
    const-string v0, "dalvik.vm.mtk-stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 169
    const-string v0, "dalvik.vm.stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 170
    const-string v0, "/data/anr/native1.txt"

    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 171
    const-string v0, "/data/anr/native2.txt"

    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 172
    const-string v0, "/data/anr/native3.txt"

    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startANRManager SELinux.restoreconRecursive fail dir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return-void
.end method

.method public stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1327
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1329
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 1333
    return-void

    .line 1331
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public updateProcessStats()V
    .locals 8

    .prologue
    .line 1069
    sget-object v1, Lcom/mediatek/anrmanager/ANRManager;->f:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1071
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1072
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x9c4

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1074
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->f:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1077
    :cond_0
    monitor-exit v1

    .line 1078
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeEvent(I)V
    .locals 2

    .prologue
    .line 1485
    packed-switch p1, :pswitch_data_0

    .line 1495
    :goto_0
    return-void

    .line 1487
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrmanager/ANRManager;->i:J

    goto :goto_0

    .line 1490
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrmanager/ANRManager;->j:J

    goto :goto_0

    .line 1485
    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
