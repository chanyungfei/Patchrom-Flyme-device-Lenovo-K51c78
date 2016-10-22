.class public final Lcom/lenovo/lps/reaper/sdk/h/l;
.super Lcom/lenovo/lps/reaper/sdk/h/j;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/lenovo/lps/reaper/sdk/i/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/l;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/j;-><init>(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/db/Event;
    .locals 13

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v9

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/b/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__DETECT__"

    sget-object v4, Lcom/lenovo/lps/reaper/sdk/i/c;->a:Lcom/lenovo/lps/reaper/sdk/i/c;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/i/c;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getprop"

    const-string v6, "dns"

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/i/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/b/c;->U()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/b/c;->V()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v10

    const-string v11, "__DETECT__"

    sget-object v12, Lcom/lenovo/lps/reaper/sdk/i/c;->a:Lcom/lenovo/lps/reaper/sdk/i/c;

    invoke-virtual {v12}, Lcom/lenovo/lps/reaper/sdk/i/c;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/l;->c(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/lenovo/lps/reaper/sdk/db/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v4, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v3, "TRAFFIC_NOT_PERMITTED"

    const-string v2, "TRAFFIC_NOT_PERMITTED"

    const-string v1, "TRAFFIC_NOT_PERMITTED"

    const-string v0, "TRAFFIC_NOT_PERMITTED"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isPermitReportData()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "ping -c 3 %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ping -c 3 %s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "www.baidu.com"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "www.baidu.com"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v4, v6, p1, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x2

    const-string v5, "www.baidu.com"

    invoke-virtual {v4, v3, v5, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x3

    invoke-virtual {v4, v2, p1, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x4

    const-string v2, "www.baidu.com"

    invoke-virtual {v4, v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-object v4
.end method

.method private d(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/db/Event;
    .locals 13

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v9

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/b/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__DETECT__"

    sget-object v4, Lcom/lenovo/lps/reaper/sdk/i/c;->b:Lcom/lenovo/lps/reaper/sdk/i/c;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/i/c;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/b/c;->U()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/b/c;->V()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v10

    const-string v11, "__DETECT__"

    sget-object v12, Lcom/lenovo/lps/reaper/sdk/i/c;->b:Lcom/lenovo/lps/reaper/sdk/i/c;

    invoke-virtual {v12}, Lcom/lenovo/lps/reaper/sdk/i/c;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/l;->e(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/lenovo/lps/reaper/sdk/db/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 4

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v1, "TRAFFIC_NOT_PERMITTED"

    const-string v0, "TRAFFIC_NOT_PERMITTED"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isPermitReportData()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "www.baidu.com"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x2

    const-string v3, "www.baidu.com"

    invoke-virtual {v2, v1, v3, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-object v2
.end method


# virtual methods
.method protected a()Lcom/lenovo/lps/reaper/sdk/db/Event;
    .locals 2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/l;->b:Lcom/lenovo/lps/reaper/sdk/i/c;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/i/c;->a:Lcom/lenovo/lps/reaper/sdk/i/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/l;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/l;->b(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/db/Event;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/l;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/l;->d(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/db/Event;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/i/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/l;->b:Lcom/lenovo/lps/reaper/sdk/i/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/l;->a:Ljava/lang/String;

    return-void
.end method
