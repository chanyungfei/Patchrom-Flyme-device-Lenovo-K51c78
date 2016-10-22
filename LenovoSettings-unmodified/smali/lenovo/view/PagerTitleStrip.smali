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
.field private mContentHeight:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field mHalfSliderDrawableWidth:I

.field mItemPadding:I

.field private mLeftItem:I

.field mMaxTabWidth:I

.field mMinTabWidth:I

.field private final mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

.field mPager:Llenovo/view/ViewPager;

.field mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/RectF;

.field private mScaledTextSpacing:I

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

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

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
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v5, Llenovo/view/PagerTitleStrip$PageListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Llenovo/view/PagerTitleStrip$PageListener;-><init>(Llenovo/view/PagerTitleStrip;Llenovo/view/PagerTitleStrip$1;)V

    iput-object v5, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    .line 95
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Llenovo/view/PagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    .line 96
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    .line 112
    invoke-virtual {p0, v9}, Llenovo/view/PagerTitleStrip;->setHorizontalScrollBarEnabled(Z)V

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04003f

    invoke-virtual {v5, v6, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    .line 114
    iget-object v5, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Llenovo/view/PagerTitleStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    sget-object v5, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    const v6, 0x10102ce

    invoke-virtual {p1, p2, v5, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mTabViewStyleRes:I

    .line 120
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 121
    .local v3, "mBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-static {p0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget v5, p0, Llenovo/view/PagerTitleStrip;->mTabViewStyleRes:I

    sget-object v6, Lcom/lenovo/component/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 125
    .local v2, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Llenovo/view/PagerTitleStrip;->mTextColor:Landroid/content/res/ColorStateList;

    .line 126
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    iget-object v5, p0, Llenovo/view/PagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Llenovo/view/PagerTitleStrip;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 130
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mItemPadding:I

    .line 131
    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mSliderDrawableHeight:I

    .line 132
    const v5, 0x7f08000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mSliderDrawableWidth:I

    .line 133
    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mSliderDrawablePaddingBottom:I

    .line 134
    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mMinTabWidth:I

    .line 135
    iget v5, p0, Llenovo/view/PagerTitleStrip;->mSliderDrawableWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mHalfSliderDrawableWidth:I

    .line 136
    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x3

    invoke-direct {v5, v9, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v5, p0, Llenovo/view/PagerTitleStrip;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 139
    invoke-static {p1}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 140
    .local v1, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v5

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mContentHeight:I

    .line 141
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v5

    iput v5, p0, Llenovo/view/PagerTitleStrip;->mStackedTabMaxWidth:I

    .line 151
    return-void
.end method

.method static synthetic access$102(Llenovo/view/PagerTitleStrip;I)I
    .locals 0
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Llenovo/view/PagerTitleStrip;->mLeftItem:I

    return p1
.end method

.method static synthetic access$200(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;

    .prologue
    .line 69
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Llenovo/view/PagerTitleStrip;)I
    .locals 1
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;

    .prologue
    .line 69
    iget v0, p0, Llenovo/view/PagerTitleStrip;->mTabViewStyleRes:I

    return v0
.end method

.method static synthetic access$400(Llenovo/view/PagerTitleStrip;)Landroid/graphics/DrawFilter;
    .locals 1
    .param p0, "x0"    # Llenovo/view/PagerTitleStrip;

    .prologue
    .line 69
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method private createTabView(ZILjava/lang/CharSequence;)Llenovo/view/PagerTitleStrip$TabView;
    .locals 2
    .param p1, "forAdapter"    # Z
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 427
    new-instance v0, Llenovo/view/PagerTitleStrip$TabView;

    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Llenovo/view/PagerTitleStrip$TabView;-><init>(Llenovo/view/PagerTitleStrip;Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 428
    .local v0, "tabView":Llenovo/view/PagerTitleStrip$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/PagerTitleStrip$TabView;->setFocusable(Z)V

    .line 429
    new-instance v1, Llenovo/view/PagerTitleStrip$1;

    invoke-direct {v1, p0, p2}, Llenovo/view/PagerTitleStrip$1;-><init>(Llenovo/view/PagerTitleStrip;I)V

    invoke-virtual {v0, v1}, Llenovo/view/PagerTitleStrip$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    return-object v0
.end method


# virtual methods
.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 447
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Llenovo/view/PagerTitleStrip;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 451
    :cond_0
    new-instance v1, Llenovo/view/PagerTitleStrip$2;

    invoke-direct {v1, p0, v0}, Llenovo/view/PagerTitleStrip$2;-><init>(Llenovo/view/PagerTitleStrip;Landroid/view/View;)V

    iput-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    .line 458
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Llenovo/view/PagerTitleStrip;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method public getTextSpacing()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Llenovo/view/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 255
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 256
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Llenovo/view/PagerTitleStrip;->post(Ljava/lang/Runnable;)Z

    .line 260
    :cond_0
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 265
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Llenovo/view/ViewPager;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 266
    check-cast v1, Llenovo/view/ViewPager;

    .line 267
    .local v1, "pager":Llenovo/view/ViewPager;
    invoke-virtual {v1}, Llenovo/view/ViewPager;->getAdapter()Llenovo/view/PagerAdapter;

    move-result-object v0

    .line 269
    .local v0, "adapter":Llenovo/view/PagerAdapter;
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Llenovo/view/ViewPager;->setInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)Llenovo/view/ViewPager$OnPageChangeListener;

    .line 270
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Llenovo/view/ViewPager;->setOnAdapterChangeListener(Llenovo/view/ViewPager$OnAdapterChangeListener;)V

    .line 271
    iput-object v1, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    .line 272
    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llenovo/view/PagerAdapter;

    :goto_0
    invoke-virtual {p0, v3, v0}, Llenovo/view/PagerTitleStrip;->updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V

    .line 274
    .end local v0    # "adapter":Llenovo/view/PagerAdapter;
    .end local v1    # "pager":Llenovo/view/ViewPager;
    :cond_1
    return-void

    .line 272
    .restart local v0    # "adapter":Llenovo/view/PagerAdapter;
    .restart local v1    # "pager":Llenovo/view/ViewPager;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Llenovo/view/PagerTitleStrip;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 290
    :cond_0
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v0}, Llenovo/view/ViewPager;->getAdapter()Llenovo/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Llenovo/view/PagerTitleStrip;->updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V

    .line 292
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)Llenovo/view/ViewPager$OnPageChangeListener;

    .line 293
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setOnAdapterChangeListener(Llenovo/view/ViewPager$OnAdapterChangeListener;)V

    .line 294
    iput-object v1, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    .line 296
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mLeftItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 161
    .local v6, "childLeft":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 162
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 163
    .local v9, "lLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    .line 164
    .local v10, "lRight":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v5, v0

    .line 165
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

    .line 166
    .local v7, "childRight":Landroid/view/View;
    move v12, v10

    .line 167
    .local v12, "rRight":I
    if-eqz v7, :cond_0

    .line 168
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v12

    .line 170
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

    .line 171
    .local v13, "scrollOffset":F
    const/4 v8, 0x0

    .line 172
    .local v8, "halfSliderOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderOffset:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    .line 173
    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderOffset:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v11, v19, v20

    .line 174
    .local v11, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mHalfSliderDrawableWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v11

    .line 181
    :goto_0
    invoke-virtual/range {p0 .. p0}, Llenovo/view/PagerTitleStrip;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Llenovo/view/PagerTitleStrip;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Llenovo/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v20

    sub-int v18, v19, v20

    .line 182
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

    .line 183
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

    .line 184
    .local v16, "sliderItemRight":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderDrawablePaddingBottom:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move/from16 v0, v19

    int-to-float v14, v0

    .line 185
    .local v14, "sliderItemBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mSliderDrawableHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v17, v14, v19

    .line 187
    .local v17, "sliderItemTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-float v20, v15, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-float v20, v16, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/PagerTitleStrip;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    .line 193
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

    .line 194
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

    .line 195
    return-void

    .line 176
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

    .line 177
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
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    .line 346
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 348
    .local v2, "widthMode":I
    if-ne v2, v5, :cond_1

    move v1, v3

    .line 349
    .local v1, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v1}, Llenovo/view/PagerTitleStrip;->setFillViewport(Z)V

    .line 351
    iget-object v4, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 352
    .local v0, "childCount":I
    if-le v0, v3, :cond_3

    if-eq v2, v5, :cond_0

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_3

    .line 354
    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    .line 355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    .line 359
    :goto_1
    iget v3, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    iget v4, p0, Llenovo/view/PagerTitleStrip;->mStackedTabMaxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    .line 364
    :goto_2
    iget v3, p0, Llenovo/view/PagerTitleStrip;->mContentHeight:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 365
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 367
    return-void

    .line 348
    .end local v0    # "childCount":I
    .end local v1    # "lockedExpanded":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 357
    .restart local v0    # "childCount":I
    .restart local v1    # "lockedExpanded":Z
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    goto :goto_1

    .line 361
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    goto :goto_2
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Llenovo/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 324
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 326
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 616
    if-eqz p1, :cond_0

    .line 617
    const v0, 0x7f0b0003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Llenovo/view/PagerTitleStrip;->mSplitView:Landroid/view/ViewGroup;

    .line 618
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setUpdateMenuWhenScroller(Z)V

    .line 622
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 250
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->requestLayout()V

    .line 251
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 219
    return-void
