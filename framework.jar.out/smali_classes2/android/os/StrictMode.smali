.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$InstanceCountViolation;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$LogStackTrace;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$StrictModeCustomViolation;,
        Landroid/os/StrictMode$StrictModeDiskWriteViolation;,
        Landroid/os/StrictMode$StrictModeDiskReadViolation;,
        Landroid/os/StrictMode$StrictModeNetworkViolation;,
        Landroid/os/StrictMode$StrictModeViolation;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$ThreadPolicy;
    }
.end annotation


# static fields
.field private static final ALL_THREAD_DETECT_BITS:I = 0xf

.field private static final ALL_VM_DETECT_BITS:I = 0x7e00

.field public static final DETECT_CUSTOM:I = 0x8

.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_VM_ACTIVITY_LEAKS:I = 0x800

.field public static final DETECT_VM_CLOSABLE_LEAKS:I = 0x400

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x200

.field private static final DETECT_VM_FILE_URI_EXPOSURE:I = 0x4000

.field private static final DETECT_VM_INSTANCE_LEAKS:I = 0x1000

.field public static final DETECT_VM_REGISTRATION_LEAKS:I = 0x2000

.field public static final DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final DURATIONN_LOG_THRESHOLD_MS:J = 0xbb8L

.field private static final EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ENG_BUILD:Z

.field private static final IS_USER_BUILD:Z

.field private static final LOG_V:Z

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MAX_SPAN_TAGS:I = 0x14

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field private static final NO_OP_SPAN:Landroid/os/StrictMode$Span;

.field private static final PARCEL_VIOLATION_SIZE_LIMIT:I = 0x20000

.field public static final PENALTY_DEATH:I = 0x40

.field public static final PENALTY_DEATH_ON_NETWORK:I = 0x200

.field public static final PENALTY_DIALOG:I = 0x20

.field public static final PENALTY_DROPBOX:I = 0x80

.field public static final PENALTY_FLASH:I = 0x800

.field public static final PENALTY_GATHER:I = 0x100

.field public static final PENALTY_LOG:I = 0x10

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final THREAD_PENALTY_MASK:I = 0xbf0

.field public static final VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final VM_PENALTY_MASK:I = 0xd0

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIdlerRegistered:Z

.field private static sLastInstanceCountCheckMillis:J

.field private static final sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static volatile sVmPolicyMask:I

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadAndroidPolicy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    const-string v0, "StrictMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 127
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    .line 128
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    .line 308
    sput v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 309
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 315
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 759
    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 1069
    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    .line 1077
    new-instance v0, Landroid/os/StrictMode$3;

    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    .line 1084
    new-instance v0, Landroid/os/StrictMode$4;

    invoke-direct {v0}, Landroid/os/StrictMode$4;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    .line 1487
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    .line 1488
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1489
    new-instance v0, Landroid/os/StrictMode$6;

    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    .line 1893
    new-instance v0, Landroid/os/StrictMode$8;

    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 1917
    new-instance v0, Landroid/os/StrictMode$9;

    invoke-direct {v0}, Landroid/os/StrictMode$9;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 1924
    new-instance v0, Landroid/os/StrictMode$10;

    invoke-direct {v0}, Landroid/os/StrictMode$10;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    .line 2020
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 123
    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 123
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 123
    invoke-static {p0}, Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500()J
    .locals 2

    .prologue
    .line 123
    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method static synthetic access$1502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 123
    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide p0
.end method

.method static synthetic access$2200()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/Singleton;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method static synthetic access$900()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 4

    .prologue
    .line 918
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 919
    .local v1, "oldPolicyMask":I
    and-int/lit8 v0, v1, -0x3

    .line 920
    .local v0, "newPolicyMask":I
    if-eq v0, v1, :cond_0

    .line 921
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 923
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .locals 4

    .prologue
    .line 899
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 900
    .local v1, "oldPolicyMask":I
    and-int/lit8 v0, v1, -0x4

    .line 901
    .local v0, "newPolicyMask":I
    if-eq v0, v1, :cond_0

    .line 902
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 904
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method private static amTheSystemServerProcess()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 932
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_1

    .line 946
    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    .local v2, "i$":I
    .local v3, "len$":I
    .local v4, "stack":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v6

    .line 938
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stack":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 939
    .restart local v4    # "stack":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 940
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 941
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v7, "com.android.server."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 943
    const/4 v6, 0x1

    goto :goto_0

    .line 940
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static clearGatheredViolations()V
    .locals 2

    .prologue
    .line 1458
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1459
    return-void
