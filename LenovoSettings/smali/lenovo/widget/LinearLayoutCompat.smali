.class public Llenovo/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/LinearLayoutCompat$LayoutParams;,
        Llenovo/widget/LinearLayoutCompat$DividerMode;,
        Llenovo/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput-boolean v4, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 105
    iput v6, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 112
    iput v5, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 116
    const v3, 0x800033

    iput v3, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    .line 151
    sget-object v3, Lcom/lenovo/component/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 155
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 156
    invoke-virtual {p0, v2}, Llenovo/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 159
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 160
    if-ltz v2, :cond_1

    .line 161
    invoke-virtual {p0, v2}, Llenovo/widget/LinearLayoutCompat;->setGravity(I)V

    .line 164
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 165
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_2

    .line 166
    invoke-virtual {p0, v1}, Llenovo/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 169
    :cond_2
    const/4 v3, 0x4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Llenovo/widget/LinearLayoutCompat;->mWeightSum:F

    .line 171
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 174
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Llenovo/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 176
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Llenovo/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Llenovo/widget/LinearLayoutCompat;->mShowDividers:I

    .line 178
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Llenovo/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 180
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1312
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1314
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 1315
    invoke-virtual {p0, v6}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1316
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1317
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 1319
    .local v7, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    iget v0, v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1322
    iget v8, v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1323
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1326
    invoke-virtual/range {v0 .. v5}, Llenovo/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1327
    iput v8, v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1314
    .end local v7    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "oldWidth":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1331
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 889
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 891
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 892
    invoke-virtual {p0, v6}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 893
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 894
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 896
    .local v7, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    iget v0, v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 899
    iget v8, v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 900
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 903
    invoke-virtual/range {v0 .. v5}, Llenovo/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 904
    iput v8, v7, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 891
    .end local v7    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 908
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1640
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1641
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1736
    instance-of v0, p1, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 317
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v1

    .line 318
    .local v1, "count":I
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 319
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 320
    invoke-virtual {p0, v2}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 323
    invoke-virtual {p0, v2}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 326
    .local v4, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 331
    .local v5, "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Llenovo/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 319
    .end local v4    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .restart local v4    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_1

    .line 336
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_2
    invoke-virtual {p0, v1}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 337
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 340
    if-eqz v3, :cond_4

    .line 341
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    .line 353
    .restart local v5    # "position":I
    :goto_2
    invoke-virtual {p0, p1, v5}, Llenovo/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 355
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3
    return-void

    .line 343
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 346
    .end local v5    # "position":I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 347
    .restart local v4    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v3, :cond_6

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 350
    .end local v5    # "position":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 290
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    .line 291
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 292
    invoke-virtual {p0, v3}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 295
    invoke-virtual {p0, v3}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 297
    .local v4, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Llenovo/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int v5, v6, v7

    .line 298
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Llenovo/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 291
    .end local v4    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 305
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 306
    .local v0, "bottom":I
    if-nez v1, :cond_3

    .line 307
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Llenovo/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 312
    :goto_1
    invoke-virtual {p0, p1, v0}, Llenovo/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 314
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    .line 309
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 310
    .restart local v4    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 358
    iget-object v0, p0, Llenovo/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Llenovo/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Llenovo/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Llenovo/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    iget-object v0, p0, Llenovo/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 364
    iget-object v0, p0, Llenovo/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Llenovo/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Llenovo/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    iget-object v0, p0, Llenovo/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Llenovo/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1719
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    if-nez v0, :cond_0

    .line 1720
    new-instance v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v2, v2}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 1724
    :goto_0
    return-object v0

    .line 1721
    :cond_0
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1722
    new-instance v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Llenovo/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Llenovo/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1706
    new-instance v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1729
    new-instance v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 418
    iget v6, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v6, :cond_1

    .line 419
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 466
    :cond_0
    :goto_0
    return v5

    .line 422
    :cond_1
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getChildCount()I

    move-result v6

    iget v7, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gt v6, v7, :cond_2

    .line 423
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 427
    :cond_2
    iget v6, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v6}, Llenovo/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 428
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 430
    .local v1, "childBaseline":I
    if-ne v1, v5, :cond_3

    .line 431
    iget v6, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-eqz v6, :cond_0

    .line 437
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 447
    :cond_3
    iget v2, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 449
    .local v2, "childTop":I
    iget v5, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 450
    iget v5, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 451
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 452
    sparse-switch v4, :sswitch_data_0

    .line 465
    .end local v4    # "majorGravity":I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 466
    .local v3, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v3, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_0

    .line 454
    .end local v3    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .restart local v4    # "majorGravity":I
    :sswitch_0
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v5, v6

    .line 455
    goto :goto_1

    .line 458
    :sswitch_1
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_1

    .line 452
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Llenovo/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1384
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1396
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1662
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Llenovo/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 560
    if-nez p1, :cond_2

    .line 561
    iget v4, p0, Llenovo/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 561
    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 563
    iget v4, p0, Llenovo/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 564
    :cond_3
    iget v2, p0, Llenovo/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 567
    invoke-virtual {p0, v1}, Llenovo/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    .line 568
    const/4 v0, 0x1

    :cond_4
    move v2, v0

    .line 572
    goto :goto_0

    .line 566
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "hasVisibleViewBefore":Z
    .end local v1    # "i":I
    :cond_6
    move v2, v3

    .line 574
    goto :goto_0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Llenovo/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 30
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1516
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v20

    .line 1517
    .local v20, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v27

    .line 1523
    .local v27, "paddingTop":I
    sub-int v18, p4, p2

    .line 1524
    .local v18, "height":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v2

    sub-int v10, v18, v2

    .line 1527
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v13, v2, v4

    .line 1529
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v14

    .line 1531
    .local v14, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 1532
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    iget v2, v0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1534
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Llenovo/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1536
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v24, v0

    .line 1537
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v25, v0

    .line 1539
    .local v25, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->getLayoutDirection(Landroid/view/View;)I

    move-result v21

    .line 1540
    .local v21, "layoutDirection":I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1553
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v12

    .line 1557
    .local v12, "childLeft":I
    :goto_0
    const/16 v28, 0x0

    .line 1558
    .local v28, "start":I
    const/16 v16, 0x1

    .line 1560
    .local v16, "dir":I
    if-eqz v20, :cond_0

    .line 1561
    add-int/lit8 v28, v14, -0x1

    .line 1562
    const/16 v16, -0x1

    .line 1565
    :cond_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 1566
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 1567
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1569
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    .line 1570
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Llenovo/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 1565
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1543
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childLeft":I
    .end local v16    # "dir":I
    .end local v19    # "i":I
    .end local v28    # "start":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v4, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v12, v2, v4

    .line 1544
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 1548
    .end local v12    # "childLeft":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    sub-int v4, p3, p1

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 1549
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 1571
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v16    # "dir":I
    .restart local v19    # "i":I
    .restart local v28    # "start":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 1572
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1573
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1574
    .local v7, "childHeight":I
    const/4 v9, -0x1

    .line 1576
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 1579
    .local v22, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v8, :cond_3

    move-object/from16 v0, v22

    iget v2, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 1580
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1583
    :cond_3
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 1584
    .local v17, "gravity":I
    if-gez v17, :cond_4

    .line 1585
    move/from16 v17, v26

    .line 1588
    :cond_4
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 1620
    move/from16 v5, v27

    .line 1624
    .local v5, "childTop":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1625
    move-object/from16 v0, p0

    iget v2, v0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v12, v2

    .line 1628
    :cond_6
    move-object/from16 v0, v22

    iget v2, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    .line 1629
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Llenovo/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Llenovo/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1631
    move-object/from16 v0, v22

    iget v2, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1634
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Llenovo/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_2

    .line 1590
    .end local v5    # "childTop":I
    :sswitch_2
    move-object/from16 v0, v22

    iget v2, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v5, v27, v2

    .line 1591
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1592
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_3

    .line 1608
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    move-object/from16 v0, v22

    iget v4, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v22

    iget v4, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1610
    .restart local v5    # "childTop":I
    goto :goto_3

    .line 1613
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1614
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1615
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 1616
    .local v15, "descent":I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    .line 1617
    goto :goto_3

    .line 1637
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "childBaseline":I
    .end local v11    # "childIndex":I
    .end local v15    # "descent":I
    .end local v17    # "gravity":I
    .end local v22    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    :cond_7
    return-void

    .line 1540
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1588
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 21
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1421
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v18

    .line 1427
    .local v18, "paddingLeft":I
    sub-int v19, p3, p1

    .line 1428
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v8, v19, v1

    .line 1431
    .local v8, "childRight":I
    sub-int v1, v19, v18

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int v9, v1, v4

    .line 1433
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 1435
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 1436
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 1438
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_0

    .line 1451
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v10

    .line 1455
    .local v10, "childTop":I
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 1456
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1457
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_1

    .line 1458
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Llenovo/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1455
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1441
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .end local v13    # "i":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    add-int v1, v1, p4

    sub-int v1, v1, p2

    move-object/from16 v0, p0

    iget v4, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v10, v1, v4

    .line 1442
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 1446
    .end local v10    # "childTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 1447
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 1459
    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 1460
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1461
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1463
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 1466
    .local v15, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    iget v12, v15, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1467
    .local v12, "gravity":I
    if-gez v12, :cond_2

    .line 1468
    move/from16 v12, v17

    .line 1470
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->getLayoutDirection(Landroid/view/View;)I

    move-result v14

    .line 1471
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 1473
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 1485
    iget v1, v15, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v3, v18, v1

    .line 1489
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1490
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v10, v1

    .line 1493
    :cond_3
    iget v1, v15, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    .line 1494
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Llenovo/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Llenovo/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1496
    iget v1, v15, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 1498
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Llenovo/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_2

    .line 1475
    .end local v3    # "childLeft":I
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    iget v4, v15, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v15, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1477
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 1480
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    iget v4, v15, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1481
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 1501
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v12    # "gravity":I
    .end local v14    # "layoutDirection":I
    .end local v15    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    :cond_4
    return-void

    .line 1438
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1473
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    .line 1372
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Llenovo/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1374
    return-void
