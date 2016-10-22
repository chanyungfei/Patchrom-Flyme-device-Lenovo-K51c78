.class public Lcom/lenovo/lps/reaper/sdk/i/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lenovo/lps/reaper/sdk/i/p;


# instance fields
.field private b:Lcom/lenovo/lps/a/a/a;

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/p;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/p;->b:Lcom/lenovo/lps/a/a/a;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/i/q;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/i/q;-><init>(Lcom/lenovo/lps/reaper/sdk/i/p;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/p;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/i/p;)Lcom/lenovo/lps/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/p;->b:Lcom/lenovo/lps/a/a/a;

    return-object v0
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/i/p;
    .locals 2

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/p;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    if-nez v0, :cond_1

    const-class v1, Lcom/lenovo/lps/reaper/sdk/i/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/p;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/i/p;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/i/p;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/p;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/p;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/i/p;Lcom/lenovo/lps/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/i/p;->b:Lcom/lenovo/lps/a/a/a;

    return-void
.end method


# virtual methods
.method public b()Lcom/lenovo/lps/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/p;->b:Lcom/lenovo/lps/a/a/a;

    return-object v0
.end method

.method public c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/p;->b:Lcom/lenovo/lps/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.lps.service"

    const-string v2, "com.lenovo.lps.service.send.SingleSendService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/i/p;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
