.class public abstract Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;
.super Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

.field private mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z

.field private mShowIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 71
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 76
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 80
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 81
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 85
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 86
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    return-void
.end method

.method private addIndicatorViews()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v8, 0x0

    const v7, 0x9080094

    const/4 v6, -0x2

    .line 338
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getMode()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    .line 339
    .local v0, "mode":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 341
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v3, :cond_2

    .line 343
    new-instance v3, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    .line 344
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 346
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 347
    const/16 v3, 0x35

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 348
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v3, :cond_3

    .line 358
    new-instance v3, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    .line 359
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 361
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 362
    const/16 v3, 0x55

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 363
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 350
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 353
    iput-object v8, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v3, :cond_1

    .line 367
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 368
    iput-object v8, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_1
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p0, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "newLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_0

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .restart local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 49
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 51
    .restart local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->isPullToRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFirstItemVisible()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 377
    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 379
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    :cond_0
    const-string v2, "PullToRefresh"

    const-string v4, "isFirstItemVisible. Empty View."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 402
    :goto_0
    return v2

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 395
    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 396
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 397
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getTop()I

    move-result v2

    if-lt v5, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :cond_3
    move v2, v4

    .line 402
    goto :goto_0
.end method

.method private isLastItemVisible()Z
    .locals 10

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 406
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 408
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 410
    :cond_0
    const-string v5, "PullToRefresh"

    const-string v7, "isLastItemVisible. Empty View."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 438
    :goto_0
    return v5

    .line 414
    :cond_1
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 415
    .local v2, "lastItemPosition":I
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 418
    .local v4, "lastVisiblePosition":I
    const-string v5, "PullToRefresh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isLastItemVisible. Last Item Position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Last Visible Pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    add-int/lit8 v5, v2, -0x1

    if-lt v4, v5, :cond_3

    .line 430
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .line 431
    .local v1, "childIndex":I
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 432
    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 433
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I

    move-result v5

    if-gt v8, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_0

    .end local v1    # "childIndex":I
    .end local v3    # "lastVisibleChild":Landroid/view/View;
    :cond_3
    move v5, v7

    .line 438
    goto :goto_0
.end method

.method private removeIndicatorViews()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 444
    iput-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 449
    iput-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    .line 451
    :cond_1
    return-void
.end method

.method private updateIndicatorViewsVisibility()V
    .locals 1

    .prologue
    .line 454
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->show()V

    .line 466
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->show()V

    .line 477
    :cond_1
    :goto_1
    return-void

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    goto :goto_1
.end method


# virtual methods
.method public getShowIndicator()Z
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 305
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 307
    return-void
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 248
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onPullToRefresh()V

    .line 250
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRefreshing(Z)V
    .locals 1
    .param p1, "doScroll"    # Z

    .prologue
    .line 266
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V

    .line 268
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 271
    :cond_0
    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 275
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onReleaseToRefresh()V

    .line 277
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onReset()V

    .line 296
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 299
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 107
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First Visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Visible Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Total Items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    .line 116
    if-lez p4, :cond_3

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 128
    :cond_2
    return-void

    .line 116
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 319
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 320
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 323
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 135
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 142
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 153
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 154
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    .line 170
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 172
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_1

    .line 175
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 178
    .local v1, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 179
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 185
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    instance-of v3, v3, Lcom/lenovo/component/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    if-eqz v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Lcom/lenovo/component/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    invoke-interface {v3, p1}, Lcom/lenovo/component/pulltorefresh/library/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    .line 197
    :goto_1
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    .line 198
    return-void

    .line 188
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 195
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 209
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    .prologue
    .line 213
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    .line 214
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 217
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 218
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0
    .param p1, "doScroll"    # Z

    .prologue
    .line 221
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 222
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 1
    .param p1, "showIndicator"    # Z

    .prologue
    .line 233
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 235
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    goto :goto_0
.end method

.method protected updateUIForMode()V
    .locals 1

    .prologue
    .line 327
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    .line 330
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    goto :goto_0
.end method
