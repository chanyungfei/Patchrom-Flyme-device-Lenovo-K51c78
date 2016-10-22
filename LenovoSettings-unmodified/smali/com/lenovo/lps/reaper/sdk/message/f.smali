.class public final Lcom/lenovo/lps/reaper/sdk/message/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:[J

.field private static b:Lcom/lenovo/lps/reaper/sdk/message/f;


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private e:Landroid/content/Context;

.field private f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

.field private g:J

.field private h:I

.field private i:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/message/f;->a:[J

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/f;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/message/f;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/message/f;->b:Lcom/lenovo/lps/reaper/sdk/message/f;

    return-void

    :array_0
    .array-data 8
        0x5
        0x3c
        0x78
        0x10e
        0x32a
        0x97e
        0x1c7a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->h:I

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/message/f;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/message/f;->b:Lcom/lenovo/lps/reaper/sdk/message/f;

    return-object v0
.end method

.method private a(Lcom/lenovo/lps/reaper/sdk/message/g;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/message/g;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/message/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u0001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/message/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PushGlobalMessage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "PushGlobalMessage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PushAppMessage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const-string v0, "\u0001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    array-length v1, v0

    if-le v1, v5, :cond_0

    aget-object v5, v0, v5

    :goto_0
    array-length v1, v0

    if-le v1, v6, :cond_1

    aget-object v6, v0, v6

    :goto_1
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/c;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->e:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/lps/reaper/sdk/message/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/c;->a()V

    return-void

    :cond_0
    const-string v5, ""

    goto :goto_0

    :cond_1
    const-string v6, ""

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x3

    const-string v0, "\u0001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-gt v1, v5, :cond_0

    const-string v0, "MsgManager"

    const-string v1, "message is invalid."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    aget-object v5, v0, v5

    const/4 v8, 0x0

    array-length v1, v0

    const/4 v6, 0x5

    if-ne v1, v6, :cond_2

    const/4 v1, 0x4

    :try_start_0
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/b;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/message/b;-><init>(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/b;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/message/b;-><init>(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/b;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MsgManager"

    const-string v1, "time of message is invalid."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v8

    goto :goto_1
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->h:I

    return-void
.end method

.method private g()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/message/f;->a:[J

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->h:I

    aget-wide v2, v2, v3

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/message/f;->a:[J

    aget-wide v4, v1, v0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private i()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/e/n;->o()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->p()Z

    move-result v0

    return v0
.end method

.method private k()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u0001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Lcom/lenovo/lps/reaper/sdk/message/g;

    invoke-direct {v5, v1, v3, v0}, Lcom/lenovo/lps/reaper/sdk/message/g;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->g:J

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->h:I

    const-string v0, "Msg"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->i:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->k()V

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->e:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    instance-of v0, v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;->onMessageTaskFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/message/f;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->f()V

    const-string v0, "MsgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "category: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MsgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "\u0001"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/message/f;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/message/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/message/f;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MsgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message parse error. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/message/f;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/message/g;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/g;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    instance-of v0, v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;->onDownloadAllMessages(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    if-nez v2, :cond_3

    move v3, v1

    :goto_1
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->i()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->e()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/message/e;

    invoke-direct {v2, v3}, Lcom/lenovo/lps/reaper/sdk/message/e;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    const-string v0, "Message"

    const-string v1, "Message Upload Task!"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v3, v0

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    instance-of v0, v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;

    if-nez v0, :cond_2

    const-string v0, "MsgManager"

    const-string v1, "not implements interface OnMsgListenerExt"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/message/a;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/message/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    instance-of v0, v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerExt;->onDownloadAllMessagesTaskFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/g;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/message/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/message/f;->a(Lcom/lenovo/lps/reaper/sdk/message/g;)V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/f;->f()V

    return-void
.end method

.method public c()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->g:J

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->h:I

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->h:I

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/message/f;->a:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/message/f;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->h:I

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