.end method

.method public static conditionallyCheckInstanceCounts()V
    .locals 10

    .prologue
    .line 1465
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    .line 1466
    .local v6, "policy":Landroid/os/StrictMode$VmPolicy;
    iget-object v8, v6, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1485
    :cond_0
    return-void

    .line 1470
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1471
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 1472
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1475
    iget-object v8, v6, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1476
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 1477
    .local v4, "klass":Ljava/lang/Class;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1478
    .local v5, "limit":I
    const/4 v8, 0x0

    invoke-static {v4, v8}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    .line 1479
    .local v2, "instances":J
    int-to-long v8, v5

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1482
    new-instance v7, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v7, v4, v2, v3, v5}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 1483
    .local v7, "tr":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static conditionallyEnableDebugLogging()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 955
    const-string v6, "persist.sys.strictmode.visual"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/StrictMode;->amTheSystemServerProcess()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 957
    .local v0, "doFlashes":Z
    :goto_0
    const-string v6, "persist.sys.strictmode.disable"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 961
    .local v2, "suppress":Z
    if-nez v0, :cond_2

    sget-boolean v6, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-nez v6, :cond_0

    if-eqz v2, :cond_2

    .line 962
    :cond_0
    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 1001
    :goto_1
    return v5

    .end local v0    # "doFlashes":Z
    .end local v2    # "suppress":Z
    :cond_1
    move v0, v5

    .line 955
    goto :goto_0

    .line 976
    .restart local v0    # "doFlashes":Z
    .restart local v2    # "suppress":Z
    :cond_2
    const/4 v3, 0x7

    .line 980
    .local v3, "threadPolicyMask":I
    sget-boolean v6, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-nez v6, :cond_3

    .line 981
    or-int/lit16 v3, v3, 0x80

    .line 983
    :cond_3
    if-eqz v0, :cond_4

    .line 984
    or-int/lit16 v3, v3, 0x800

    .line 987
    :cond_4
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 991
    sget-boolean v6, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v6, :cond_5

    .line 992
    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    :goto_2
    move v5, v4

    .line 1001
    goto :goto_1

    .line 994
    :cond_5
    new-instance v5, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 995
    .local v1, "policyBuilder":Landroid/os/StrictMode$VmPolicy$Builder;
    sget-boolean v5, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    if-eqz v5, :cond_6

    .line 996
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 998
    :cond_6
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v5

    invoke-static {v5}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 999
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v5

    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    goto :goto_2
.end method

.method public static decrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 11
    .param p0, "klass"    # Ljava/lang/Class;

    .prologue
    const/4 v7, 0x0

    .line 2055
    if-nez p0, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    const-class v8, Landroid/os/StrictMode;

    monitor-enter v8

    .line 2061
    :try_start_0
    sget-object v9, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v9, v9, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v9, v9, 0x800

    if-nez v9, :cond_2

    .line 2062
    monitor-exit v8

    goto :goto_0

    .line 2076
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2065
    :cond_2
    :try_start_1
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2066
    .local v1, "expected":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    move v5, v7

    .line 2067
    .local v5, "newExpected":I
    :goto_1
    if-nez v5, :cond_5

    .line 2068
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .line 2076
    .local v4, "limit":I
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2079
    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v0

    .line 2080
    .local v0, "actual":I
    if-le v0, v4, :cond_0

    .line 2092
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2093
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2094
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2096
    invoke-static {p0, v7}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    .line 2097
    .local v2, "instances":J
    int-to-long v8, v4

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 2098
    new-instance v6, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v6, p0, v2, v3, v4}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 2099
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2066
    .end local v0    # "actual":I
    .end local v2    # "instances":J
    .end local v4    # "limit":I
    .end local v5    # "newExpected":I
    .end local v6    # "tr":Ljava/lang/Throwable;
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    goto :goto_1

    .line 2070
    .restart local v5    # "newExpected":I
    :cond_5
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, p0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "violationMaskSubset"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 1407
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1408
    .local v0, "outstanding":I
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 1411
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1437
    :goto_0
    return-void

    .line 1415
    :cond_0
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_1

    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropboxing async; in-flight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_1
    new-instance v1, Landroid/os/StrictMode$5;

    const-string v2, "callActivityManagerForStrictModeDropbox"

    invoke-direct {v1, v2, p0, p1}, Landroid/os/StrictMode$5;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$5;->start()V

    goto :goto_0
