.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final MSG_RELAYOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    sget-object v1, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 107
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 113
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 116
    const/4 v1, 0x5

    const v2, 0x109001f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 315
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 317
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 319
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 208
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109001a

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 210
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x10202c0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 211
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x10202c1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 212
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 215
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 219
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_2

    .line 220
    new-instance v3, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mHandler:Landroid/os/Handler;

    .line 232
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v4

    .line 236
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v4

    .line 237
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v6, v5

    :cond_4
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_5

    .line 245
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 247
    :cond_5
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_6
    move v1, v5

    .line 235
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_7
    move v0, v5

    .line 236
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_8
    move v3, v6

    .line 237
    goto :goto_2
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 449
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v10, v8

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 451
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 452
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 453
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 457
    .local v7, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 459
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v8, :cond_0

    .line 460
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v8}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v4

    .line 461
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 462
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ltz v5, :cond_0

    .line 463
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v8, v5}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 464
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 465
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 466
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 467
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 462
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    return-object v7

    .line 465
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 476
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    new-array v10, v14, [F

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v13

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 478
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 479
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 480
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 482
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 483
    .local v6, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 485
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v7, :cond_0

    .line 486
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v7}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v4

    .line 487
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 488
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gez v5, :cond_0

    .line 489
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v7, v5}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 490
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 491
    const-string/jumbo v7, "scaleY"

    new-array v8, v14, [F

    aput v12, v8, v13

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 492
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 493
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 488
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_0
    return-object v6
.end method


# virtual methods
.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 298
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 308
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 309
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 360
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 365
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 250
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 252
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 253
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 258
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v5, 0x10202c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "closeButton":Landroid/view/View;
    new-instance v4, Lcom/android/internal/widget/ActionBarContextView$2;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$2;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuBuilder;

    .line 266
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v4, :cond_1

    .line 267
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 269
    :cond_1
    new-instance v4, Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 270
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, v6}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 272
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 274
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_3

    .line 275
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 276
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 277
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 295
    return-void

    .line 254
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 255
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 281
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 284
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 286
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 287
    iget v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 289
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 290
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 327
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 328
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 330
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 553
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 545
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 548
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 549
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 557
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 541
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 130
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 568
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 569
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->isLayoutRtl()Z

    move-result v5

    .line 504
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 505
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 506
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 508
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 510
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 511
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 512
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 513
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 514
    invoke-static {v2, v12, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 516
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 518
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeInAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 524
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 529
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 532
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 534
    :goto_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_3

    .line 535
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v5, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 537
    :cond_3
    return-void

    .line 504
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 510
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 511
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 532
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 535
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 370
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 371
    .local v23, "widthMode":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 372
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 376
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 377
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    .line 378
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 382
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 384
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 387
    .local v15, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 388
    .local v22, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 389
    .local v3, "availableWidth":I
    sub-int v11, v15, v22

    .line 390
    .local v11, "height":I
    const/high16 v24, -0x80000000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 392
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 395
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 398
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 403
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 405
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 406
    .local v20, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 408
    .local v19, "titleWidth":I
    move/from16 v0, v19

    if-gt v0, v3, :cond_9

    const/16 v18, 0x1

    .line 409
    .local v18, "titleFits":Z
    :goto_1
    if-eqz v18, :cond_4

    .line 410
    sub-int v3, v3, v19

    .line 412
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_a

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 420
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/high16 v10, 0x40000000    # 2.0f

    .line 422
    .local v10, "customWidthMode":I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_d

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 424
    .local v9, "customWidth":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/high16 v8, 0x40000000    # 2.0f

    .line 426
    .local v8, "customHeightMode":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_f

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 428
    .local v7, "customHeight":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 432
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_11

    .line 433
    const/16 v16, 0x0

    .line 434
    .local v16, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 435
    .local v6, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_10

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 437
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 438
    .local v17, "paddedViewHeight":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 439
    move/from16 v16, v17

    .line 435
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 384
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "measuredHeight":I
    .end local v17    # "paddedViewHeight":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "verticalPadding":I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 408
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v15    # "maxHeight":I
    .restart local v19    # "titleWidth":I
    .restart local v20    # "titleWidthSpec":I
    .restart local v22    # "verticalPadding":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 412
    .restart local v18    # "titleFits":Z
    :cond_a
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 414
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 420
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v10, -0x80000000

    goto/16 :goto_4

    .restart local v10    # "customWidthMode":I
    :cond_d
    move v9, v3

    .line 422
    goto :goto_5

    .line 424
    .restart local v9    # "customWidth":I
    :cond_e
    const/high16 v8, -0x80000000

    goto :goto_6

    .restart local v8    # "customHeightMode":I
    :cond_f
    move v7, v11

    .line 426
    goto :goto_7

    .line 442
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v16    # "measuredHeight":I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 446
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v16    # "measuredHeight":I
    :goto_9
    return-void

    .line 444
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 170
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 181
    :cond_1
    if-eqz p1, :cond_2

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 185
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 137
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 140
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 142
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 144
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 146
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 166
    :cond_2
    return-void

    .line 150
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 153
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 155
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    iget v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 158
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 160
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 194
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 195
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 189
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 190
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 581
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 582
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
