.class final Lcom/lenovo/lps/reaper/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/c;


# direct methods
.method private constructor <init>(Lcom/lenovo/lps/reaper/sdk/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/f;->a:Lcom/lenovo/lps/reaper/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lps/reaper/sdk/c;Lcom/lenovo/lps/reaper/sdk/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/f;-><init>(Lcom/lenovo/lps/reaper/sdk/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f;->a:Lcom/lenovo/lps/reaper/sdk/c;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/c;->b(Lcom/lenovo/lps/reaper/sdk/c;)Lcom/lenovo/lps/reaper/sdk/f/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f;->a:Lcom/lenovo/lps/reaper/sdk/c;

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/f/a;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/f/a;-><init>()V

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Lcom/lenovo/lps/reaper/sdk/c;Lcom/lenovo/lps/reaper/sdk/f/a;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f;->a:Lcom/lenovo/lps/reaper/sdk/c;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/c;->b(Lcom/lenovo/lps/reaper/sdk/c;)Lcom/lenovo/lps/reaper/sdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f;->a:Lcom/lenovo/lps/reaper/sdk/c;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/c;->b(Lcom/lenovo/lps/reaper/sdk/c;)Lcom/lenovo/lps/reaper/sdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/f;->a:Lcom/lenovo/lps/reaper/sdk/c;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Lcom/lenovo/lps/reaper/sdk/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/f/a;->a(Landroid/content/Context;)V

    return-void
.end method
