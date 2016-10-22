.class final Lcom/lenovo/lps/reaper/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/c;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/e;->a:Lcom/lenovo/lps/reaper/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e;->a:Lcom/lenovo/lps/reaper/sdk/c;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/c;->c(Lcom/lenovo/lps/reaper/sdk/c;)Lcom/lenovo/lps/reaper/sdk/db/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->e()V

    return-void
.end method
