.class Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearSearchQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/SearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p2, "x1"    # Lcom/lenovo/settings/search/SearchResultsSummary$1;

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/search/Index;->clearSuggestions()V

    .line 862
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 856
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->showSomeSuggestions()V

    .line 868
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 856
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
