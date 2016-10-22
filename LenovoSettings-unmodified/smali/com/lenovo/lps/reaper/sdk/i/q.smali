.class final Lcom/lenovo/lps/reaper/sdk/i/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/i/p;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/i/p;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/i/q;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/q;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    invoke-static {p2}, Lcom/lenovo/lps/a/a/b;->a(Landroid/os/IBinder;)Lcom/lenovo/lps/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/p;->a(Lcom/lenovo/lps/reaper/sdk/i/p;Lcom/lenovo/lps/a/a/a;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/q;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/p;->a(Lcom/lenovo/lps/reaper/sdk/i/p;)Lcom/lenovo/lps/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "get binder success!"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const-string v0, "onServiceDisconnected"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/i/q;->a:Lcom/lenovo/lps/reaper/sdk/i/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/p;->a(Lcom/lenovo/lps/reaper/sdk/i/p;Lcom/lenovo/lps/a/a/a;)V

    return-void
.end method
