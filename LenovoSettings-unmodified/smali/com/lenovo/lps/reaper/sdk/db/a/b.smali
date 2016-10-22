.class public final Lcom/lenovo/lps/reaper/sdk/db/a/b;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/lenovo/lps/reaper/sdk/db/a/b;


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/b/c;

.field private b:Ljava/util/List;

.field private c:Lcom/lenovo/lps/reaper/sdk/db/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/b;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->d:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->a:Lcom/lenovo/lps/reaper/sdk/b/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/db/a/b;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->d:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    return-object v0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/lenovo/lps/reaper/sdk/db/Event;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->a:Lcom/lenovo/lps/reaper/sdk/b/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->Y()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/lenovo/lps/reaper/sdk/db/Event;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getPriority()Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EventCache"

    const-string v1, "event has been flushed!"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b()Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->d()I

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->m()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->k()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/b/c;->ac()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->ad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