.end method

.method public static enableDeathOnNetwork()V
    .locals 3

    .prologue
    .line 1011
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 1012
    .local v1, "oldPolicy":I
    or-int/lit8 v2, v1, 0x4

    or-int/lit16 v0, v2, 0x200

    .line 1013
    .local v0, "newPolicy":I
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1014
    return-void
.end method

.method public static enableDefaults()V
    .locals 1

    .prologue
    .line 1547
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1551
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1555
    return-void
.end method

.method public static enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1946
    sget-boolean v3, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v3, :cond_0

    .line 1947
    sget-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 1974
    :goto_0
    return-object v0

    .line 1949
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1950
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "name must be non-null and non-empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1952
    :cond_2
    sget-object v3, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ThreadSpanState;

    .line 1953
    .local v2, "state":Landroid/os/StrictMode$ThreadSpanState;
    const/4 v0, 0x0

    .line 1954
    .local v0, "span":Landroid/os/StrictMode$Span;
    monitor-enter v2

    .line 1955
    :try_start_0
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_5

    .line 1956
    iget-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 1957
    # getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 1958
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 1963
    :goto_1
    # setter for: Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/os/StrictMode$Span;->access$1902(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;

    .line 1964
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Landroid/os/StrictMode$Span;->mCreateMillis:J
    invoke-static {v0, v4, v5}, Landroid/os/StrictMode$Span;->access$2002(Landroid/os/StrictMode$Span;J)J

    .line 1965
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    # setter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->access$1802(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1966
    const/4 v3, 0x0

    # setter for: Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1967
    iput-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 1968
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 1969
    # getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1970
    # getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    # setter for: Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;
    invoke-static {v3, v0}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1972
    :cond_3
    sget-boolean v3, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v3, :cond_4

    const-string v3, "StrictMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Span enter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1961
    :cond_5
    :try_start_1
    new-instance v1, Landroid/os/StrictMode$Span;

    invoke-direct {v1, v2}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "span":Landroid/os/StrictMode$Span;
    .local v1, "span":Landroid/os/StrictMode$Span;
    move-object v0, v1

    .end local v1    # "span":Landroid/os/StrictMode$Span;
    .restart local v0    # "span":Landroid/os/StrictMode$Span;
    goto :goto_1
.end method

.method private static executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 1393
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    .line 1394
    .local v0, "violationBit":I
    new-instance v1, Landroid/os/StrictMode$StrictModeViolation;

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    throw v1
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    .prologue
    .line 885
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .locals 1

    .prologue
    .line 874
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    move-result v0

    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .locals 2

    .prologue
    .line 1533
    const-class v1, Landroid/os/StrictMode;

    monitor-enter v1

    .line 1534
    :try_start_0
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    monitor-exit v1

    return-object v0

    .line 1535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static hasGatheredViolations()Z
    .locals 1

    .prologue
    .line 1449
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;

    .prologue
    .line 2036
    if-nez p0, :cond_0

    .line 2049
    :goto_0
    return-void

    .line 2040
    :cond_0
    const-class v3, Landroid/os/StrictMode;

    monitor-enter v3

    .line 2041
    :try_start_0
    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_1

    .line 2042
    monitor-exit v3

    goto :goto_0

    .line 2048
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2045
    :cond_1
    :try_start_1
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2046
    .local v0, "expected":Ljava/lang/Integer;
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2047
    .local v1, "newExpected":Ljava/lang/Integer;
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    monitor-exit v3

    goto :goto_0

    .line 2046
    .end local v1    # "newExpected":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static noteDiskRead()V
    .locals 2

    .prologue
    .line 1999
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2000
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2005
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :goto_0
    return-void

    .line 2004
    .restart local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onReadFromDisk()V

    goto :goto_0
