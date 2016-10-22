.class public Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;
.super Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;
.source "CircularLoadingLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 24
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x9020093

    return v0
.end method

.method protected onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    return-void
.end method

.method protected onPullImpl(F)V
    .locals 3
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 43
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgressCircular:Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgressCircular:Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setVisibility(I)V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v0, p1, v1

    .line 53
    .local v0, "progress":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgressCircular:Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;

    invoke-virtual {v1, v0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setProgress(F)V

    .line 63
    return-void

    .line 56
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 57
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pullToRefreshImpl()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    return-void
.end method

.method protected refreshingImpl()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgressCircular:Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgressCircular:Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setProgress(F)V

    .line 83
    return-void
.end method

.method protected resetImpl()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/CircularLoadingLayout;->mHeaderProgressCircular:Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setProgress(F)V

    .line 90
    return-void
.end method
