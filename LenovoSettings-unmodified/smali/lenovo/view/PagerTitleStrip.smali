.class public Llenovo/view/PagerTitleStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerTitleStrip.java"

# interfaces
.implements Llenovo/view/ViewPager$Decor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/view/PagerTitleStrip$TabView;,
        Llenovo/view/PagerTitleStrip$PageListener;,
        Llenovo/view/PagerTitleStrip$PagerTitleStripImpl;
    }
.end annotation


# instance fields
.field private mActionbarDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentHeight:I

.field private mCurrentItem:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mFirstPaddingLeft:I

.field mHalfSliderDrawableWidth:I

.field mItemPadding:I

.field private mLeftItem:I

.field mMaxTabWidth:I

.field mMinTabWidth:I

.field private mNeedComputingPadding:Z

.field private final mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

.field mPager:Llenovo/view/ViewPager;

.field mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/RectF;

.field private mScaledTextSpacing:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field mSliderDrawableHeight:I

.field mSliderDrawablePaddingBottom:I

.field mSliderDrawableWidth:I

.field mSliderOffset:F

.field mSplitView:Landroid/view/ViewGroup;

.field mStackedTabMaxWidth:I

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabViewStyleRes:I

.field mTextColor:Landroid/content/res/ColorStateList;

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Llenovo/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v11, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v7, Llenovo/view/PagerTitleStrip$PageListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Llenovo/view/PagerTitleStrip$PageListener;-><init>(Llenovo/view/PagerTitleStrip;Llenovo/view/PagerTitleStrip$1;)V

    iput-object v7, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    .line 97
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Llenovo/view/PagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    .line 103
    const/4 v7, 0x1

    iput-boolean v7, p0, Llenovo/view/PagerTitleStrip;->mNeedComputingPadding:Z

    .line 121
    invoke-virtual {p0, v11}, Llenovo/view/PagerTitleStrip;->setHorizontalScrollBarEnabled(Z)V

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04003f

    invoke-virtual {v7, v8, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    .line 123
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Llenovo/view/PagerTitleStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    sget-object v7, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    const v8, 0x10102ce

    invoke-virtual {p1, p2, v7, v8, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mTabViewStyleRes:I

    .line 129
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 130
    .local v5, "mBackground":Landroid/graphics/drawable/Drawable;
    const/16 v7, 0x13

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Llenovo/view/PagerTitleStrip;->mActionbarDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-static {p0, v5}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget v7, p0, Llenovo/view/PagerTitleStrip;->mTabViewStyleRes:I

    sget-object v8, Lcom/lenovo/component/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 135
    .local v3, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Llenovo/view/PagerTitleStrip;->mTextColor:Landroid/content/res/ColorStateList;

    .line 136
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Llenovo/view/PagerTitleStrip;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 140
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x7f08000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mItemPadding:I

    .line 141
    const v7, 0x7f08000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mSliderDrawableHeight:I

    .line 142
    const v7, 0x7f08000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mSliderDrawableWidth:I

    .line 143
    const v7, 0x7f08000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mSliderDrawablePaddingBottom:I

    .line 144
    const v7, 0x7f080010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mMinTabWidth:I

    .line 145
    iget v7, p0, Llenovo/view/PagerTitleStrip;->mSliderDrawableWidth:I

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mHalfSliderDrawableWidth:I

    .line 146
    new-instance v7, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v8, 0x3

    invoke-direct {v7, v11, v8}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v7, p0, Llenovo/view/PagerTitleStrip;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 149
    invoke-static {p1}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 150
    .local v1, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mContentHeight:I

    .line 151
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mStackedTabMaxWidth:I

    .line 161
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->density:F

    .line 162
    .local v4, "density":F
    const/high16 v7, 0x42900000    # 72.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mFirstPaddingLeft:I

    .line 163
    instance-of v7, p1, Llenovo/app/ActivityHelp;

    if-eqz v7, :cond_0

    .line 164
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    check-cast v7, Llenovo/app/ActionBar;

    move-object v2, v7

    check-cast v2, Llenovo/app/ActionBar;

    .line 165
    .local v2, "actionbar":Llenovo/app/ActionBar;
    if-eqz v2, :cond_0

    .line 166
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mActionbarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Llenovo/app/ActionBar;->setContainerBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .end local v2    # "actionbar":Llenovo/app/ActionBar;
    :cond_0
    return-void
.end method

.method static synthetic access$102(Llenovo/view/PagerTitleStrip;I)I
    .locals 0
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Llenovo/view/PagerTitleStrip;->mLeftItem:I

    return p1
.end method

.method static synthetic access$200(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;

    .prologue
    .line 73
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Llenovo/view/PagerTitleStrip;I)I
    .locals 0
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Llenovo/view/PagerTitleStrip;->mCurrentItem:I

    return p1
.end method

.method static synthetic access$400(Llenovo/view/PagerTitleStrip;)I
    .locals 1
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;

    .prologue
    .line 73
    iget v0, p0, Llenovo/view/PagerTitleStrip;->mTabViewStyleRes:I

    return v0
.end method

.method static synthetic access$500(Llenovo/view/PagerTitleStrip;)Landroid/graphics/DrawFilter;
    .locals 1
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;

    .prologue
    .line 73
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method private createTabView(ZILjava/lang/CharSequence;)Llenovo/view/PagerTitleStrip$TabView;
    .locals 2
    .param p1, "forAdapter"    # Z
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 450
    new-instance v0, Llenovo/view/PagerTitleStrip$TabView;

    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Llenovo/view/PagerTitleStrip$TabView;-><init>(Llenovo/view/PagerTitleStrip;Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 451
    .local v0, "tabView":Llenovo/view/PagerTitleStrip$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/PagerTitleStrip$TabView;->setFocusable(Z)V

    .line 452
    new-instance v1, Llenovo/view/PagerTitleStrip$1;

    invoke-direct {v1, p0, p2}, Llenovo/view/PagerTitleStrip$1;-><init>(Llenovo/view/PagerTitleStrip;I)V

    invoke-virtual {v0, v1}, Llenovo/view/PagerTitleStrip$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    return-object v0
.end method


# virtual methods
.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 470
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Llenovo/view/PagerTitleStrip;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 474
    :cond_0
    new-instance v1, Llenovo/view/PagerTitleStrip$2;

    invoke-direct {v1, p0, v0, p1}, Llenovo/view/PagerTitleStrip$2;-><init>(Llenovo/view/PagerTitleStrip;Landroid/view/View;I)V

    iput-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    .line 495
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Llenovo/view/PagerTitleStrip;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method public getTextSpacing()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Llenovo/view/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 275
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 276
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Llenovo/view/PagerTitleStrip;->post(Ljava/lang/Runnable;)Z

    .line 280
    :cond_0
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 285
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Llenovo/view/ViewPager;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 286
    check-cast v1, Llenovo/view/ViewPager;

    .line 287
    .local v1, "pager":Llenovo/view/ViewPager;
    invoke-virtual {v1}, Llenovo/view/ViewPager;->getAdapter()Llenovo/view/PagerAdapter;

    move-result-object v0

    .line 289
    .local v0, "adapter":Llenovo/view/PagerAdapter;
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Llenovo/view/ViewPager;->setOnInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 290
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Llenovo/view/ViewPager;->setOnAdapterChangeListener(Llenovo/view/ViewPager$OnAdapterChangeListener;)V

    .line 291
    iput-object v1, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    .line 292
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llenovo/view/PagerAdapter;

    :goto_0
    invoke-virtual {p0, v3, v0}, Llenovo/view/PagerTitleStrip;->updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V

    .line 294
    .end local v0    # "adapter":Llenovo/view/PagerAdapter;
    .end local v1    # "pager":Llenovo/view/ViewPager;
    :cond_1
    return-void

    .line 292
    .restart local v0    # "adapter":Llenovo/view/PagerAdapter;
    .restart local v1    # "pager":Llenovo/view/ViewPager;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 668
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/view/PagerTitleStrip;->mNeedComputingPadding:Z

    .line 670
    iget v0, p0, Llenovo/view/PagerTitleStrip;->mCurrentItem:I

    invoke-virtual {p0, v0}, Llenovo/view/PagerTitleStrip;->animateToTab(I)V

    .line 671
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 307
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Llenovo/view/PagerTitleStrip;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 310
    :cond_0
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v0}, Llenovo/view/ViewPager;->getAdapter()Llenovo/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Llenovo/view/PagerTitleStrip;->updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V

    .line 312
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setOnInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 313
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setOnAdapterChangeListener(Llenovo/view/ViewPager$OnAdapterChangeListener;)V

    .line 314
    iput-object v1, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    .line 316
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 175
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mLeftItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 181
    .local v6, "childLeft":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 182
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 183
    .local v9, "lLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    .line 184
    .local v10, "lRight":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v5, v0

    .line 185
    .local v5, "centerItem":F
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mLeftItem:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 186
    .local v7, "childRight":Landroid/view/View;
    move v12, v10

    .line 187
    .local v12, "rRight":I
    if-eqz v7, :cond_0

    .line 188
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v12

    .line 190
    :cond_0
    sub-int v19, v12, v9

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderOffset:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v13, v0

    .line 191
    .local v13, "scrollOffset":F
    const/4 v8, 0x0

    .line 192
    .local v8, "halfSliderOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderOffset:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    .line 193
    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderOffset:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v11, v19, v20

    .line 194
    .local v11, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mHalfSliderDrawableWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v11

    .line 201
    :goto_0
    invoke-virtual/range {p0 .. p0}, Llenovo/view/PagerTitleStrip;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Llenovo/view/PagerTitleStrip;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Llenovo/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v20

    sub-int v18, v19, v20

    .line 202
    .local v18, "viewHeight":I
    int-to-float v0, v9

    move/from16 v19, v0

    add-float v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mHalfSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    sub-float v15, v19, v8

    .line 203
    .local v15, "sliderItemLeft":F
    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mHalfSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    add-float v16, v19, v8

    .line 204
    .local v16, "sliderItemRight":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderDrawablePaddingBottom:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move/from16 v0, v19

    int-to-float v14, v0

    .line 205
    .local v14, "sliderItemBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderDrawableHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v17, v14, v19

    .line 207
    .local v17, "sliderItemTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-float v20, v15, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-float v20, v16, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    .line 213
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

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mDrawFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderDrawableWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 215
    return-void

    .line 196
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

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderOffset:F

    move/from16 v20, v0

    mul-float v11, v19, v20

    .line 197
    .restart local v11    # "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mHalfSliderDrawableWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v11

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 357
    .local v6, "widthMode":I
    if-ne v6, v10, :cond_3

    move v1, v7

    .line 358
    .local v1, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v1}, Llenovo/view/PagerTitleStrip;->setFillViewport(Z)V

    .line 360
    iget-object v9, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 361
    .local v0, "childCount":I
    if-le v0, v7, :cond_5

    if-eq v6, v10, :cond_0

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_5

    .line 363
    :cond_0
    const/4 v7, 0x2

    if-le v0, v7, :cond_4

    .line 364
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    int-to-float v7, v7

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    .line 368
    :goto_1
    iget v7, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    iget v9, p0, Llenovo/view/PagerTitleStrip;->mStackedTabMaxWidth:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    .line 373
    :goto_2
    iget v7, p0, Llenovo/view/PagerTitleStrip;->mContentHeight:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 374
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 376
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->getMeasuredWidth()I

    move-result v2

    .line 377
    .local v2, "measuredWidth":I
    iget-boolean v7, p0, Llenovo/view/PagerTitleStrip;->mNeedComputingPadding:Z

    if-eqz v7, :cond_2

    if-lez v2, :cond_2

    .line 378
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    if-le v7, v2, :cond_6

    .line 379
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Llenovo/view/PagerTitleStrip$TabView;

    .line 380
    .local v5, "view":Llenovo/view/PagerTitleStrip$TabView;
    if-eqz v5, :cond_1

    .line 381
    invoke-virtual {v5}, Llenovo/view/PagerTitleStrip$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 382
    .local v4, "textView":Landroid/view/View;
    invoke-virtual {v5}, Llenovo/view/PagerTitleStrip$TabView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v7, v9

    shr-int/lit8 v3, v7, 0x1

    .line 383
    .local v3, "offset":I
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    iget v9, p0, Llenovo/view/PagerTitleStrip;->mFirstPaddingLeft:I

    sub-int/2addr v9, v3

    invoke-virtual {v7, v9, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 388
    .end local v3    # "offset":I
    .end local v4    # "textView":Landroid/view/View;
    .end local v5    # "view":Llenovo/view/PagerTitleStrip$TabView;
    :cond_1
    :goto_3
    iput-boolean v8, p0, Llenovo/view/PagerTitleStrip;->mNeedComputingPadding:Z

    .line 391
    :cond_2
    return-void

    .end local v0    # "childCount":I
    .end local v1    # "lockedExpanded":Z
    .end local v2    # "measuredWidth":I
    :cond_3
    move v1, v8

    .line 357
    goto :goto_0

    .line 366
    .restart local v0    # "childCount":I
    .restart local v1    # "lockedExpanded":Z
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    goto :goto_1

    .line 370
    :cond_5
    const/4 v7, -0x1

    iput v7, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    goto :goto_2

    .line 386
    .restart local v2    # "measuredWidth":I
    :cond_6
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 658
    if-eqz p1, :cond_0

    .line 659
    const v0, 0x7f0b0003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Llenovo/view/PagerTitleStrip;->mSplitView:Landroid/view/ViewGroup;

    .line 660
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setUpdateMenuWhenScroller(Z)V

    .line 664
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 270
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->requestLayout()V

    .line 271
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 239
    return-void
.end method

.method public setTabImageColor(II)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 499
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llenovo/view/PagerTitleStrip$TabView;

    invoke-virtual {v0, p2}, Llenovo/view/PagerTitleStrip$TabView;->setTextViewImageColor(I)V

    .line 500
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 248
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 261
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0
    .param p1, "spacingPixels"    # I

    .prologue
    .line 222
    iput p1, p0, Llenovo/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 223
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->requestLayout()V

    .line 224
    return-void
.end method

.method public setViewpager(Llenovo/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Llenovo/view/ViewPager;

    .prologue
    .line 297
    invoke-virtual {p1}, Llenovo/view/ViewPager;->getAdapter()Llenovo/view/PagerAdapter;

    move-result-object v0

    .line 299
    .local v0, "adapter":Llenovo/view/PagerAdapter;
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v1}, Llenovo/view/ViewPager;->setOnInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 300
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v1}, Llenovo/view/ViewPager;->setOnAdapterChangeListener(Llenovo/view/ViewPager$OnAdapterChangeListener;)V

    .line 301
    iput-object p1, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    .line 302
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/view/PagerAdapter;

    :goto_0
    invoke-virtual {p0, v1, v0}, Llenovo/view/PagerTitleStrip;->updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V

    .line 303
    return-void

    .line 302
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Llenovo/view/PagerAdapter;
    .param p2, "newAdapter"    # Llenovo/view/PagerAdapter;

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Llenovo/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 342
    :cond_0
    if-eqz p2, :cond_1

    .line 343
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Llenovo/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 344
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 346
    :cond_1
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v0}, Llenovo/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Llenovo/view/PagerTitleStrip;->updateText(ILlenovo/view/PagerAdapter;)V

    .line 348
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->requestLayout()V

    .line 350
    :cond_2
    return-void