.end method

.method public static noteDiskWrite()V
    .locals 2

    .prologue
    .line 2011
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2012
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2017
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :goto_0
    return-void

    .line 2016
    .restart local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onWriteToDisk()V

    goto :goto_0
.end method

.method public static noteSlowCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1987
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1988
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 1993
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :goto_0
    return-void

    .line 1992
    .restart local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .locals 0
    .param p0, "newPolicy"    # I

    .prologue
    .line 1816
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 1817
    return-void
.end method

.method public static onFileUriExposed(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 1617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:// Uri exposed through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1619
    return-void
.end method

.method public static onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1603
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1604
    return-void
.end method

.method public static onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1610
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1611
    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1589
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1590
    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 22
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1628
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const/4 v12, 0x1

    .line 1629
    .local v12, "penaltyDropbox":Z
    :goto_0
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit8 v18, v18, 0x40

    if-eqz v18, :cond_5

    const/4 v7, 0x1

    .line 1630
    .local v7, "penaltyDeath":Z
    :goto_1
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_6

    const/4 v13, 0x1

    .line 1631
    .local v13, "penaltyLog":Z
    :goto_2
    new-instance v6, Landroid/os/StrictMode$ViolationInfo;

    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 1634
    .local v6, "info":Landroid/os/StrictMode$ViolationInfo;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 1635
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 1636
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 1638
    invoke-virtual {v6}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1639
    .local v5, "fingerprint":Ljava/lang/Integer;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1640
    .local v10, "now":J
    const-wide/16 v8, 0x0

    .line 1641
    .local v8, "lastViolationTime":J
    const-wide v16, 0x7fffffffffffffffL

    .line 1642
    .local v16, "timeSinceLastViolationMillis":J
    sget-object v19, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    monitor-enter v19

    .line 1643
    :try_start_0
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1644
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1645
    sub-long v16, v10, v8

    .line 1647
    :cond_0
    const-wide/16 v20, 0x3e8

    cmp-long v18, v16, v20

    if-lez v18, :cond_1

    .line 1648
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    :cond_1
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    if-eqz v13, :cond_2

    const-wide/16 v18, 0x3e8

    cmp-long v18, v16, v18

    if-lez v18, :cond_2

    .line 1653
    const-string v18, "StrictMode"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1656
    :cond_2
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7e00

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v15, v0, 0x80

    .line 1658
    .local v15, "violationMaskSubset":I
    if-eqz v12, :cond_7

    if-nez v7, :cond_7

    .line 1662
    invoke-static {v15, v6}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1696
    :cond_3
    :goto_3
    return-void

    .line 1628
    .end local v5    # "fingerprint":Ljava/lang/Integer;
    .end local v6    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v7    # "penaltyDeath":Z
    .end local v8    # "lastViolationTime":J
    .end local v10    # "now":J
    .end local v12    # "penaltyDropbox":Z
    .end local v13    # "penaltyLog":Z
    .end local v15    # "violationMaskSubset":I
    .end local v16    # "timeSinceLastViolationMillis":J
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1629
    .restart local v12    # "penaltyDropbox":Z
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1630
    .restart local v7    # "penaltyDeath":Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1650
    .restart local v5    # "fingerprint":Ljava/lang/Integer;
    .restart local v6    # "info":Landroid/os/StrictMode$ViolationInfo;
    .restart local v8    # "lastViolationTime":J
    .restart local v10    # "now":J
    .restart local v13    # "penaltyLog":Z
    .restart local v16    # "timeSinceLastViolationMillis":J
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1666
    .restart local v15    # "violationMaskSubset":I
    :cond_7
    if-eqz v12, :cond_8

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-nez v18, :cond_8

    .line 1671
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v14

    .line 1677
    .local v14, "savedPolicyMask":I
    const/16 v18, 0x0

    :try_start_2
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1679
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v15, v6}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1687
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1691
    .end local v14    # "savedPolicyMask":I
    :cond_8
    :goto_4
    if-eqz v7, :cond_3

    .line 1692
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1693
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    .line 1694
    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    .line 1683
    .restart local v14    # "savedPolicyMask":I
    :catch_0
    move-exception v4

    .line 1684
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v18, "StrictMode"

    const-string v19, "RemoteException trying to handle StrictMode violation"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1687
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    goto :goto_4

    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v18

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v18
.end method

