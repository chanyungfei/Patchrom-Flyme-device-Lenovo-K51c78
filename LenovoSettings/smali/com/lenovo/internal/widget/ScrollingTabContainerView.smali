.class public Lcom/lenovo/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field public mAllText:Z

.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mCurrentItem:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mFirstPaddingLeft:I

.field mHalfSliderDrawableWidth:I

.field mHasEmbeddedTabs:Z

.field mItemOffset:I

.field private mLeftItem:I

.field mMaxTabWidth:I

.field mMinTabWidth:I

.field private mNeedComputingPadding:Z

.field mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/RectF;

.field private mSelectedTabIndex:I

.field mSliderDrawableHeight:I

.field mSliderDrawablePaddingBottom:I

.field mSliderDrawableWidth:I

.field mSliderOffset:F

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTabViewStyleRes:I

.field mTextColor:Landroid/content/res/ColorStateList;

.field protected final mVisAnimListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v4, Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v4, p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 101
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    .line 103
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    .line 106
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 854
    iput-boolean v8, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHasEmbeddedTabs:Z

    .line 114
    invoke-virtual {p0, v8}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 116
    invoke-static {p1}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 117
    .local v1, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 118
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04003f

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 123
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {p0, v8}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setBackgroundColor(I)V

    .line 128
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    .line 131
    const/4 v4, 0x0

    sget-object v5, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    const v6, 0x10102ce

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabViewStyleRes:I

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    iget v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabViewStyleRes:I

    sget-object v5, Lcom/lenovo/component/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 137
    .local v2, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 138
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x3

    invoke-direct {v4, v8, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mItemOffset:I

    .line 143
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableHeight:I

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableWidth:I

    .line 145
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawablePaddingBottom:I

    .line 147
    iget v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    .line 148
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mItemOffset:I

    iget v6, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mItemOffset:I

    invoke-virtual {v4, v5, v8, v6, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 151
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v3, "density":F
    const/high16 v4, 0x42900000    # 72.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mFirstPaddingLeft:I

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/internal/widget/ScrollingTabContainerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mCurrentItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/graphics/DrawFilter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Landroid/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 328
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 330
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-static {v0, p0}, Lcom/lenovo/internal/widget/ViewUtils;->setOnItemClickListenerInt(Landroid/widget/Spinner;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 333
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    .line 432
    new-instance v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 433
    .local v0, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 436
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    :goto_0
    return-object v0

    .line 441
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 443
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 444
    new-instance v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return v4

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x1

    .line 477
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 481
    .local v0, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 487
    :cond_0
    if-eqz p3, :cond_1

    .line 488
    invoke-virtual {v0, v5}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 490
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 494
    :cond_2
    iput-boolean v5, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 495
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x1

    .line 452
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 457
    .local v0, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 463
    :cond_0
    if-eqz p2, :cond_1

    .line 464
    invoke-virtual {v0, v5}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 466
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 471
    :cond_2
    iput-boolean v5, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 472
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 379
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 383
    :cond_0
    new-instance v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 411
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 412
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 355
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 358
    :cond_0
    if-nez p1, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {p0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 362
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 363
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 365
    sget-object v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 376
    :goto_0
    return-void

    .line 369
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 370
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 372
    sget-object v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 373
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 416
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 417
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 421
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 337
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 338
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 344
    .local v0, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 345
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 348
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 349
    iget v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mCurrentItem:I

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 352
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 426
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 429
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 223
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mLeftItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 225
    .local v6, "childLeft":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 226
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 227
    .local v9, "lLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    .line 228
    .local v10, "lRight":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v5, v0

    .line 229
    .local v5, "centerItem":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mLeftItem:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 230
    .local v7, "childRight":Landroid/view/View;
    move v12, v10

    .line 231
    .local v12, "rRight":I
    if-eqz v7, :cond_0

    .line 232
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v12

    .line 234
    :cond_0
    sub-int v19, v12, v9

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v13, v0

    .line 235
    .local v13, "scrollOffset":F
    const/4 v8, 0x0

    .line 236
    .local v8, "halfSliderOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    .line 237
    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v11, v19, v20

    .line 238
    .local v11, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v11

    .line 243
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getPaddingBottom()I

    move-result v20

    sub-int v18, v19, v20

    .line 244
    .local v18, "viewHeight":I
    int-to-float v0, v9

    move/from16 v19, v0

    add-float v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    sub-float v15, v19, v8

    .line 245
    .local v15, "sliderItemLeft":F
    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    add-float v16, v19, v8

    .line 246
    .local v16, "sliderItemRight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawablePaddingBottom:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move/from16 v0, v19

    int-to-float v14, v0

    .line 247
    .local v14, "sliderItemBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v17, v14, v19

    .line 248
    .local v17, "sliderItemTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-float v20, v15, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-float v20, v16, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    .line 253
    .end local v5    # "centerItem":F
    .end local v7    # "childRight":Landroid/view/View;
    .end local v8    # "halfSliderOffset":F
    .end local v9    # "lLeft":I
    .end local v10    # "lRight":I
    .end local v11    # "offset":F
    .end local v12    # "rRight":I
    .end local v13    # "scrollOffset":F
    .end local v14    # "sliderItemBottom":F
    .end local v15    # "sliderItemLeft":F
    .end local v16    # "sliderItemRight":F
    .end local v17    # "sliderItemTop":F
    .end local v18    # "viewHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mDrawFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 255
    return-void

    .line 240
    .restart local v5    # "centerItem":F
    .restart local v7    # "childRight":Landroid/view/View;
    .restart local v8    # "halfSliderOffset":F
    .restart local v9    # "lLeft":I
    .restart local v10    # "lRight":I
    .restart local v12    # "rRight":I
    .restart local v13    # "scrollOffset":F
    :cond_2
    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    move/from16 v20, v0

    mul-float v11, v19, v20

    .line 241
    .restart local v11    # "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v11

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 529
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    .line 530
    .local v0, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 531
    return-void
.end method

.method public onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 158
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 160
    .local v9, "widthMode":I
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v9, v10, :cond_4

    const/4 v3, 0x1

    .line 161
    .local v3, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 163
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 164
    .local v2, "childCount":I
    const/4 v10, 0x1

    if-le v2, v10, :cond_6

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_0

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_6

    .line 166
    :cond_0
    const/4 v10, 0x2

    if-le v2, v10, :cond_5

    .line 167
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ecccccd    # 0.4f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 171
    :goto_1
    iget v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 176
    :goto_2
    iget v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 178
    if-nez v3, :cond_7

    iget-boolean v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v10, :cond_7

    const/4 v1, 0x1

    .line 180
    .local v1, "canCollapse":Z
    :goto_3
    if-eqz v1, :cond_9

    .line 183
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    move/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 185
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    if-le v10, v11, :cond_8

    .line 186
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 194
    :goto_4
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v6

    .line 196
    .local v6, "oldWidth":I
    invoke-super/range {p0 .. p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 197
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 199
    .local v4, "newWidth":I
    if-eqz v3, :cond_1

    if-eq v6, v4, :cond_1

    .line 201
    iget v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v10}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 205
    :cond_1
    iget-boolean v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHasEmbeddedTabs:Z

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    if-eqz v10, :cond_3

    .line 206
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v11

    if-le v10, v11, :cond_a

    .line 207
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    .line 208
    .local v8, "view":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v8, :cond_2

    .line 209
    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v7

    .line 210
    .local v7, "textView":Landroid/view/View;
    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    shr-int/lit8 v5, v10, 0x1

    .line 211
    .local v5, "offset":I
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mFirstPaddingLeft:I

    sub-int/2addr v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 216
    .end local v5    # "offset":I
    .end local v7    # "textView":Landroid/view/View;
    .end local v8    # "view":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    :cond_2
    :goto_5
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 219
    :cond_3
    return-void

    .line 160
    .end local v1    # "canCollapse":Z
    .end local v2    # "childCount":I
    .end local v3    # "lockedExpanded":Z
    .end local v4    # "newWidth":I
    .end local v6    # "oldWidth":I
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 169
    .restart local v2    # "childCount":I
    .restart local v3    # "lockedExpanded":Z
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto/16 :goto_1

    .line 173
    :cond_6
    const/4 v10, -0x1

    iput v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto/16 :goto_2

    .line 178
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 188
    .restart local v1    # "canCollapse":Z
    :cond_8
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 191
    :cond_9
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 214
    .restart local v4    # "newWidth":I
    .restart local v6    # "oldWidth":I
    :cond_a
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_5
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 519
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 522
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 525
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 509
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 515
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 1
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 269
    return-void
.end method

.method public setContentHeight(I)V
    .locals 2
    .param p1, "contentHeight"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 323
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42500000    # 52.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 324
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 325
    return-void
.end method

.method public setHasEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    .line 856
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHasEmbeddedTabs:Z

    .line 857
    return-void
.end method

.method public setTabScroller(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 316
    iput p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mLeftItem:I

    .line 317
    iput p2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    .line 318
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->invalidate()V

    .line 319
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 302
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 303
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 304
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 306
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 307
    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 303
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 311
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    .line 312
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 314
    :cond_3
    return-void
.end method

.method public setTabViewImageColor(II)V
    .locals 2
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 848
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    .line 849
    .local v0, "textView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {v0, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setTextViewImageColor(I)V

    .line 852
    :cond_0
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 499
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 505
    :cond_1
    return-void
.end method
