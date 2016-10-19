.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$1;,
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private final DEFAULT_SLIDER_DRAWABLE_HEIGHT:F

.field private final DEFAULT_TAB_OFFSET:I

.field private final mBounds:Landroid/graphics/Rect;

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field mItemOffset:I

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/RectF;

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field mSliderDrawableHeight:F

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, -0x1

    const v4, 0x3fa66666    # 1.3f

    const/4 v3, 0x1

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    iput v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 64
    iput-boolean v3, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 67
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 70
    iput v5, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 74
    const/16 v2, 0x10

    iput v2, p0, Landroid/widget/TabWidget;->DEFAULT_TAB_OFFSET:I

    .line 75
    iput v4, p0, Landroid/widget/TabWidget;->DEFAULT_SLIDER_DRAWABLE_HEIGHT:F

    .line 76
    const/16 v2, 0x30

    iput v2, p0, Landroid/widget/TabWidget;->mItemOffset:I

    .line 77
    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroid/widget/TabWidget;->mSliderDrawableHeight:F

    .line 78
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/TabWidget;->mPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/TabWidget;->mRect:Landroid/graphics/RectF;

    .line 96
    sget-object v2, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 100
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v1, "density":F
    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/TabWidget;->mItemOffset:I

    .line 108
    mul-float v2, v1, v4

    iput v2, p0, Landroid/widget/TabWidget;->mSliderDrawableHeight:F

    .line 109
    iget-object v2, p0, Landroid/widget/TabWidget;->mPaint:Landroid/graphics/Paint;

    const v3, -0xd3520f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    .end local v1    # "density":F
    :cond_0
    invoke-direct {p0}, Landroid/widget/TabWidget;->initTabWidget()V

    .line 113
    return-void
.end method

.method static synthetic access$100(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TabWidget;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 141
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    .line 145
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_2

    .line 147
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 148
    const v1, 0x10806dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 151
    :cond_0
    iget-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 152
    const v1, 0x10806de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->setFocusable(Z)V

    .line 170
    invoke-virtual {p0, p0}, Landroid/widget/TabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    return-void

    .line 157
    :cond_2
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 158
    const v1, 0x10806db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 161
    :cond_3
    iget-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 162
    const v1, 0x10806dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 527
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 530
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 536
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 538
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 544
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 338
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 339
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 343
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mSelectedTab:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x1020016

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 348
    .local v5, "currentView":Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v9

    .line 350
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v19

    sub-int v19, v19, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v20

    sub-int v18, v19, v20

    .line 351
    .local v18, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getPaddingBottom()I

    move-result v20

    sub-int v17, v19, v20

    .line 352
    .local v17, "viewHeight":I
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    .line 353
    .local v16, "textWidth":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v6, v19, v20

    .line 354
    .local v6, "itemWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mItemOffset:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v16

    cmpl-float v19, v19, v6

    if-lez v19, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mItemOffset:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v16, v6, v19

    .line 357
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mSelectedTab:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v6

    int-to-float v0, v9

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v6, v20

    add-float v4, v19, v20

    .line 358
    .local v4, "centerItem":F
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v16, v19

    sub-float v19, v4, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mItemOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v13, v19, v20

    .line 359
    .local v13, "sliderItemLeft":F
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v16, v19

    add-float v19, v19, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mItemOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v14, v19, v20

    .line 360
    .local v14, "sliderItemRight":F
    move/from16 v0, v17

    int-to-float v12, v0

    .line 361
    .local v12, "sliderItemBottom":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mSliderDrawableHeight:F

    move/from16 v20, v0

    sub-float v15, v19, v20

    .line 362
    .local v15, "sliderItemTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v13, v0, Landroid/graphics/RectF;->left:F

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v14, v0, Landroid/graphics/RectF;->right:F

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v15, v0, Landroid/graphics/RectF;->top:F

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v12, v0, Landroid/graphics/RectF;->bottom:F

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 372
    .end local v4    # "centerItem":F
    .end local v5    # "currentView":Landroid/widget/TextView;
    .end local v6    # "itemWidth":F
    .end local v9    # "paddingLeft":I
    .end local v12    # "sliderItemBottom":F
    .end local v13    # "sliderItemLeft":F
    .end local v14    # "sliderItemRight":F
    .end local v15    # "sliderItemTop":F
    .end local v16    # "textWidth":F
    .end local v17    # "viewHeight":I
    .end local v18    # "viewWidth":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v19

    if-nez v19, :cond_3

    .line 403
    :cond_2
    :goto_0
    return-void

    .line 376
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mSelectedTab:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v11

    .line 383
    .local v11, "selectedChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 384
    .local v7, "leftStrip":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 386
    .local v10, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/view/View;->getDrawableState()[I

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 387
    invoke-virtual {v11}, Landroid/view/View;->getDrawableState()[I

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TabWidget;->mStripMoved:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 391
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 392
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v8

    .line 394
    .local v8, "myHeight":I
    const/16 v19, 0x0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    sub-int v20, v8, v20

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 396
    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    sub-int v20, v8, v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v21

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 398
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 401
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "myHeight":I
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 453
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 454
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 456
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 459
    .end local v0    # "tabView":Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 502
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 505
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 508
    if-eq v0, p1, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 511
    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 123
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 133
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 128
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 129
    iget p2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    goto :goto_0

    .line 130
    :cond_2
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 131
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 177
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 180
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 184
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 186
    return-void
.end method

.method measureHorizontal(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-nez v9, :cond_0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 232
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 197
    .local v8, "unspecifiedWidth":I
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 198
    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 200
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 201
    .local v5, "extraWidth":I
    if-lez v5, :cond_6

    .line 202
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    .line 204
    .local v3, "count":I
    const/4 v1, 0x0

    .line 205
    .local v1, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 206
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 205
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 208
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v1, :cond_6

    .line 212
    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    array-length v9, v9

    if-eq v9, v3, :cond_4

    .line 213
    :cond_3
    new-array v9, v3, [I

    iput-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    .line 215
    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 216
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 217
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_5

    .line 215
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 218
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 219
    .local v2, "childWidth":I
    div-int v4, v5, v1

    .line 220
    .local v4, "delta":I
    sub-int v9, v2, v4

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 221
    .local v7, "newWidth":I
    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v7, v9, v6

    .line 223
    sub-int v9, v2, v7

    sub-int/2addr v5, v9

    .line 224
    add-int/lit8 v1, v1, -0x1

    .line 225
    iget v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    goto :goto_4

    .line 231
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childWidth":I
    .end local v3    # "count":I
    .end local v4    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "newWidth":I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 561
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 562
    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    if-eqz p2, :cond_0

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 569
    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 570
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 571
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 572
    iget-object v2, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 573
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 579
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 465
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 467
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 468
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 484
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 119
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 548
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 550
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 433
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 438
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 440
    :cond_2
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 441
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 442
    iput-boolean v2, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 444
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 267
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 517
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 518
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 519
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 288
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 276
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 278
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 279
    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 309
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 297
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 298
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 299
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 300
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0
    .param p1, "stripEnabled"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 321
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 322
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    .prologue
    .line 556
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 557
    return-void
.end method
