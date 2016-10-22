.class final Lcom/lenovo/lps/reaper/sdk/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/a;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/b;->a:Lcom/lenovo/lps/reaper/sdk/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "network listener onReceive."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/f/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->z()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/h/r;->a()Lcom/lenovo/lps/reaper/sdk/h/r;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/b;->a:Lcom/lenovo/lps/reaper/sdk/a;

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/a;->a(Lcom/lenovo/lps/reaper/sdk/a;)Lcom/lenovo/lps/reaper/sdk/h/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/h/q;->b()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/h/r;->a(ILjava/lang/Runnable;)V

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->dispatch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTrackerBuilder"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
