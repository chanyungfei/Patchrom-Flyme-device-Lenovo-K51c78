.class public final Lcom/lenovo/lps/reaper/sdk/h/i;
.super Lcom/lenovo/lps/reaper/sdk/h/a;


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/i/i;

.field private b:Lcom/lenovo/lps/reaper/sdk/d/c;

.field private c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/h/a;-><init>()V

    return-void
.end method

.method private b(Lcom/lenovo/lps/reaper/sdk/i/i;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a(Lcom/lenovo/lps/reaper/sdk/i/i;)[Lcom/lenovo/lps/reaper/sdk/db/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->a([Lcom/lenovo/lps/reaper/sdk/db/Event;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "EventReportTask"

    const-string v1, "no reported event."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->ab()V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a([Lcom/lenovo/lps/reaper/sdk/db/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EventReportTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "some error occured when dispatch. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/m;->a()Lcom/lenovo/lps/reaper/sdk/i/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/i/m;->d()I

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/m;->a()Lcom/lenovo/lps/reaper/sdk/i/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/i/m;->c()V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Lcom/lenovo/lps/reaper/sdk/i/i;)Z
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/e/n;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 6

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->j()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/b/c;->aa()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Lcom/lenovo/lps/reaper/sdk/i/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EventReportTask"

    const-string v1, "not ready for reporting."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no need send log: the priority of current network is traffic off."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/i;->c(Lcom/lenovo/lps/reaper/sdk/i/i;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/h/i;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EventReportTask"

    const-string v1, "current number of events is not enough."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no need send log: current storage number of events is not enough."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/i;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/h/i;->c()V

    goto :goto_0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/i/i;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/h/i;->d:Z

    return-void
.end method
