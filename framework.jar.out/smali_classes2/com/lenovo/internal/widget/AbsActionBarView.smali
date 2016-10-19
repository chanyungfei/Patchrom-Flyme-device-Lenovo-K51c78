.class abstract Lcom/lenovo/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected isActionMode:Z

.field protected mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field protected mMenuView:Llenovo/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected mSplitActionBar:Z

.field protected mSplitView:Landroid/view/ViewGroup;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/lenovo/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/lenovo/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->isActionMode:Z

    .line 71
    iput-object p1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 266
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 11
    .param p1, "visibility"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 152
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 155
    :cond_0
    if-nez p1, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {p0, v6}, Lcom/lenovo/internal/widget/AbsActionBarView;->setAlpha(F)V

    .line 158
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v3, v6}, Llenovo/widget/ActionMenuView;->setAlpha(F)V

    .line 162
    :cond_1
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v10, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 163
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    sget-object v3, Lcom/lenovo/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v3, :cond_2

    .line 166
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 167
    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 168
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 171
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 192
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 177
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v6, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 178
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    sget-object v3, Lcom/lenovo/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v3, :cond_4

    .line 181
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 182
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 183
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 184
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 186
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 188
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 252
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 256
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 260
    sub-int/2addr p2, p4

    .line 262
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 78
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    iget-boolean v1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->isActionMode:Z

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 91
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->isActionMode:Z

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Llenovo/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    :cond_3
    return-void
.end method

.method protected onOrientationChange(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->isActionMode:Z

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->isActionMode:Z

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Llenovo/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    :cond_2
    return-void
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 271
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 272
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 274
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    .line 275
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 280
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 277
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/lenovo/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/AbsActionBarView$1;-><init>(Lcom/lenovo/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 130
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->requestLayout()V

    .line 131
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 118
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 139
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 126
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 200
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    :cond_1
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
