.class abstract Lde/greenrobot/dao/query/AbstractQueryData;
.super Ljava/lang/Object;


# instance fields
.field final dao:Lde/greenrobot/dao/AbstractDao;

.field final initialValues:[Ljava/lang/String;

.field final queriesForThreads:Landroid/util/SparseArray;

.field final sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/AbstractQueryData;, "Lde/greenrobot/dao/query/AbstractQueryData<TT;TQ;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/greenrobot/dao/query/AbstractQueryData;->dao:Lde/greenrobot/dao/AbstractDao;

    iput-object p2, p0, Lde/greenrobot/dao/query/AbstractQueryData;->sql:Ljava/lang/String;

    iput-object p3, p0, Lde/greenrobot/dao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected abstract createQuery()Lde/greenrobot/dao/query/AbstractQuery;
.end method

.method forCurrentThread()Lde/greenrobot/dao/query/AbstractQuery;
    .locals 7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iget-object v2, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/query/AbstractQuery;

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lde/greenrobot/dao/query/AbstractQueryData;->gc()V

    invoke-virtual {p0}, Lde/greenrobot/dao/query/AbstractQueryData;->createQuery()Lde/greenrobot/dao/query/AbstractQuery;

    move-result-object v0

    iget-object v3, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    monitor-exit v2

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lde/greenrobot/dao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lde/greenrobot/dao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lde/greenrobot/dao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method forCurrentThread(Lde/greenrobot/dao/query/AbstractQuery;)Lde/greenrobot/dao/query/AbstractQuery;
    .locals 4

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/AbstractQueryData;, "Lde/greenrobot/dao/query/AbstractQueryData<TT;TQ;>;"
    .local p1, "query":Lde/greenrobot/dao/query/AbstractQuery;, "TQ;"
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p1, Lde/greenrobot/dao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lde/greenrobot/dao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    iget-object v1, p1, Lde/greenrobot/dao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    iget-object v2, p0, Lde/greenrobot/dao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local p1    # "query":Lde/greenrobot/dao/query/AbstractQuery;, "TQ;"
    :goto_0
    return-object p1

    .restart local p1    # "query":Lde/greenrobot/dao/query/AbstractQuery;, "TQ;"
    :cond_0
    invoke-virtual {p0}, Lde/greenrobot/dao/query/AbstractQueryData;->forCurrentThread()Lde/greenrobot/dao/query/AbstractQuery;

    move-result-object p1

    goto :goto_0
.end method

.method gc()V
    .locals 4

    iget-object v2, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    iget-object v3, p0, Lde/greenrobot/dao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
