.class public Lcom/lenovo/lps/reaper/sdk/i/t;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lenovo/lps/reaper/sdk/i/t;


# instance fields
.field private b:Lcom/lenovo/lps/reaper/sdk/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/t;->a:Lcom/lenovo/lps/reaper/sdk/i/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/t;->b:Lcom/lenovo/lps/reaper/sdk/b/c;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/t;->b:Lcom/lenovo/lps/reaper/sdk/b/c;

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/i/t;
    .locals 2

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/t;->a:Lcom/lenovo/lps/reaper/sdk/i/t;

    if-nez v0, :cond_1

    const-class v1, Lcom/lenovo/lps/reaper/sdk/i/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/t;->a:Lcom/lenovo/lps/reaper/sdk/i/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/i/t;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/i/t;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/t;->a:Lcom/lenovo/lps/reaper/sdk/i/t;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/t;->a:Lcom/lenovo/lps/reaper/sdk/i/t;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/t;->b:Lcom/lenovo/lps/reaper/sdk/b/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->ag()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/i/t;->b:Lcom/lenovo/lps/reaper/sdk/b/c;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/b/c;->af()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/i/t;->b:Lcom/lenovo/lps/reaper/sdk/b/c;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/b/c;->l()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

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
