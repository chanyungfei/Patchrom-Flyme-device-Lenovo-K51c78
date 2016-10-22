.class public Lcom/lenovo/settings/search/SearchResultsSummary;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/search/SearchResultsSummary$ClearSearchQueryTask;,
        Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;,
        Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;,
        Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;,
        Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;
    }
.end annotation


# static fields
.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final SAVE_KEY_SHOW_RESULTS:Ljava/lang/String; = ":search:show_results"

.field private static final TAG:Ljava/lang/String; = "SearchResultsSummary"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mLoadingThread:Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 863
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/settings/search/SearchResultsSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/settings/search/SearchResultsSummary;)Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/settings/search/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/settings/search/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/settings/search/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/settings/search/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/search/SearchResultsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/settings/search/SearchResultsSummary;)Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/settings/search/SearchResultsSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/settings/search/SearchResultsSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/settings/search/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 418
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 420
    iput-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 424
    iput-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    .line 426
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 378
    iput-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    .line 380
    :cond_0
    invoke-direct {p0, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 381
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 361
    iput-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    .line 363
    :cond_0
    invoke-direct {p0, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 364
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 403
    const/4 v3, 0x0

    .line 413
    :goto_0
    return-object v3

    .line 406
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 408
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 409
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private saveQueryToDatabase()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/Index;->addSavedQuery(Ljava/lang/String;)J

    .line 322
    :cond_0
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_2

    .line 389
    new-instance v1, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 394
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->setQuery(Ljava/lang/String;)V

    .line 395
    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 309
    :cond_0
    return-void

    .line 307
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 369
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 373
    .end local v0    # "oldCursor":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    :cond_0
    return-void

    .line 313
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 439
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->clearAllTasks()V

    .line 440
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0, v3}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 442
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    .line 446
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->clearAllTasks()V

    .line 430
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 431
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    .line 435
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected loadSearchContent()V
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->access$200(Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSearchResults()V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->showSomeSuggestions()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    .line 76
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string v0, ":search:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    .line 81
    :cond_0
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/search/SearchResultsSummary$1;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-static {}, Lcom/lenovo/settings/LPSReaper;->trackSearchEvent()V

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 103
    const v1, 0x7f04009e

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 106
    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 107
    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 108
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/lenovo/settings/search/SearchResultsSummary$2;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/search/SearchResultsSummary$2;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    const v2, 0x7f04009f

    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 194
    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 195
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/lenovo/settings/search/SearchResultsSummary$3;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/search/SearchResultsSummary$3;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    const v2, 0x7f0400a0

    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 230
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 279
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    .line 280
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    .line 282
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 283
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    .line 284
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    .line 286
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 288
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 289
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingThread:Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingThread:Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

    invoke-virtual {v0}, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;->interrupt()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingThread:Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

    .line 260
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 325
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    .line 333
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 334
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSuggestions()V

    .line 340
    :goto_0
    return v2

    .line 336
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    .line 337
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 338
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 344
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 345
    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 347
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSearchResults()V

    .line 348
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->saveQueryToDatabase()V

    .line 349
    return v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 235
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 237
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/search/Index;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->loadSearchContent()V

    .line 250
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 241
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c02e1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingThread:Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

    if-nez v0, :cond_2

    .line 246
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingThread:Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingThread:Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

    invoke-virtual {v0}, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;->start()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    const-string v0, ":search:show_results"

    iget-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 272
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->clearSuggestions()V

    .line 273
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->clearResults()V

    .line 274
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 293
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 354
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSuggestions()V

    .line 356
    return-void
.end method
