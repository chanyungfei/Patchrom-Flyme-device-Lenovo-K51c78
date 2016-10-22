.class public Lcom/lenovo/lps/reaper/sdk/h/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

.field private b:Lcom/lenovo/lps/reaper/sdk/h/q;

.field private c:Lcom/lenovo/lps/reaper/sdk/db/Event;

.field private d:Z

.field private e:Lcom/lenovo/lps/reaper/sdk/db/a/c;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->a()Lcom/lenovo/lps/reaper/sdk/db/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->d:Z

    return-void
.end method

.method private a(II)V
    .locals 5

    const/4 v1, 0x3

    const/4 v4, -0x1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_0

    if-ne p1, v4, :cond_2

    if-ne p2, v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->ah()I

    move-result v1

    if-ne v1, v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->ah()I

    move-result v1

    if-eq v1, v4, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    const-string v1, "EventSaveTask"

    const-string v2, "waiting for checking service existing."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->ah()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->b(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "EventSaveTask"

    const-string v2, "InterruptedException when waiting for checking service existing."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized b()V
    .locals 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->J()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->d:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/t;->a()Lcom/lenovo/lps/reaper/sdk/i/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/i/t;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/f/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/f/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->W()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/t;->a()Lcom/lenovo/lps/reaper/sdk/i/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/i/t;->b()V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/b/c;->l()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/lenovo/lps/reaper/sdk/i/j;->a(IIJ)[I

    move-result-object v2

    move v1, v0

    :goto_0
    const/4 v3, 0x0

    aget v3, v2, v3

    if-lt v1, v3, :cond_2

    :goto_1
    const/4 v1, 0x1

    aget v1, v2, v1

    if-lt v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterVal Send level0 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->b:Lcom/lenovo/lps/reaper/sdk/h/q;

    sget-object v6, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/i/i;Z)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->b:Lcom/lenovo/lps/reaper/sdk/h/q;

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/i/i;Z)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/lenovo/lps/reaper/sdk/db/Event;)V
    .locals 5

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->J()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->b:Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getPriority()Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/i/i;Z)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    const-string v0, "In time send"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Lcom/lenovo/lps/reaper/sdk/db/Event;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->c:Lcom/lenovo/lps/reaper/sdk/db/Event;

    return-object v0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/db/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->c:Lcom/lenovo/lps/reaper/sdk/db/Event;

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V
    .locals 1

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/h/q;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->b:Lcom/lenovo/lps/reaper/sdk/h/q;

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v1, 0x1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->X()Z

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isPermitReportData()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    const-string v0, "event not save when sdk disabled"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/h/j;->a()Lcom/lenovo/lps/reaper/sdk/db/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->c:Lcom/lenovo/lps/reaper/sdk/db/Event;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->c:Lcom/lenovo/lps/reaper/sdk/db/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->c:Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->check()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->d:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    const-string v0, "EventSaveTask"

    const-string v1, "generate event fail."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->c:Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->a(Lcom/lenovo/lps/reaper/sdk/db/Event;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EventCache is Full: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Event flush interval is Over 1 minute: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->c:Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b(Lcom/lenovo/lps/reaper/sdk/db/Event;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_4
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->e()V

    move v0, v1

    :goto_2
    if-eqz v0, :cond_c

    const-string v0, "flush event success!"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->g()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->o()I

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/e/n;->l()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/lenovo/lps/reaper/sdk/h/j;->a(II)V

    if-eq v2, v1, :cond_5

    if-ne v2, v3, :cond_7

    if-ne v0, v1, :cond_7

    :cond_5
    const-string v0, "App Start Send, Now not send"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->a:Lcom/lenovo/lps/reaper/sdk/db/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/b;->c()Z

    move-result v0

    goto :goto_2

    :cond_7
    if-eq v2, v4, :cond_8

    if-ne v2, v3, :cond_9

    if-ne v0, v4, :cond_9

    :cond_8
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->ah()I

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->b:Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/h/q;->d()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    const-string v0, "Single Process Send."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-eq v2, v5, :cond_a

    if-ne v2, v3, :cond_b

    if-ne v0, v5, :cond_b

    :cond_a
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/h/j;->b()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/j;->c:Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/j;->b(Lcom/lenovo/lps/reaper/sdk/db/Event;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "flush event error!"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "no need send log: current cache number of events is not enough."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
