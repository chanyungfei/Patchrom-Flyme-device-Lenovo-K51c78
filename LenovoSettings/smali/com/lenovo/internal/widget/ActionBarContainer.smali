.class public Lcom/lenovo/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field mHasResetBg:Z

.field private mHeight:I

.field mIsShow:Z

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSplitHeight:I

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mStatusBarHeight:I

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 379
    iput-boolean v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mHasResetBg:Z

    .line 395
    iput-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsShow:Z

    .line 63
    invoke-static {}, Lcom/lenovo/internal/VersionUtils;->isAtLeastL()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawableV21;

    invoke-direct {v1, p0}, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawableV21;-><init>(Lcom/lenovo/internal/widget/ActionBarContainer;)V

    .line 66
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 68
    sget-object v4, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mHeight:I

    .line 75
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStatusBarHeight:I

    .line 76
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getId()I

    move-result v4

    const v5, 0x7f0b0003

    if-ne v4, v5, :cond_0

    .line 77
    iput-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 78
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitHeight:I

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    iget-boolean v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 86
    invoke-static {}, Lcom/lenovo/internal/VersionUtils;->isAtLeastL()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 89
    :cond_2
    return-void

    .line 63
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_3
    new-instance v1, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawable;

    invoke-direct {v1, p0}, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawable;-><init>(Lcom/lenovo/internal/widget/ActionBarContainer;)V

    goto :goto_0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_4
    move v2, v3

    .line 84
    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 184
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 193
    :cond_2
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 6
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v1, 0x0

    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLeft()I

    move-result v2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStatusBarHeight:I

    add-int v4, v0, v2

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsShow:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 197
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 198
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 208
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 94
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 95
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 96
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 313
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 315
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 316
    .local v4, "tabContainer":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_3

    const/4 v1, 0x1

    .line 318
    .local v1, "hasTabs":Z
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    .line 320
    .local v0, "containerHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 321
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 322
    .local v5, "tabHeight":I
    sub-int v7, v0, v5

    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v0, v8

    invoke-virtual {v4, p2, v7, p4, v8}, Landroid/view/View;->layout(IIII)V

    .line 326
    .end local v0    # "containerHeight":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "tabHeight":I
    :cond_0
    const/4 v3, 0x0

    .line 327
    .local v3, "needsInvalidate":Z
    iget-boolean v7, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v7, :cond_4

    .line 328
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 329
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v6, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    const/4 v3, 0x1

    .line 361
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->invalidate()V

    .line 364
    :cond_2
    return-void

    .end local v1    # "hasTabs":Z
    .end local v3    # "needsInvalidate":Z
    :cond_3
    move v1, v6

    .line 316
    goto :goto_0

    .line 355
    .restart local v1    # "hasTabs":Z
    .restart local v3    # "needsInvalidate":Z
    :cond_4
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 356
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v9

    invoke-virtual {v7, v6, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 357
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 277
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mHeight:I

    if-ltz v3, :cond_0

    .line 279
    iget-boolean v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitHeight:I

    if-ltz v3, :cond_2

    .line 280
    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 288
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 290
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 309
    :cond_1
    :goto_1
    return-void

    .line 284
    :cond_2
    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 292
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 293
    .local v1, "mode":I
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 297
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .line 303
    .local v2, "topMarginForTabs":I
    :goto_2
    if-ne v1, v5, :cond_6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 305
    .local v0, "maxHeight":I
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_1

    .line 298
    .end local v0    # "maxHeight":I
    .end local v2    # "topMarginForTabs":I
    :cond_4
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 299
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .restart local v2    # "topMarginForTabs":I
    goto :goto_2

    .line 301
    .end local v2    # "topMarginForTabs":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "topMarginForTabs":I
    goto :goto_2

    .line 303
    :cond_6
    const v0, 0x7fffffff

    goto :goto_3
.end method

.method public setContainerBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 381
    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mHasResetBg:Z

    if-eqz v2, :cond_0

    .line 394
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 384
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_1
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 387
    if-eqz p1, :cond_2

    .line 388
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 389
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getBottom()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 391
    :cond_2
    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 393
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->invalidate()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 391
    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 99
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 101
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 104
    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 106
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 113
    iput-boolean v1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mHasResetBg:Z

    .line 114
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->invalidate()V

    .line 115
    return-void

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public setPrimaryBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_0
    iput-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 122
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mHasResetBg:Z

    .line 124
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->invalidate()V

    .line 125
    return-void
.end method

.method public setShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsShow:Z

    .line 398
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 152
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 155
    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 157
    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->invalidate()V

    .line 164
    return-void

    :cond_3
    move v0, v1

    .line 161
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 130
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 133
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 135
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContainer;->invalidate()V

    .line 147
    return-void

    :cond_3
    move v0, v1

    .line 144
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 241
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 243
    invoke-virtual {p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 244
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 248
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 219
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 221
    return-void

    .line 219
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 169
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 170
    .local v0, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 173
    :cond_2
    return-void

    .end local v0    # "isVisible":Z
    :cond_3
    move v0, v1

    .line 169
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
