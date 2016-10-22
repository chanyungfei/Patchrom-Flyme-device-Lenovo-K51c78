.class public abstract Lcom/lenovo/lps/reaper/sdk/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/a;->b:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/a;->b:Z

    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/h/a;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/lenovo/lps/reaper/sdk/h/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/a;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isPermitReportData()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AbstractReaperHttpRequestTask"

    const-string v1, "traffic is not permitted."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network traffic is not permitted"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AbstractReaperHttpRequestTask"

    const-string v1, "network is not ok."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network is offline"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/h/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AbstractReaperHttpRequestTask"

    const-string v1, "not ready."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/h/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/f/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->W()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "network traffic when screen off is not permitted."

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/h/a;->a()V

    goto :goto_0
.end method
