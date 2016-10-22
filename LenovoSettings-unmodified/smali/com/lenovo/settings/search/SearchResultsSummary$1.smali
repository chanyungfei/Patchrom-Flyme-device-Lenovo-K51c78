.class Lcom/lenovo/settings/search/SearchResultsSummary$1;
.super Landroid/os/Handler;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$000(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$000(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$000(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # setter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$002(Lcom/lenovo/settings/search/SearchResultsSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->loadSearchContent()V

    .line 95
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # setter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$002(Lcom/lenovo/settings/search/SearchResultsSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # setter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$002(Lcom/lenovo/settings/search/SearchResultsSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    throw v0
.end method
