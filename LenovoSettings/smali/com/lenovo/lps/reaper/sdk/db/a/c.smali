.class public final Lcom/lenovo/lps/reaper/sdk/db/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Random;

.field private b:Lcom/lenovo/lps/reaper/sdk/db/a/a;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/lenovo/lps/reaper/sdk/db/a;

.field private e:Lcom/lenovo/lps/reaper/sdk/db/d;

.field private f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

.field private g:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a:Ljava/util/Random;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/a/a;

    invoke-direct {v0, p1}, Lcom/lenovo/lps/reaper/sdk/db/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b:Lcom/lenovo/lps/reaper/sdk/db/a/a;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b:Lcom/lenovo/lps/reaper/sdk/db/a/a;

    invoke-virtual {v0, p2}, Lcom/lenovo/lps/reaper/sdk/db/a/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/b;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b:Lcom/lenovo/lps/reaper/sdk/db/a/a;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/db/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/a;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->d:Lcom/lenovo/lps/reaper/sdk/db/a;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->d:Lcom/lenovo/lps/reaper/sdk/db/a;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a;->a()Lcom/lenovo/lps/reaper/sdk/db/d;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->e:Lcom/lenovo/lps/reaper/sdk/db/d;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->e:Lcom/lenovo/lps/reaper/sdk/db/d;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/d;->a()Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->e:Lcom/lenovo/lps/reaper/sdk/db/d;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/d;->b()Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->g:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->g:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->setDaoSession(Lcom/lenovo/lps/reaper/sdk/db/SessionDao;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->deleteInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public a([Lcom/lenovo/lps/reaper/sdk/db/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->deleteInTx([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/i/i;)[Lcom/lenovo/lps/reaper/sdk/db/Event;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Prio:Lde/greenrobot/dao/Property;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->limit(I)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method public b(Lcom/lenovo/lps/reaper/sdk/i/i;)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Prio:Lde/greenrobot/dao/Property;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->listLazy()Lde/greenrobot/dao/query/LazyList;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->close()V

    :cond_1
    throw v0
.end method

.method public b()Lcom/lenovo/lps/reaper/sdk/db/EventDao;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    return-object v0
.end method

.method public c()[Lcom/lenovo/lps/reaper/sdk/db/Event;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->limit(I)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method public d()I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->listLazy()Lde/greenrobot/dao/query/LazyList;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->close()V

    :cond_1
    throw v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->addSessionVisits()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->resetSessionVisits()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->deleteAll()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/a/c;->g:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;->deleteAll()V

    return-void
.end method
