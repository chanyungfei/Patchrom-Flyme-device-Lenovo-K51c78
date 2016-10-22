.class final Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;
.super Ljava/lang/Thread;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadingSearchIndexThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/SearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p2, "x1"    # Lcom/lenovo/settings/search/SearchResultsSummary$1;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 846
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    .line 848
    .local v0, "index":Lcom/lenovo/settings/search/Index;
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/settings/search/Index;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    const-string v1, "SearchResultsSummary"

    const-string v2, "Waiting index data ready"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 852
    :catch_0
    move-exception v1

    goto :goto_0

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$1800(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 857
    return-void
.end method
