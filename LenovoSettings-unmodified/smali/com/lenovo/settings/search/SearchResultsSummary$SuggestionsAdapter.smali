.class Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsAdapter"
.end annotation


# static fields
.field private static final COLUMN_SUGGESTION_QUERY:I = 0x0

.field private static final COLUMN_SUGGESTION_TIMESTAMP:I = 0x1


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 467
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 465
    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    .line 469
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 470
    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    .line 471
    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    const/4 v0, 0x0

    .line 494
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "paramInt"    # I

    .prologue
    .line 499
    iget-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "query":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;

    invoke-direct {v1, v0}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;-><init>(Ljava/lang/String;)V

    .line 504
    .end local v0    # "query":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 509
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 514
    iget-boolean v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    .line 515
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "this should only be called when the cursor is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 518
    :cond_0
    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 519
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 524
    :cond_1
    if-nez p2, :cond_2

    .line 525
    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400a2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 530
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 532
    .local v1, "query":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;

    .line 533
    .local v0, "item":Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;
    const-string v3, "clear_history"

    iget-object v4, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 534
    const v3, 0x7f0c02e5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 539
    :goto_1
    return-object v2

    .line 527
    .end local v0    # "item":Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;
    .end local v1    # "query":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 536
    .restart local v0    # "item":Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;
    .restart local v1    # "query":Landroid/widget/TextView;
    :cond_3
    iget-object v3, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 474
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 486
    :goto_0
    return-object v0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    .line 478
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    .line 479
    if-eqz p1, :cond_1

    .line 480
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    .line 481
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 483
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    .line 484
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
