.class final Lcom/lenovo/lps/reaper/sdk/f/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/f/b;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/f/c;->a:Lcom/lenovo/lps/reaper/sdk/f/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x3

    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/c;->a:Lcom/lenovo/lps/reaper/sdk/f/b;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/f/b;->a(Lcom/lenovo/lps/reaper/sdk/f/b;)Z

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
