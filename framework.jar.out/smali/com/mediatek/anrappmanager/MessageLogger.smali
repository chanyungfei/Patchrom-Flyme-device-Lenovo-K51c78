.class public Lcom/mediatek/anrappmanager/MessageLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;,
        Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    }
.end annotation


# static fields
.field private static c:Lcom/mediatek/anrappmanager/IFrameworks;

.field public static mEnableLooperLog:Z


# instance fields
.field private g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

.field private h:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private mName:Ljava/lang/String;

.field private n:J

.field public nonSleepWallStart:J

.field public nonSleepWallTime:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/StringBuilder;

.field private r:J

.field public wallStart:J

.field public wallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/anrappmanager/IFrameworks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    .line 36
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->mName:Ljava/lang/String;

    .line 38
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->p:Ljava/lang/String;

    .line 46
    sput-object p1, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 47
    invoke-direct {p0}, Lcom/mediatek/anrappmanager/MessageLogger;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(ZLcom/mediatek/anrappmanager/IFrameworks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    .line 36
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->mName:Ljava/lang/String;

    .line 38
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->p:Ljava/lang/String;

    .line 51
    sput-boolean p1, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    .line 52
    sput-object p2, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 53
    invoke-direct {p0}, Lcom/mediatek/anrappmanager/MessageLogger;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/mediatek/anrappmanager/IFrameworks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    .line 36
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->mName:Ljava/lang/String;

    .line 38
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->p:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->mName:Ljava/lang/String;

    .line 58
    sput-boolean p1, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    .line 59
    sput-object p3, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 60
    invoke-direct {p0}, Lcom/mediatek/anrappmanager/MessageLogger;->init()V

    .line 61
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, "MessageLogger"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 64
    new-instance v0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;-><init>(Lcom/mediatek/anrappmanager/MessageLogger;I)V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    .line 65
    new-instance v0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;-><init>(Lcom/mediatek/anrappmanager/MessageLogger;I)V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->r:J

    .line 69
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 12

    .prologue
    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    const-string v0, ">>> Entering MessageLogger.dump. to Dump MSG HISTORY <<<"

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger;->dumpMsgQueueFromCurrentThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    sget-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-static {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/anrappmanager/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 226
    :goto_1
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "MessageLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 174
    :cond_1
    :try_start_3
    const-string v0, "MSG HISTORY IN MAIN THREAD:"

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current kernel time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 180
    iget v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 181
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/anrappmanager/MessageLogger;->j:J

    sub-long/2addr v4, v6

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:J

    sub-long/2addr v6, v8

    .line 184
    iget-object v3, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v3}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->getLast()Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    move-result-object v3

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Last record : Msg#:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v3, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdStart:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, v3, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last record dispatching elapsedTime:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms/upTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last record dispatching time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 190
    add-int/lit8 v0, v0, -0x1

    .line 193
    :cond_2
    :goto_2
    if-ltz v0, :cond_3

    .line 194
    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v2, v0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->get(I)Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    move-result-object v2

    .line 195
    new-instance v3, Ljava/util/Date;

    iget-wide v4, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeElapsed:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Msg#:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdFinish:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->finishDispatch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " elapsedTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationElapsed:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms/upTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationUp:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Msg#:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdStart:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 193
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 201
    :cond_3
    const-string v0, "=== Finish Dumping MSG HISTORY==="

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 204
    const-string v0, "=== LONGER MSG HISTORY IN MAIN THREAD ==="

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 206
    :goto_3
    if-ltz v0, :cond_4

    .line 207
    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v2, v0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->get(I)Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    move-result-object v2

    .line 209
    new-instance v3, Ljava/util/Date;

    iget-wide v4, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeElapsed:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Msg#:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdStart:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " elapsedTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationElapsed:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms/upTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationUp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 206
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 213
    :cond_4
    const-string v0, "=== Finish Dumping LONGER MSG HISTORY==="

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger;->dumpMsgQueueFromCurrentThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    sget-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-static {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/anrappmanager/IANRManager;->informMessageDump(Ljava/lang/String;I)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    :goto_4
    :try_start_5
    monitor-exit p0

    goto/16 :goto_1

    .line 221
    :catch_1
    move-exception v0

    .line 222
    const-string v1, "MessageLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public dumpMsgQueueFromCurrentThread()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 128
    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!!! Current MainLooper is Null !!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 141
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!!! Calling thread from PID:%d\'s TID:%d(%s),Thread\'s type is %s!!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "!!! get StackTrace: !!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    move v0, v1

    .line 149
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "File:%s\'s Linenumber:%d, Class:%s, Method:%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_0
    sget-object v2, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v2, v0}, Lcom/mediatek/anrappmanager/IFrameworks;->looperGetQueue(Landroid/os/Looper;)Landroid/os/MessageQueue;

    move-result-object v0

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!!! Current MainLooper\'s MsgQueue is Null !!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_1
    sget-object v1, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v1, v0}, Lcom/mediatek/anrappmanager/IFrameworks;->messageQueueDumpMessageQueue(Landroid/os/MessageQueue;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_2
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public println(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    .line 79
    iget-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->j:J

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:J

    .line 83
    sget-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v0}, Lcom/mediatek/anrappmanager/IFrameworks;->systemClockCurrentTimeMicro()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:J

    .line 85
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    if-ne v0, v6, :cond_2

    .line 86
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->add()Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->init()V

    .line 88
    iput-object p1, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    .line 89
    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    iput-wide v2, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdStart:J

    .line 90
    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:J

    iput-wide v2, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeElapsed:J

    .line 91
    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:J

    iput-wide v2, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeUp:J

    .line 107
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    if-ne v0, v6, :cond_3

    .line 109
    const-string v0, "MessageLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging_MessageLogger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    :goto_1
    monitor-exit p0

    .line 115
    return-void

    .line 93
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:I

    .line 95
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->getLast()Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    move-result-object v0

    .line 96
    iput-object p1, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->finishDispatch:Ljava/lang/String;

    .line 97
    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    iput-wide v2, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdFinish:J

    .line 98
    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:J

    iget-wide v4, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeElapsed:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationElapsed:J

    .line 99
    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:J

    iget-wide v4, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeUp:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationUp:J

    .line 100
    iget-wide v2, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationElapsed:J

    iput-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallTime:J

    .line 101
    iget-wide v2, v0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationElapsed:J

    const-wide/32 v4, 0x30d40

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v1}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->add()Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->copy(Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_3
    :try_start_1
    const-string v0, "MessageLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging_MessageLogger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setInitStr(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    return-void
.end method
