.class public final Lcom/lenovo/lps/reaper/sdk/a;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/lenovo/lps/reaper/sdk/a;


# instance fields
.field private a:Z

.field private b:Lcom/lenovo/lps/reaper/sdk/d/c;

.field private c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

.field private d:Lcom/lenovo/lps/reaper/sdk/h/q;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/a;->f:Lcom/lenovo/lps/reaper/sdk/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/a;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/a;->f:Lcom/lenovo/lps/reaper/sdk/a;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/a;)Lcom/lenovo/lps/reaper/sdk/h/q;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->d:Lcom/lenovo/lps/reaper/sdk/h/q;

    return-object v0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/f;->a()Lcom/lenovo/lps/reaper/sdk/message/f;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method private i()V
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/a;->e()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/a;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/a;->c()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/a;->j()V

    return-void
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/h/n;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/h/n;-><init>()V

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/a;->d:Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/h/q;->b()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/h/o;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/h/o;-><init>()V

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/h/s;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/lps/reaper/sdk/h/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/BroadcastReceiver;)V
    .locals 2

    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "Setting On Network Listener..."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->a:Z

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/a;->b()V

    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "AnalyticsTrackerBuilder initialized"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/f/g;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/h/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/a;->d()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/a;->h()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/a;->i()V

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/b;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/b;-><init>(Lcom/lenovo/lps/reaper/sdk/a;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/a;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-direct {v0, p1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a()V

    return-void
.end method

.method protected c()V
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/q;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/h/q;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->d:Lcom/lenovo/lps/reaper/sdk/h/q;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->d:Lcom/lenovo/lps/reaper/sdk/h/q;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/db/a/c;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->d:Lcom/lenovo/lps/reaper/sdk/h/q;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/q;->a(Lcom/lenovo/lps/reaper/sdk/d/c;)V

    return-void
.end method

.method protected d()V
    .locals 2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected e()V
    .locals 2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/d/c;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/d/a;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/d/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(Lcom/lenovo/lps/reaper/sdk/d/a;)V

    return-void
.end method

.method public f()Lcom/lenovo/lps/reaper/sdk/db/a/c;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->c:Lcom/lenovo/lps/reaper/sdk/db/a/c;

    return-object v0
.end method

.method public g()Lcom/lenovo/lps/reaper/sdk/h/q;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a;->d:Lcom/lenovo/lps/reaper/sdk/h/q;

    return-object v0
.end method
