.class public final Lcom/lenovo/lps/reaper/sdk/h/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/d/c;

.field private b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

.field private c:Lcom/lenovo/lps/reaper/sdk/h/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/c;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/h/c;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/c;->a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/h/c;->a(Lcom/lenovo/lps/reaper/sdk/h/q;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/k;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/h/k;-><init>()V

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/h/k;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/k;->a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/h/k;->a(Lcom/lenovo/lps/reaper/sdk/h/q;)V

    return-object v0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/db/Event;Z)Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/j;

    invoke-direct {v0, p2}, Lcom/lenovo/lps/reaper/sdk/h/j;-><init>(Z)V

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/h/j;->a(Lcom/lenovo/lps/reaper/sdk/db/Event;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/j;->a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/h/j;->a(Lcom/lenovo/lps/reaper/sdk/h/q;)V

    return-object v0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/i/i;Z)Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/i;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/h/i;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/i;->a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/h/i;->a(Lcom/lenovo/lps/reaper/sdk/i/i;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->a:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/i;->a(Lcom/lenovo/lps/reaper/sdk/d/c;)V

    invoke-virtual {v0, p2}, Lcom/lenovo/lps/reaper/sdk/h/i;->a(Z)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/c;)Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/l;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/h/l;-><init>()V

    invoke-virtual {v0, p2}, Lcom/lenovo/lps/reaper/sdk/h/l;->a(Lcom/lenovo/lps/reaper/sdk/i/c;)V

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/h/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/l;->a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/h/l;->a(Lcom/lenovo/lps/reaper/sdk/h/q;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/d;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/message/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/message/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/lenovo/lps/reaper/sdk/message/d;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->a:Lcom/lenovo/lps/reaper/sdk/d/c;

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    return-void
.end method

.method public declared-synchronized b()Ljava/lang/Runnable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->c:Lcom/lenovo/lps/reaper/sdk/h/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/f;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/h/f;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->c:Lcom/lenovo/lps/reaper/sdk/h/f;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->c:Lcom/lenovo/lps/reaper/sdk/h/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/d;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/h/d;-><init>()V

    return-object v0
.end method

.method public d()Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/m;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/h/m;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/q;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/m;->a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V

    return-object v0
.end method
