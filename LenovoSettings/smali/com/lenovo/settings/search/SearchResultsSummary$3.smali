.class Lcom/lenovo/settings/search/SearchResultsSummary$3;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 196
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 201
    add-int/lit8 p3, p3, -0x1

    .line 204
    if-gez p3, :cond_0

    .line 223
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;
    invoke-static {v3}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$400(Lcom/lenovo/settings/search/SearchResultsSummary;)Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    move-result-object v3

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->access$500(Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 211
    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    const/4 v4, 0x1

    # setter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z
    invoke-static {v3, v4}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$602(Lcom/lenovo/settings/search/SearchResultsSummary;Z)Z

    .line 212
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "item":Ljava/lang/String;
    const-string v3, "clear_history"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    new-instance v3, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;

    iget-object v4, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # setter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$802(Lcom/lenovo/settings/search/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v3}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$900(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$800(Lcom/lenovo/settings/search/SearchResultsSummary;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SearchResultsSummary"

    const-string v4, "This have NullPointException"

    invoke-static {v3, v4, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