.end method

.method measureHorizontal(II)V
    .locals 47
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 922
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 923
    const/16 v35, 0x0

    .line 924
    .local v35, "maxHeight":I
    const/16 v18, 0x0

    .line 925
    .local v18, "childState":I
    const/4 v11, 0x0

    .line 926
    .local v11, "alternativeMaxHeight":I
    const/16 v43, 0x0

    .line 927
    .local v43, "weightedMaxHeight":I
    const/4 v10, 0x1

    .line 928
    .local v10, "allFillParent":Z
    const/16 v40, 0x0

    .line 930
    .local v40, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v20

    .line 932
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v44

    .line 933
    .local v44, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 935
    .local v25, "heightMode":I
    const/16 v31, 0x0

    .line 936
    .local v31, "matchHeight":Z
    const/16 v38, 0x0

    .line 938
    .local v38, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v3, :cond_1

    .line 939
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Llenovo/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 940
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Llenovo/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 943
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v33, v0

    .line 944
    .local v33, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v34, v0

    .line 946
    .local v34, "maxDescent":[I
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 947
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 949
    move-object/from16 v0, p0

    iget-boolean v13, v0, Llenovo/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 950
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v41, v0

    .line 952
    .local v41, "useLargestChild":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-ne v0, v3, :cond_2

    const/16 v27, 0x1

    .line 954
    .local v27, "isExactly":Z
    :goto_0
    const/high16 v28, -0x80000000

    .line 957
    .local v28, "largestChildWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_15

    .line 958
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 960
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_3

    .line 961
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 957
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 952
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v27    # "isExactly":Z
    .end local v28    # "largestChildWidth":I
    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    .line 965
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v27    # "isExactly":Z
    .restart local v28    # "largestChildWidth":I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 966
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Llenovo/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 967
    goto :goto_2

    .line 970
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 971
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 974
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 977
    .local v29, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v40, v40, v3

    .line 979
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-ne v0, v3, :cond_b

    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v3, :cond_b

    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    .line 983
    if-eqz v27, :cond_9

    .line 984
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move-object/from16 v0, v29

    iget v7, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 996
    :goto_3
    if-eqz v13, :cond_a

    .line 997
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 998
    .local v23, "freeSpec":I
    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1041
    .end local v23    # "freeSpec":I
    :cond_6
    :goto_4
    const/16 v32, 0x0

    .line 1042
    .local v32, "matchHeightLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v3, :cond_7

    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_7

    .line 1046
    const/16 v31, 0x1

    .line 1047
    const/16 v32, 0x1

    .line 1050
    :cond_7
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v30, v3, v6

    .line 1051
    .local v30, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 1052
    .local v16, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v18

    .line 1055
    if-eqz v13, :cond_8

    .line 1056
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1057
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_8

    .line 1060
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    :goto_5
    and-int/lit8 v24, v3, 0x70

    .line 1062
    .local v24, "gravity":I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1065
    .local v26, "index":I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 1066
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    .line 1070
    .end local v14    # "childBaseline":I
    .end local v24    # "gravity":I
    .end local v26    # "index":I
    :cond_8
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1072
    if-eqz v10, :cond_11

    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_11

    const/4 v10, 0x1

    .line 1073
    :goto_6
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_13

    .line 1078
    if-eqz v32, :cond_12

    .end local v30    # "margin":I
    :goto_7
    move/from16 v0, v43

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 1085
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Llenovo/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 986
    .end local v16    # "childHeight":I
    .end local v32    # "matchHeightLocally":Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v39, v0

    .line 987
    .local v39, "totalLength":I
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v3, v3, v39

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_3

    .line 1000
    .end local v39    # "totalLength":I
    :cond_a
    const/16 v38, 0x1

    goto/16 :goto_4

    .line 1003
    :cond_b
    const/high16 v36, -0x80000000

    .line 1005
    .local v36, "oldWidth":I
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v3, :cond_c

    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    .line 1010
    const/16 v36, 0x0

    .line 1011
    const/4 v3, -0x2

    move-object/from16 v0, v29

    iput v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1018
    :cond_c
    const/4 v3, 0x0

    cmpl-float v3, v40, v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget v7, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Llenovo/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1022
    const/high16 v3, -0x80000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_d

    .line 1023
    move/from16 v0, v36

    move-object/from16 v1, v29

    iput v0, v1, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1026
    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1027
    .local v19, "childWidth":I
    if-eqz v27, :cond_f

    .line 1028
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v6, v6, v19

    move-object/from16 v0, v29

    iget v7, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1036
    :goto_a
    if-eqz v41, :cond_6

    .line 1037
    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_4

    .line 1018
    .end local v19    # "childWidth":I
    :cond_e
    const/4 v7, 0x0

    goto :goto_9

    .line 1031
    .restart local v19    # "childWidth":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v39, v0

    .line 1032
    .restart local v39    # "totalLength":I
    add-int v3, v39, v19

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_a

    .line 1060
    .end local v19    # "childWidth":I
    .end local v36    # "oldWidth":I
    .end local v39    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v30    # "margin":I
    .restart local v32    # "matchHeightLocally":Z
    :cond_10
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto/16 :goto_5

    .line 1072
    .end local v14    # "childBaseline":I
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_12
    move/from16 v30, v16

    .line 1078
    goto/16 :goto_7

    .line 1081
    :cond_13
    if-eqz v32, :cond_14

    .end local v30    # "margin":I
    :goto_b
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_8

    .restart local v30    # "margin":I
    :cond_14
    move/from16 v30, v16

    goto :goto_b

    .line 1088
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v29    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v30    # "margin":I
    .end local v32    # "matchHeightLocally":Z
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1089
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1094
    :cond_16
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_18

    .line 1098
    :cond_17
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1101
    .local v12, "ascent":I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1104
    .local v22, "descent":I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1107
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    :cond_18
    if-eqz v41, :cond_1d

    const/high16 v3, -0x80000000

    move/from16 v0, v44

    if-eq v0, v3, :cond_19

    if-nez v44, :cond_1d

    .line 1109
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1111
    const/4 v5, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v5, v0, :cond_1d

    .line 1112
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1114
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_1a

    .line 1115
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1111
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1119
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1b

    .line 1120
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Llenovo/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1121
    goto :goto_d

    .line 1124
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 1126
    .restart local v29    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v27, :cond_1c

    .line 1127
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v6, v6, v28

    move-object/from16 v0, v29

    iget v7, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_d

    .line 1130
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v39, v0

    .line 1131
    .restart local v39    # "totalLength":I
    add-int v3, v39, v28

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_d

    .line 1138
    .end local v4    # "child":Landroid/view/View;
    .end local v29    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v39    # "totalLength":I
    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1140
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v45, v0

    .line 1143
    .local v45, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v45

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v45

    .line 1146
    const/4 v3, 0x0

    move/from16 v0, v45

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Llenovo/widget/LinearLayoutCompat;->resolveSizeAndState(III)I

    move-result v46

    .line 1147
    .local v46, "widthSizeAndState":I
    const v3, 0xffffff

    and-int v45, v46, v3

    .line 1152
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v21, v45, v3

    .line 1153
    .local v21, "delta":I
    if-nez v38, :cond_1e

    if-eqz v21, :cond_31

    const/4 v3, 0x0

    cmpl-float v3, v40, v3

    if-lez v3, :cond_31

    .line 1154
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v42, v0

    .line 1156
    .local v42, "weightSum":F
    :goto_e
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 1157
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 1158
    const/16 v35, -0x1

    .line 1160
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1162
    const/4 v5, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v5, v0, :cond_2c

    .line 1163
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1165
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_21

    .line 1162
    :cond_1f
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .end local v4    # "child":Landroid/view/View;
    .end local v42    # "weightSum":F
    :cond_20
    move/from16 v42, v40

    .line 1154
    goto :goto_e

    .line 1169
    .restart local v4    # "child":Landroid/view/View;
    .restart local v42    # "weightSum":F
    :cond_21
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 1172
    .restart local v29    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v29

    iget v15, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1173
    .local v15, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_24

    .line 1175
    move/from16 v0, v21

    int-to-float v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v42

    float-to-int v0, v3

    move/from16 v37, v0

    .line 1176
    .local v37, "share":I
    sub-float v42, v42, v15

    .line 1177
    sub-int v21, v21, v37

    .line 1179
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Llenovo/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v17

    .line 1186
    .local v17, "childHeightMeasureSpec":I
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v3, :cond_22

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-eq v0, v3, :cond_25

    .line 1189
    :cond_22
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v37

    .line 1190
    .restart local v19    # "childWidth":I
    if-gez v19, :cond_23

    .line 1191
    const/16 v19, 0x0

    .line 1194
    :cond_23
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1205
    .end local v19    # "childWidth":I
    .end local v37    # "share":I
    :goto_11
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x1000000

    and-int/2addr v3, v6

    move/from16 v0, v18

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v18

    .line 1209
    .end local v17    # "childHeightMeasureSpec":I
    :cond_24
    if-eqz v27, :cond_27

    .line 1210
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v29

    iget v7, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, v29

    iget v7, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1218
    :goto_12
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v3, :cond_28

    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_28

    const/16 v32, 0x1

    .line 1221
    .restart local v32    # "matchHeightLocally":Z
    :goto_13
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v30, v3, v6

    .line 1222
    .restart local v30    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 1223
    .restart local v16    # "childHeight":I
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1224
    if-eqz v32, :cond_29

    .end local v30    # "margin":I
    :goto_14
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1227
    if-eqz v10, :cond_2a

    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2a

    const/4 v10, 0x1

    .line 1229
    :goto_15
    if-eqz v13, :cond_1f

    .line 1230
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1231
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_1f

    .line 1233
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v3, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    :goto_16
    and-int/lit8 v24, v3, 0x70

    .line 1235
    .restart local v24    # "gravity":I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1238
    .restart local v26    # "index":I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 1239
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    goto/16 :goto_10

    .line 1199
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v24    # "gravity":I
    .end local v26    # "index":I
    .end local v32    # "matchHeightLocally":Z
    .restart local v17    # "childHeightMeasureSpec":I
    .restart local v37    # "share":I
    :cond_25
    if-lez v37, :cond_26

    .end local v37    # "share":I
    :goto_17
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_11

    .restart local v37    # "share":I
    :cond_26
    const/16 v37, 0x0

    goto :goto_17

    .line 1213
    .end local v17    # "childHeightMeasureSpec":I
    .end local v37    # "share":I
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v39, v0

    .line 1214
    .restart local v39    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v39

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_12

    .line 1218
    .end local v39    # "totalLength":I
    :cond_28
    const/16 v32, 0x0

    goto/16 :goto_13

    .restart local v16    # "childHeight":I
    .restart local v30    # "margin":I
    .restart local v32    # "matchHeightLocally":Z
    :cond_29
    move/from16 v30, v16

    .line 1224
    goto/16 :goto_14

    .line 1227
    .end local v30    # "margin":I
    :cond_2a
    const/4 v10, 0x0

    goto :goto_15

    .line 1233
    .restart local v14    # "childBaseline":I
    :cond_2b
    move-object/from16 v0, v29

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto :goto_16

    .line 1246
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v15    # "childExtra":F
    .end local v16    # "childHeight":I
    .end local v29    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v32    # "matchHeightLocally":Z
    :cond_2c
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1251
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2d

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2d

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2d

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2e

    .line 1255
    :cond_2d
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1258
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1261
    .restart local v22    # "descent":I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1290
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    .end local v42    # "weightSum":F
    :cond_2e
    if-nez v10, :cond_2f

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v3, :cond_2f

    .line 1291
    move/from16 v35, v11

    .line 1294
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    add-int v35, v35, v3

    .line 1297
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1299
    const/high16 v3, -0x1000000

    and-int v3, v3, v18

    or-int v3, v3, v46

    shl-int/lit8 v6, v18, 0x10

    move/from16 v0, v35

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Llenovo/widget/LinearLayoutCompat;->resolveSizeAndState(III)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Llenovo/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1303
    if-eqz v31, :cond_30

    .line 1304
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Llenovo/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    .line 1306
    :cond_30
    return-void

    .line 1264
    :cond_31
    move/from16 v0, v43

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1268
    if-eqz v41, :cond_2e

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-eq v0, v3, :cond_2e

    .line 1269
    const/4 v5, 0x0

    :goto_18
    move/from16 v0, v20

    if-ge v5, v0, :cond_2e

    .line 1270
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1272
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_33

    .line 1269
    :cond_32
    :goto_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1276
    :cond_33
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 1279
    .restart local v29    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v29

    iget v15, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1280
    .restart local v15    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_32

    .line 1281
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_19
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 1353
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 38
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 589
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 590
    const/16 v27, 0x0

    .line 591
    .local v27, "maxWidth":I
    const/4 v15, 0x0

    .line 592
    .local v15, "childState":I
    const/4 v11, 0x0

    .line 593
    .local v11, "alternativeMaxWidth":I
    const/16 v36, 0x0

    .line 594
    .local v36, "weightedMaxWidth":I
    const/4 v10, 0x1

    .line 595
    .local v10, "allFillParent":Z
    const/16 v33, 0x0

    .line 597
    .local v33, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v17

    .line 599
    .local v17, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v37

    .line 600
    .local v37, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 602
    .local v19, "heightMode":I
    const/16 v25, 0x0

    .line 603
    .local v25, "matchWidth":Z
    const/16 v31, 0x0

    .line 605
    .local v31, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget v12, v0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 606
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v34, v0

    .line 608
    .local v34, "useLargestChild":Z
    const/high16 v22, -0x80000000

    .line 611
    .local v22, "largestChildHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_f

    .line 612
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 614
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 615
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 611
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1

    .line 620
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Llenovo/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 621
    goto :goto_1

    .line 624
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Llenovo/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 628
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 630
    .local v23, "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v33, v33, v3

    .line 632
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v3, :cond_5

    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    .line 637
    .local v32, "totalLength":I
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v3, v3, v32

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 638
    const/16 v31, 0x1

    .line 677
    :cond_3
    :goto_2
    if-ltz v12, :cond_4

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_4

    .line 678
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 684
    :cond_4
    if-ge v5, v12, :cond_9

    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 685
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 640
    .end local v32    # "totalLength":I
    :cond_5
    const/high16 v29, -0x80000000

    .line 642
    .local v29, "oldHeight":I
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v3, :cond_6

    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    .line 647
    const/16 v29, 0x0

    .line 648
    const/4 v3, -0x2

    move-object/from16 v0, v23

    iput v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 655
    :cond_6
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v33, v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Llenovo/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 659
    const/high16 v3, -0x80000000

    move/from16 v0, v29

    if-eq v0, v3, :cond_7

    .line 660
    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 663
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 664
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    .line 665
    .restart local v32    # "totalLength":I
    add-int v3, v32, v14

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 668
    if-eqz v34, :cond_3

    .line 669
    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_2

    .line 655
    .end local v14    # "childHeight":I
    .end local v32    # "totalLength":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 691
    .end local v29    # "oldHeight":I
    .restart local v32    # "totalLength":I
    :cond_9
    const/16 v26, 0x0

    .line 692
    .local v26, "matchWidthLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_a

    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_a

    .line 697
    const/16 v25, 0x1

    .line 698
    const/16 v26, 0x1

    .line 701
    :cond_a
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 702
    .local v24, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 703
    .local v28, "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 704
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v15

    .line 707
    if-eqz v10, :cond_b

    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_b

    const/4 v10, 0x1

    .line 708
    :goto_4
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    .line 713
    if-eqz v26, :cond_c

    .end local v24    # "margin":I
    :goto_5
    move/from16 v0, v36

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 720
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Llenovo/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 707
    .restart local v24    # "margin":I
    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    :cond_c
    move/from16 v24, v28

    .line 713
    goto :goto_5

    .line 716
    :cond_d
    if-eqz v26, :cond_e

    .end local v24    # "margin":I
    :goto_7
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    .restart local v24    # "margin":I
    :cond_e
    move/from16 v24, v28

    goto :goto_7

    .line 723
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "margin":I
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v32    # "totalLength":I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 724
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Llenovo/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 727
    :cond_10
    if-eqz v34, :cond_14

    const/high16 v3, -0x80000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_11

    if-nez v19, :cond_14

    .line 729
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 731
    const/4 v5, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v5, v0, :cond_14

    .line 732
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 734
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_12

    .line 735
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 731
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 739
    :cond_12
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_13

    .line 740
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Llenovo/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 741
    goto :goto_9

    .line 744
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 747
    .restart local v23    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    .line 748
    .restart local v32    # "totalLength":I
    add-int v3, v32, v22

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_9

    .line 754
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v32    # "totalLength":I
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v20, v0

    .line 759
    .local v20, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 762
    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Llenovo/widget/LinearLayoutCompat;->resolveSizeAndState(III)I

    move-result v21

    .line 763
    .local v21, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v20, v21, v3

    .line 768
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v18, v20, v3

    .line 769
    .local v18, "delta":I
    if-nez v31, :cond_15

    if-eqz v18, :cond_24

    const/4 v3, 0x0

    cmpl-float v3, v33, v3

    if-lez v3, :cond_24

    .line 770
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v35, v0

    .line 772
    .local v35, "weightSum":F
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 774
    const/4 v5, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v5, v0, :cond_20

    .line 775
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 777
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_17

    .line 774
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .end local v4    # "child":Landroid/view/View;
    .end local v35    # "weightSum":F
    :cond_16
    move/from16 v35, v33

    .line 770
    goto :goto_a

    .line 781
    .restart local v4    # "child":Landroid/view/View;
    .restart local v35    # "weightSum":F
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 783
    .restart local v23    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 784
    .local v13, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_1a

    .line 786
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v35

    float-to-int v0, v3

    move/from16 v30, v0

    .line 787
    .local v30, "share":I
    sub-float v35, v35, v13

    .line 788
    sub-int v18, v18, v30

    .line 790
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Llenovo/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v16

    .line 796
    .local v16, "childWidthMeasureSpec":I
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v3, :cond_18

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v0, v3, :cond_1b

    .line 799
    :cond_18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v30

    .line 800
    .restart local v14    # "childHeight":I
    if-gez v14, :cond_19

    .line 801
    const/4 v14, 0x0

    .line 804
    :cond_19
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 815
    .end local v14    # "childHeight":I
    .end local v30    # "share":I
    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v15, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v15

    .line 820
    .end local v16    # "childWidthMeasureSpec":I
    :cond_1a
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 821
    .restart local v24    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 822
    .restart local v28    # "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 824
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_1d

    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1d

    const/16 v26, 0x1

    .line 827
    .restart local v26    # "matchWidthLocally":Z
    :goto_e
    if-eqz v26, :cond_1e

    .end local v24    # "margin":I
    :goto_f
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 830
    if-eqz v10, :cond_1f

    move-object/from16 v0, v23

    iget v3, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1f

    const/4 v10, 0x1

    .line 832
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    .line 833
    .restart local v32    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v32

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llenovo/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_c

    .line 809
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v32    # "totalLength":I
    .restart local v16    # "childWidthMeasureSpec":I
    .restart local v30    # "share":I
    :cond_1b
    if-lez v30, :cond_1c

    .end local v30    # "share":I
    :goto_11
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    goto :goto_d

    .restart local v30    # "share":I
    :cond_1c
    const/16 v30, 0x0

    goto :goto_11

    .line 824
    .end local v16    # "childWidthMeasureSpec":I
    .end local v30    # "share":I
    .restart local v24    # "margin":I
    .restart local v28    # "measuredWidth":I
    :cond_1d
    const/16 v26, 0x0

    goto :goto_e

    .restart local v26    # "matchWidthLocally":Z
    :cond_1e
    move/from16 v24, v28

    .line 827
    goto :goto_f

    .line 830
    .end local v24    # "margin":I
    :cond_1f
    const/4 v10, 0x0

    goto :goto_10

    .line 838
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Llenovo/widget/LinearLayoutCompat;->mTotalLength:I

    .line 870
    .end local v35    # "weightSum":F
    :cond_21
    if-nez v10, :cond_22

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_22

    .line 871
    move/from16 v27, v11

    .line 874
    :cond_22
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    add-int v27, v27, v3

    .line 877
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 879
    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Llenovo/widget/LinearLayoutCompat;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Llenovo/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 882
    if-eqz v25, :cond_23

    .line 883
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Llenovo/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 885
    :cond_23
    return-void

    .line 841
    :cond_24
    move/from16 v0, v36

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 847
    if-eqz v34, :cond_21

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v0, v3, :cond_21

    .line 848
    const/4 v5, 0x0

    :goto_12
    move/from16 v0, v17

    if-ge v5, v0, :cond_21

    .line 849
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 851
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_26

    .line 848
    :cond_25
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 855
    :cond_26
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .line 858
    .restart local v23    # "lp":Llenovo/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 859
    .restart local v13    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_25

    .line 860
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 278
    iget-object v0, p0, Llenovo/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 283
    invoke-virtual {p0, p1}, Llenovo/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0, p1}, Llenovo/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1740
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1741
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1742
    const-class v0, Llenovo/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1744
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1747
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1748
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1749
    const-class v0, Llenovo/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1751
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1401
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1402
    invoke-virtual {p0, p2, p3, p4, p5}, Llenovo/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Llenovo/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 545
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 546
    invoke-virtual {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat;->measureVertical(II)V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-virtual {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 388
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 483
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_1
    iput p1, p0, Llenovo/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 488
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Llenovo/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 231
    :cond_0
    iput-object p1, p0, Llenovo/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 232
    if-eqz p1, :cond_2

    .line 233
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Llenovo/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 239
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Llenovo/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 240
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->requestLayout()V

    goto :goto_0

    .line 236
    :cond_2
    iput v0, p0, Llenovo/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 237
    iput v0, p0, Llenovo/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 253
    iput p1, p0, Llenovo/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 254
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1674
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1675
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1676
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1679
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1680
    or-int/lit8 p1, p1, 0x30

    .line 1683
    :cond_1
    iput p1, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    .line 1684
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->requestLayout()V

    .line 1686
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I

    .prologue
    const v2, 0x800007

    .line 1689
    and-int v0, p1, v2

    .line 1690
    .local v0, "gravity":I
    iget v1, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1691
    iget v1, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    .line 1692
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->requestLayout()V

    .line 1694
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Llenovo/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 414
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1649
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1650
    iput p1, p0, Llenovo/widget/LinearLayoutCompat;->mOrientation:I

    .line 1651
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->requestLayout()V

    .line 1653
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .prologue
    .line 191
    iget v0, p0, Llenovo/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 192
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->requestLayout()V

    .line 194
    :cond_0
    iput p1, p0, Llenovo/widget/LinearLayoutCompat;->mShowDividers:I

    .line 195
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I

    .prologue
    .line 1697
    and-int/lit8 v0, p1, 0x70

    .line 1698
    .local v0, "gravity":I
    iget v1, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1699
    iget v1, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Llenovo/widget/LinearLayoutCompat;->mGravity:I

    .line 1700
    invoke-virtual {p0}, Llenovo/widget/LinearLayoutCompat;->requestLayout()V

    .line 1702
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Llenovo/widget/LinearLayoutCompat;->mWeightSum:F

    .line 541
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method