.method public static onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1596
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1597
    return-void
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1030
    if-eqz p0, :cond_0

    const-string v4, "policy="

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return v3

    .line 1033
    :cond_1
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1034
    .local v2, "spaceIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1037
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, "policyString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static parseViolationFromMessage(Ljava/lang/String;)I
    .locals 8
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1049
    if-nez p0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v5

    .line 1052
    :cond_1
    const-string v6, "violation="

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1053
    .local v3, "violationIndex":I
    if-eq v3, v7, :cond_0

    .line 1056
    const-string v6, "violation="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v3, v6

    .line 1057
    .local v2, "numberStartIndex":I
    const/16 v6, 0x20

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1058
    .local v1, "numberEndIndex":I
    if-ne v1, v7, :cond_2

    .line 1059
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1061
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1063
    .local v4, "violationString":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .locals 14
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1763
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 1764
    .local v8, "sw":Ljava/io/StringWriter;
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    const/16 v11, 0x100

    invoke-direct {v7, v8, v10, v11}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1765
    .local v7, "pw":Ljava/io/PrintWriter;
    new-instance v11, Landroid/os/StrictMode$LogStackTrace;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroid/os/StrictMode$LogStackTrace;-><init>(Landroid/os/StrictMode$1;)V

    invoke-virtual {v11, v7}, Landroid/os/StrictMode$LogStackTrace;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1766
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 1767
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1769
    .local v4, "ourStack":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v6

    .line 1770
    .local v6, "policyMask":I
    and-int/lit16 v11, v6, 0x100

    if-eqz v11, :cond_2

    move v0, v9

    .line 1772
    .local v0, "currentlyGathering":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1773
    .local v3, "numViolations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1774
    sget-boolean v11, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v11, :cond_0

    const-string v11, "StrictMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "strict mode violation stacks read from binder call.  i="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ViolationInfo;

    if-nez v0, :cond_3

    move v11, v9

    :goto_2
    invoke-direct {v2, p0, v11}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 1799
    .local v2, "info":Landroid/os/StrictMode$ViolationInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v13, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "# via Binder call with stack:\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 1800
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v5

    .line 1801
    .local v5, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v11, v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v11, :cond_1

    .line 1802
    check-cast v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v5    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v5, v2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1773
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "currentlyGathering":Z
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v3    # "numViolations":I
    :cond_2
    move v0, v10

    .line 1770
    goto :goto_0

    .restart local v0    # "currentlyGathering":Z
    .restart local v1    # "i":I
    .restart local v3    # "numViolations":I
    :cond_3
    move v11, v10

    .line 1775
    goto :goto_2

    .line 1805
    :cond_4
    return-void
.end method

.method private static setBlockGuardPolicy(I)V
    .locals 3
    .param p0, "policyMask"    # I

    .prologue
    .line 798
    if-nez p0, :cond_0

    .line 799
    sget-object v2, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v2}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 811
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    .line 804
    .local v1, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v2, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 805
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 810
    .local v0, "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    :goto_1
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    goto :goto_0

    .line 807
    .end local v0    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    :cond_1
    sget-object v2, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 808
    .restart local v0    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    invoke-static {v0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    goto :goto_1
.end method

.method private static setCloseGuardEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 815
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    move-result-object v0

    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode$1;)V

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    .line 818
    :cond_0
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 819
    return-void
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p0, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    .prologue
    .line 781
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 782
    return-void