.end method

.method updateText(ILlenovo/view/PagerAdapter;)V
    .locals 11
    .param p1, "currentItem"    # I
    .param p2, "adapter"    # Llenovo/view/PagerAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 319
    if-nez p2, :cond_0

    .line 335
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 322
    invoke-virtual {p2, v0}, Llenovo/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 323
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, v6, v0, v4}, Llenovo/view/PagerTitleStrip;->createTabView(ZILjava/lang/CharSequence;)Llenovo/view/PagerTitleStrip$TabView;

    move-result-object v3

    .line 324
    .local v3, "tabView":Llenovo/view/PagerTitleStrip$TabView;
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v7, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v7}, Llenovo/view/ViewPager;->getCurrentItem()I

    move-result v7

    if-ne v7, v0, :cond_2

    move v1, v5

    .line 327
    .local v1, "isSelected":Z
    :goto_2
    invoke-virtual {v3, v1}, Llenovo/view/PagerTitleStrip$TabView;->setSelected(Z)V

    .line 329
    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {p0, v0}, Llenovo/view/PagerTitleStrip;->animateToTab(I)V

    .line 321
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "isSelected":Z
    :cond_2
    move v1, v6

    .line 326
    goto :goto_2

    .line 334
    .end local v3    # "tabView":Llenovo/view/PagerTitleStrip$TabView;
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_3
    iput-boolean v5, p0, Llenovo/view/PagerTitleStrip;->mNeedComputingPadding:Z

    goto :goto_0
.end method
