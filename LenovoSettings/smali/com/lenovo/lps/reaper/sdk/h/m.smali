.class public final Lcom/lenovo/lps/reaper/sdk/h/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/db/a/c;

.field private b:Ljava/util/List;

.field private c:Lcom/lenovo/lps/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->a:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->c:Lcom/lenovo/lps/a/a/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->a:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/p;->a()Lcom/lenovo/lps/reaper/sdk/i/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/i/p;->c()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/p;->a()Lcom/lenovo/lps/reaper/sdk/i/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/i/p;->b()Lcom/lenovo/lps/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->c:Lcom/lenovo/lps/a/a/a;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->c:Lcom/lenovo/lps/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->a:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->c()[Lcom/lenovo/lps/reaper/sdk/db/Event;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process has sent finish + "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->a:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v6, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    :goto_1
    return-void

    :cond_1
    :try_start_1
    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->c:Lcom/lenovo/lps/a/a/a;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/db/Event;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lenovo/lps/a/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->a:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v6, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->a:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v6, p0, Lcom/lenovo/lps/reaper/sdk/h/m;->b:Ljava/util/List;

    throw v0
.end method