.end method

.method private static setThreadPolicyMask(I)V
    .locals 0
    .param p0, "policyMask"    # I

    .prologue
    .line 790
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 793
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 794
    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 4
    .param p0, "policy"    # Landroid/os/StrictMode$VmPolicy;

    .prologue
    .line 1509
    const-class v3, Landroid/os/StrictMode;

    monitor-enter v3

    .line 1510
    :try_start_0
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1511
    iget v2, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    sput v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 1512
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v2

    invoke-static {v2}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 1514
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1515
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 1516
    iget-object v1, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 1517
    .local v1, "mq":Landroid/os/MessageQueue;
    iget-object v2, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v2, v2, 0xd0

    if-nez v2, :cond_2

    .line 1519
    :cond_0
    sget-object v2, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1520
    const/4 v2, 0x0

    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1526
    .end local v1    # "mq":Landroid/os/MessageQueue;
    :cond_1
    :goto_0
    monitor-exit v3

    .line 1527
    return-void

    .line 1521
    .restart local v1    # "mq":Landroid/os/MessageQueue;
    :cond_2
    sget-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    if-nez v2, :cond_1

    .line 1522
    sget-object v2, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1523
    const/4 v2, 0x1

    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    goto :goto_0

    .line 1526
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "mq":Landroid/os/MessageQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static tooManyViolationsThisLoop()Z
    .locals 2

    .prologue
    .line 1092
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "instance"    # Ljava/lang/Object;

    .prologue
    .line 2029
    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static vmClosableObjectLeaksEnabled()Z
    .locals 1

    .prologue
    .line 1568
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vmFileUriExposureEnabled()Z
    .locals 1

    .prologue
    .line 1582
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vmRegistrationLeaksEnabled()Z
    .locals 1

    .prologue
    .line 1575
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .locals 1

    .prologue
    .line 1561
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .locals 12
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v11, 0x0

    .line 1702
    sget-object v8, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1703
    .local v7, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v7, :cond_0

    .line 1704
    invoke-virtual {p0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    :goto_0
    sget-object v8, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1753
    return-void

    .line 1707
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1708
    .local v5, "tempPar":Landroid/os/Parcel;
    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1709
    .local v1, "originDataPosition":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 1710
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v8, v5, v11}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1712
    :cond_1
    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    sub-int v6, v8, v1

    .line 1713
    .local v6, "violationParcelSize":I
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1716
    const/high16 v8, 0x20000

    if-le v6, v8, :cond_5

    .line 1718
    const-string v8, "StrictMode"

    const-string v9, "PARCEL DUMP: WARNING!! violationParcelSize exceed 131072 bytes!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const-string v8, "StrictMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PARCEL DUMP: violationParcelSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const-string v8, "StrictMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PARCEL DUMP: num="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    new-instance v2, Landroid/os/StrictMode$7;

    invoke-direct {v2}, Landroid/os/StrictMode$7;-><init>()V

    .line 1727
    .local v2, "printer":Landroid/util/Printer;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 1729
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/StrictMode$ViolationInfo;

    const-string v9, "PARCEL DUMP: "

    invoke-virtual {v8, v2, v9}, Landroid/os/StrictMode$ViolationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1727
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1732
    :cond_2
    invoke-virtual {p0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1749
    .end local v2    # "printer":Landroid/util/Printer;
    :cond_3
    sget-boolean v8, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v8, :cond_4

    const-string v8, "StrictMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wrote violations to response parcel; num="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1736
    :cond_5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 1737
    .local v4, "start":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 1739
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v8, p0, v11}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1740
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    sub-int v3, v8, v4

    .line 1741
    .local v3, "size":I
    const/16 v8, 0x2800

    if-le v3, v8, :cond_6

    .line 1742
    const-string v8, "StrictMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrote violation #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
