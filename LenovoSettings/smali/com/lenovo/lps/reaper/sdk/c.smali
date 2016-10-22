.class public final Lcom/lenovo/lps/reaper/sdk/c;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/lenovo/lps/reaper/sdk/c;


# instance fields
.field private final a:Lcom/lenovo/lps/reaper/sdk/a;

.field private c:Lcom/lenovo/lps/reaper/sdk/f/h;

.field private d:Lcom/lenovo/lps/reaper/sdk/e/n;

.field private e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

.field private f:Landroid/content/Context;

.field private g:Lcom/lenovo/lps/reaper/sdk/h/q;

.field private h:I

.field private i:Z

.field private j:Lcom/lenovo/lps/reaper/sdk/f/a;

.field private k:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/c;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/c;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/c;->b:Lcom/lenovo/lps/reaper/sdk/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/h;->a()Lcom/lenovo/lps/reaper/sdk/f/h;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->h:I

    iput-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->i:Z

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->k:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a;->a()Lcom/lenovo/lps/reaper/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->a:Lcom/lenovo/lps/reaper/sdk/a;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    return-object v0
.end method

.method static a()Lcom/lenovo/lps/reaper/sdk/c;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/c;->b:Lcom/lenovo/lps/reaper/sdk/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    const-string v0, "AnalyticsTracker"

    const-string v1, "Each length of parameters value should less than 128 character, or will be CUT"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/c;Lcom/lenovo/lps/reaper/sdk/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/c;->j:Lcom/lenovo/lps/reaper/sdk/f/a;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/c;Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;I)V
    .locals 10

    const/16 v9, 0x1000

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "throwable is null"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v0, v8

    :goto_1
    if-lt v0, v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v9, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v1, "__THROWABLE__"

    int-to-double v4, p2

    sget-object v6, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto :goto_0

    :cond_4
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method static synthetic b(Lcom/lenovo/lps/reaper/sdk/c;)Lcom/lenovo/lps/reaper/sdk/f/a;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->j:Lcom/lenovo/lps/reaper/sdk/f/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    .locals 12

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->s()V

    const-string v0, "server config analytics sdk disabled"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p7, :cond_4

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->k:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->k:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->copy()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->s()V

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/a;->g(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v10

    if-nez v10, :cond_2

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v10

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/n;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_3

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    :cond_3
    const-string v1, "interOsVersion"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "extOsVersion"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v11, v0

    :goto_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v6

    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x80

    invoke-direct {p0, p2, v0}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x1400

    invoke-direct {p0, p3, v0}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/Event;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/c;->U()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/c;->V()Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v11}, Lcom/lenovo/lps/reaper/sdk/db/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->check()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->s()V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p7 .. p7}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->copy()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/db/Event;Z)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz p8, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    move-object v11, v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/lenovo/lps/reaper/sdk/c;)Lcom/lenovo/lps/reaper/sdk/db/a/c;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "analytics sdk is initializing"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, "----########################----"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->f(Ljava/lang/String;)V

    const-string v0, "[sdk instruction]"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->g(Ljava/lang/String;)V

    const-string v0, "thanks for using Avatar analytics sdk!"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "sdk release page:"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "http://data.lenovomm.com/avatar/document.html"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "[log instruction]"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->g(Ljava/lang/String;)V

    const-string v0, "[call] means you called the api"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "[status] report the analytics sdk status"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "[info] some useful info, for instance, the manifest config"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "[warning] attention please, which may cause the unexpected result"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "[error] something error happened, fix it"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "[debug instraction]"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->g(Ljava/lang/String;)V

    const-string v0, "call api: showLog(true) , then you can watch the \"AnalyticsTrackerLog\" Tag for debug infomation."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "you can see the detail log in lenovo office net without config \"lenovo:customReaperServer\" in manifest. please visit:"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "http://realtime.data.lenovomm.com/bugatti/"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->h(Ljava/lang/String;)V

    const-string v0, "----########################----"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->a:Lcom/lenovo/lps/reaper/sdk/a;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->k()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->n()V

    const-string v0, "initialize finished"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "error occured when initital. check configuration please."

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/Exception;)V

    const-string v1, "AnalyticsTracker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->a:Lcom/lenovo/lps/reaper/sdk/a;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a;->f()Lcom/lenovo/lps/reaper/sdk/db/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->a:Lcom/lenovo/lps/reaper/sdk/a;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a;->g()Lcom/lenovo/lps/reaper/sdk/h/q;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/c;->b()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->o()I

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/e/n;->l()I

    move-result v1

    if-eq v1, v3, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/h/q;->a()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, -0x1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->o()I

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/e/n;->l()I

    move-result v1

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->ah()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/h/q;->c()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/d;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/lps/reaper/sdk/d;-><init>(Lcom/lenovo/lps/reaper/sdk/c;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/h/e;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/h/e;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/h/b;

    invoke-direct {v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/b;-><init>(Z)V

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/f;->a()Lcom/lenovo/lps/reaper/sdk/message/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/f;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "network is offline"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 4

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->k()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->k()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "server config analytics sdk disabled"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "analytics sdk need initialize first"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "trackInitialEvent: category=__INITIAL__"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->f()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/e;

    invoke-direct {v2, p0}, Lcom/lenovo/lps/reaper/sdk/e;-><init>(Lcom/lenovo/lps/reaper/sdk/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->j()V

    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->k:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clear()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/c;->a(I)V

    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->k:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->h:I

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->j()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->r()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->m()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->q()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->l()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/c/a;->a(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c/a;->a()V

    return-void
.end method

.method a(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/f;->a()Lcom/lenovo/lps/reaper/sdk/message/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/message/f;->a(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "eventAction is empty"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/f/h;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;D)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "eventAction is empty"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    const-string v0, "dataLength < 0"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "__DURA__"

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/f/h;->d(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;DJ)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "eventAction is empty"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    const-string v0, "dataLength < 0"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    const-string v0, "duration < 0"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "__DURA__"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;J)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "eventAction is empty"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    const-string v0, "duration < 0"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "__DURA__"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/c;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->k()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->d:Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->k()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "server config analytics sdk disabled"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "analytics sdk need initialize first"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "detectUrl is empty"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    .locals 10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "analytics sdk need initialize first"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->s()V

    :goto_0
    return-void

    :cond_0
    if-nez p8, :cond_1

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->o()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->p()V

    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/lenovo/lps/reaper/sdk/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->r()V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/f/h;->a(Ljava/lang/String;)V

    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {v6, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtras(Ljava/util/Map;)V

    :cond_1
    const/4 v0, 0x2

    const-string v1, "PAGE_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/f/h;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    const-string v1, "FRAME_PAGE"

    invoke-virtual {v6, v0, v1, p2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const/4 v0, 0x4

    const-string v1, "USER_ACTION_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/f/h;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v1, "__PAGEVIEW__"

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    return-void
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method a(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->b(Z)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/c/a;->a(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c/a;->b()V

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->i:Z

    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->j()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->r()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->m()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->q()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->l()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/c/a;->a(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c/a;->a()V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "eventAction is empty"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "__DURA__"

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/f/h;->d(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c;->j()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {v6, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtras(Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/f/h;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x2

    const-string v1, "PAGE_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/f/h;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    const-string v1, "FRAME_PAGE"

    invoke-virtual {v6, v0, v1, p2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string v1, "__PAGEVIEW__"

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    return-void
.end method

.method b(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/db/Event;Z)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->i:Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->g()V

    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {v6, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtras(Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x4

    const-string v1, "USER_ACTION_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/f/h;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v1, "__NEWUA__"

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    return-void
.end method

.method c(Z)V
    .locals 0

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Z)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method d(Z)V
    .locals 0

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/n;->a(Z)V

    return-void
.end method

.method d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->i:Z

    return v0
.end method

.method e()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "has no permission of tracking usage data."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "trackAppUsageData only can be invoked once per 12 hours."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/lps/reaper/sdk/f;-><init>(Lcom/lenovo/lps/reaper/sdk/c;Lcom/lenovo/lps/reaper/sdk/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->e()V

    goto :goto_0
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method e(Z)V
    .locals 3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trackInstalledApps only can be invoked once per day."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/g;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/lps/reaper/sdk/g;-><init>(Lcom/lenovo/lps/reaper/sdk/c;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->c()V

    goto :goto_0
.end method

.method f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/f;->a()Lcom/lenovo/lps/reaper/sdk/message/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/f;->a(Z)V

    return-void
.end method

.method f(Z)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "analytics sdk need initialize first"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v1, v2, p1}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/i/i;Z)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->g:Lcom/lenovo/lps/reaper/sdk/h/q;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v1, v2, p1}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/i/i;Z)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method g()V
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/f;->a()Lcom/lenovo/lps/reaper/sdk/message/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/f;->b()V

    return-void
.end method

.method g(Z)V
    .locals 3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/h/b;

    invoke-direct {v2, p1}, Lcom/lenovo/lps/reaper/sdk/h/b;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "network is offline"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method h()I
    .locals 5

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->c:Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "analytics sdk need initialize first"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c;->e:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v1

    const-string v2, "AnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "num1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "num2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method h(Z)V
    .locals 4

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/h/g;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/h/g;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->r()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->r()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/h/g;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c;->f:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/h/g;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "network is offline"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method i()J
    .locals 2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->h()J

    move-result-wide v0

    return-wide v0
.end method
