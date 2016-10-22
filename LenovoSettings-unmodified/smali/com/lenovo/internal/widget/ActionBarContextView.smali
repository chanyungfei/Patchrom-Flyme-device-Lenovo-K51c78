.class public Lcom/lenovo/internal/widget/ActionBarContextView;
.super Lcom/lenovo/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

.field mActivity:Landroid/app/Activity;

.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/widget/ImageView;

.field private final mCloseClickListener:Landroid/view/View$OnClickListener;

.field private mCloseItemLayout:I

.field private mCloseMenuItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field mMode:Llenovo/view/ActionMode;

.field private mSelectAllItemLayout:I

.field private final mSelectAllListener:Landroid/view/View$OnClickListener;

.field private mSelectedAll:Landroid/widget/TextView;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubTextColor:Landroid/content/res/ColorStateList;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTextColor:Landroid/content/res/ColorStateList;

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
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const v0, 0x10102ce

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarContextView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarContextView$1;-><init>(Lcom/lenovo/internal/widget/ActionBarContextView;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseClickListener:Landroid/view/View$OnClickListener;

    .line 688
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarContextView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarContextView$2;-><init>(Lcom/lenovo/internal/widget/ActionBarContextView;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectAllListener:Landroid/view/View$OnClickListener;

    .line 104
    sget-object v0, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 107
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 116
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 118
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 121
    const/4 v0, 0x6

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 124
    const/16 v0, 0x14

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    const v0, 0x7f040046

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 128
    const v0, 0x7f040047

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectAllItemLayout:I

    .line 130
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    sget-object v3, Lcom/lenovo/component/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 134
    .local v8, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 135
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    sget-object v3, Lcom/lenovo/component/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 138
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubTextColor:Landroid/content/res/ColorStateList;

    .line 139
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->isActionMode:Z

    .line 143
    new-instance v0, Lcom/lenovo/internal/view/menu/ActionMenuItem;

    const v3, 0x1020027

    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseMenuItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    .line 145
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 146
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 147
    .local v9, "inflater":Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectAllItemLayout:I

    invoke-virtual {v9, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 156
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/internal/widget/ActionBarContextView;)Lcom/lenovo/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarContextView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseMenuItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 377
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 379
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 381
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 245
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 247
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040040

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 248
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 249
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0b000d

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 250
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0b0015

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 251
    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 254
    :cond_0
    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 259
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 263
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 264
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 267
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 269
    :cond_4
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 262
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 263
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 264
    goto :goto_2
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 526
    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    neg-int v10, v8

    iget-object v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 528
    iget-object v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    const-string v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 529
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 530
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 534
    .local v7, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 536
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v8, :cond_0

    .line 537
    iget-object v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v8}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v4

    .line 538
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 539
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ltz v5, :cond_0

    .line 540
    iget-object v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v8, v5}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 541
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 542
    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 543
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 544
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 539
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    return-object v7

    .line 542
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 553
    iget-object v8, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    const-string v9, "translationX"

    new-array v10, v13, [F

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 555
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 556
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 560
    .local v6, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 562
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v7, :cond_0

    .line 563
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v7}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v4

    .line 564
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 565
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gez v5, :cond_0

    .line 566
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v7, v5}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 567
    .local v3, "child":Landroid/view/View;
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Landroid/view/View;->setScaleY(F)V

    .line 568
    const-string v7, "scaleY"

    new-array v8, v13, [F

    const/4 v9, 0x0

    aput v9, v8, v12

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 569
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 570
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 565
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 575
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_0
    return-object v6
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->setActionMode(Z)V

    .line 354
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitWhenNarrow:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->setSplitToolbar(Z)V

    .line 360
    :cond_0
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 724
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 422
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
    .line 427
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSelectedAll(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 681
    if-eqz p1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initForMode(Llenovo/view/ActionMode;)V
    .locals 11
    .param p1, "mode"    # Llenovo/view/ActionMode;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 272
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    if-eqz v6, :cond_0

    .line 273
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {v6, v9}, Lcom/lenovo/internal/widget/ActionBarView;->setActionMode(Z)V

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    .line 276
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    if-nez v6, :cond_8

    .line 277
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 278
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    invoke-virtual {v3, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    .line 280
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_2

    .line 281
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 282
    .local v1, "color":I
    :goto_0
    and-int/lit16 v6, v1, 0xff

    const/16 v8, 0x77

    if-ge v6, v8, :cond_1

    .line 283
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 285
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 286
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 287
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    .end local v1    # "color":I
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 296
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    if-nez v6, :cond_9

    .line 297
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 298
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectAllItemLayout:I

    invoke-virtual {v3, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    .line 299
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 301
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 306
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    const v7, 0x7f0b0011

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "closeButton":Landroid/view/View;
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-virtual {p1}, Llenovo/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    check-cast v5, Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 318
    .local v5, "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v6, :cond_5

    .line 319
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v6}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 321
    :cond_5
    new-instance v6, Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 322
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v6, v9}, Llenovo/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 324
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 326
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v6, :cond_a

    .line 327
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 328
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Llenovo/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Llenovo/widget/ActionMenuView;

    iput-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    .line 329
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {p0, v6, v4}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    :goto_4
    iput-boolean v9, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 348
    return-void

    .end local v0    # "closeButton":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_6
    move v1, v7

    .line 281
    goto/16 :goto_0

    .restart local v1    # "color":I
    :cond_7
    move v1, v7

    .line 283
    goto/16 :goto_1

    .line 291
    .end local v1    # "color":I
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_8
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_3

    .line 292
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 302
    :cond_9
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_4

    .line 303
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 333
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    :cond_a
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7, v9}, Llenovo/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 337
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0a0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v6, v7}, Llenovo/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 339
    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 340
    iget v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 341
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 342
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Llenovo/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Llenovo/widget/ActionMenuView;

    iput-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    .line 343
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v7}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v6, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 385
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 386
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 389
    :cond_0
    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 390
    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 392
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 638
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 630
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    .line 633
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 634
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 642
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 626
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 161
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 163
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 165
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 652
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 654
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 655
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 656
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

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
    .line 580
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 581
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_5

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 582
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 583
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 585
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 587
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_6

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 588
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_7

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 589
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcom/lenovo/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 590
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 591
    invoke-static {v2, v12, v5}, Lcom/lenovo/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 593
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_0

    .line 601
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 606
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 609
    :cond_2
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 615
    :goto_3
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v0, :cond_3

    .line 616
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-nez v5, :cond_9

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 620
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    if-nez v5, :cond_a

    const/4 v11, 0x1

    :goto_5
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 622
    :cond_4
    return-void

    .line 581
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 587
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 588
    .restart local v14    # "startMargin":I
    :cond_7
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 609
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_8
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 616
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 620
    :cond_a
    const/4 v11, 0x0

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 432
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 433
    .local v20, "widthMode":I
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 434
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " can only be used "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 438
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 439
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    .line 440
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " can only be used "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 444
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 446
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v21, v0

    if-lez v21, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 449
    .local v15, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v22

    add-int v19, v21, v22

    .line 450
    .local v19, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v21

    sub-int v21, v5, v21

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v22

    sub-int v3, v21, v22

    .line 451
    .local v3, "availableWidth":I
    sub-int v11, v15, v19

    .line 452
    .local v11, "height":I
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 454
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mClose:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 457
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v3, v3, v21

    .line 460
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 465
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 467
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    const/high16 v10, 0x40000000    # 2.0f

    .line 469
    .local v10, "customWidthMode":I
    :goto_1
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    if-ltz v21, :cond_a

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 471
    .local v9, "customWidth":I
    :goto_2
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    const/high16 v8, 0x40000000    # 2.0f

    .line 473
    .local v8, "customHeightMode":I
    :goto_3
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    if-ltz v21, :cond_c

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 475
    .local v7, "customHeight":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->measure(II)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v21

    sub-int v3, v3, v21

    .line 480
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    if-nez v21, :cond_5

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 495
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 497
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    const/high16 v10, 0x40000000    # 2.0f

    .line 499
    .restart local v10    # "customWidthMode":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    if-ltz v21, :cond_e

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 501
    .restart local v9    # "customWidth":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    const/high16 v8, 0x40000000    # 2.0f

    .line 503
    .restart local v8    # "customHeightMode":I
    :goto_7
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    if-ltz v21, :cond_10

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 505
    .restart local v7    # "customHeight":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 509
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v21, v0

    if-gtz v21, :cond_12

    .line 510
    const/16 v16, 0x0

    .line 511
    .local v16, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 512
    .local v6, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    if-ge v13, v6, :cond_11

    .line 513
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 514
    .local v18, "v":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v17, v21, v19

    .line 515
    .local v17, "paddedViewHeight":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 516
    move/from16 v16, v17

    .line 512
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 446
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "measuredHeight":I
    .end local v17    # "paddedViewHeight":I
    .end local v18    # "v":Landroid/view/View;
    .end local v19    # "verticalPadding":I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 467
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "maxHeight":I
    .restart local v19    # "verticalPadding":I
    :cond_9
    const/high16 v10, -0x80000000

    goto/16 :goto_1

    .restart local v10    # "customWidthMode":I
    :cond_a
    move v9, v3

    .line 469
    goto/16 :goto_2

    .line 471
    .restart local v9    # "customWidth":I
    :cond_b
    const/high16 v8, -0x80000000

    goto/16 :goto_3

    .restart local v8    # "customHeightMode":I
    :cond_c
    move v7, v11

    .line 473
    goto/16 :goto_4

    .line 497
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    :cond_d
    const/high16 v10, -0x80000000

    goto :goto_5

    .restart local v10    # "customWidthMode":I
    :cond_e
    move v9, v3

    .line 499
    goto :goto_6

    .line 501
    .restart local v9    # "customWidth":I
    :cond_f
    const/high16 v8, -0x80000000

    goto :goto_7

    .restart local v8    # "customHeightMode":I
    :cond_10
    move v7, v11

    .line 503
    goto :goto_8

    .line 519
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v16    # "measuredHeight":I
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 523
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v16    # "measuredHeight":I
    :goto_a
    return-void

    .line 521
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/lenovo/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_a
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setActionBarView(Lcom/lenovo/internal/widget/ActionBarView;)V
    .locals 0
    .param p1, "actionBarView"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    .line 728
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActivity:Landroid/app/Activity;

    .line 701
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 209
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 220
    :cond_1
    if-eqz p1, :cond_2

    .line 221
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->requestLayout()V

    .line 224
    return-void
.end method

.method public setSeletedAllTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    :cond_0
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 169
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 170
    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_3

    .line 172
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 173
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v2, :cond_2

    .line 178
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 180
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_5

    .line 181
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Llenovo/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Llenovo/widget/ActionMenuView;

    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    .line 182
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v2}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 184
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 205
    :cond_3
    return-void

    .line 173
    :cond_4
    const/16 v2, 0x8

    goto :goto_0

    .line 188
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Llenovo/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 192
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Llenovo/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 194
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    iget v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Llenovo/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Llenovo/widget/ActionMenuView;

    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    .line 197
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v2}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 199
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    :cond_6
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 233
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->initTitle()V

    .line 234
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 228
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->initTitle()V

    .line 229
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarContextView;->requestLayout()V

    .line 668
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 669
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
