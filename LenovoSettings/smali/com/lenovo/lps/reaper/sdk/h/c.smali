.class public final Lcom/lenovo/lps/reaper/sdk/h/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/h/q;

.field private b:Lcom/lenovo/lps/reaper/sdk/db/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/c;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/c;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    return-void
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/h/q;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/c;->a:Lcom/lenovo/lps/reaper/sdk/h/q;

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v0, "AppStart Send Begin"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->J()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/c;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/c;->b:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/i/j;->a(II)[I

    move-result-object v2

    move v0, v1

    :goto_0
    aget v3, v2, v1

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    aget v3, v2, v6

    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AppStart Send level0 = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v2, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/h/c;->a:Lcom/lenovo/lps/reaper/sdk/h/q;

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v4, v5, v1}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/i/i;Z)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/h/c;->a:Lcom/lenovo/lps/reaper/sdk/h/q;

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v4, v5, v1}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/i/i;Z)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