.end method

.method public setTabImageColor(II)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 462
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llenovo/view/PagerTitleStrip$TabView;

    invoke-virtual {v0, p2}, Llenovo/view/PagerTitleStrip$TabView;->setTextViewImageColor(I)V

    .line 463
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 228
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 241
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0
    .param p1, "spacingPixels"    # I

    .prologue
    .line 202
    iput p1, p0, Llenovo/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 203
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->requestLayout()V

    .line 204
    return-void
.end method

.method public setViewpager(Llenovo/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Llenovo/view/ViewPager;

    .prologue
    .line 277
    invoke-virtual {p1}, Llenovo/view/ViewPager;->getAdapter()Llenovo/view/PagerAdapter;

    move-result-object v0

    .line 279
    .local v0, "adapter":Llenovo/view/PagerAdapter;
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v1}, Llenovo/view/ViewPager;->setInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)Llenovo/view/ViewPager$OnPageChangeListener;

    .line 280
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v1}, Llenovo/view/ViewPager;->setOnAdapterChangeListener(Llenovo/view/ViewPager$OnAdapterChangeListener;)V

    .line 281
    iput-object p1, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    .line 282
    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/view/PagerAdapter;

    :goto_0
    invoke-virtual {p0, v1, v0}, Llenovo/view/PagerTitleStrip;->updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V

    .line 283
    return-void

    .line 282
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Llenovo/view/PagerAdapter;
    .param p2, "newAdapter"    # Llenovo/view/PagerAdapter;

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Llenovo/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 333
    :cond_0
    if-eqz p2, :cond_1

    .line 334
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPageListener:Llenovo/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Llenovo/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llenovo/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 337
    :cond_1
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v0}, Llenovo/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Llenovo/view/PagerTitleStrip;->updateText(ILlenovo/view/PagerAdapter;)V

    .line 339
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip;->requestLayout()V

    .line 341
    :cond_2
    return-void
