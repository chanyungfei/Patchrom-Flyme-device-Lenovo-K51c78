.class public final Lcom/lenovo/lps/reaper/sdk/h/k;
.super Lcom/lenovo/lps/reaper/sdk/h/j;


# static fields
.field private static a:Lcom/lenovo/lps/reaper/sdk/f/e;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/k;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/j;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/lenovo/lps/reaper/sdk/db/Event;
    .locals 13

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/h;->a()Lcom/lenovo/lps/reaper/sdk/f/h;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/f/h;->a(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/a/b;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/a/b;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/a/b;->a()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/a/b;->b()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/a/b;->b()J

    move-result-wide v2

    :cond_0
    move-wide v6, v2

    move-wide v8, v0

    :goto_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    const-string v1, "__INITIAL__"

    const-string v2, "initial"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v10, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v12

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    if-nez v0, :cond_2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/f/e;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    :cond_2
    new-instance v11, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v11}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    const-string v0, "cm"

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/f/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cc"

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/f/e;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "maf"

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/f/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mif"

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/f/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "tm"

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/f/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "rt"

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/f/e;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ss"

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/f/e;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "sss"

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/h/k;->a:Lcom/lenovo/lps/reaper/sdk/f/e;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/f/e;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/Event;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/h/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/lenovo/lps/reaper/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__INITIAL__"

    const-string v4, "initial"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    long-to-double v6, v6

    invoke-virtual {v12}, Lcom/lenovo/lps/reaper/sdk/b/c;->U()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lcom/lenovo/lps/reaper/sdk/b/c;->V()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v11}, Lcom/lenovo/lps/reaper/sdk/db/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-object v0

    :cond_3
    move-wide v0, v2

    goto/16 :goto_0

    :cond_4
    move-wide v6, v2

    move-wide v8, v2

    goto/16 :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/k;->b:Landroid/content/Context;

    return-void
.end method