.end method

.method updateText(ILlenovo/view/PagerAdapter;)V
    .locals 10
    .param p1, "currentItem"    # I
    .param p2, "adapter"    # Llenovo/view/PagerAdapter;

    .prologue
    const/4 v5, 0x0

    .line 299
    if-nez p2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v6, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 302
    invoke-virtual {p2, v0}, Llenovo/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 303
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, v5, v0, v4}, Llenovo/view/PagerTitleStrip;->createTabView(ZILjava/lang/CharSequence;)Llenovo/view/PagerTitleStrip$TabView;

    move-result-object v3

    .line 304
    .local v3, "tabView":Llenovo/view/PagerTitleStrip$TabView;
    iget-object v6, p0, Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v6, p0, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v6}, Llenovo/view/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v6, v0, :cond_3

    const/4 v1, 0x1

    .line 307
    .local v1, "isSelected":Z
    :goto_2
    invoke-virtual {v3, v1}, Llenovo/view/PagerTitleStrip$TabView;->setSelected(Z)V

    .line 309
    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {p0, v0}, Llenovo/view/PagerTitleStrip;->animateToTab(I)V

    .line 301
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "isSelected":Z
    :cond_3
    move v1, v5

    .line 306
    goto :goto_2

    .line 315
    .end local v3    # "tabView":Llenovo/view/PagerTitleStrip$TabView;
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_4
    iget-boolean v5, p0, Llenovo/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v5, :cond_0

    goto :goto_0
.end method
