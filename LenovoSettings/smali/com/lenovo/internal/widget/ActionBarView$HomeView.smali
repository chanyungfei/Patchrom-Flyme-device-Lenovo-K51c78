.class Lcom/lenovo/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mStartOffset:I

.field private mStartOffset2:I

.field private mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1464
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1465
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1466
    .local v0, "t":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    .line 1468
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1470
    :cond_0
    return-void
.end method

.method private updateUpIndicator()V
    .locals 3

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1509
    :goto_0
    return-void

    .line 1504
    :cond_0
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-static {v1, v2}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1507
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1547
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1531
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1532
    const/4 v0, 0x1

    return v0
.end method

.method public getStartOffset()I
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1584
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartOffset2()I
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1592
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mStartOffset2:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpWidth()I
    .locals 1

    .prologue
    .line 1596
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1522
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1523
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_0

    .line 1525
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1527
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1552
    const/high16 v6, 0x7f0b0000

    invoke-virtual {p0, v6}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 1553
    const v6, 0x102002c

    invoke-virtual {p0, v6}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1554
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1557
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_1

    .line 1558
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    sget-object v9, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    const v10, 0x10102ce

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1560
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1561
    .local v5, "titleStyleRes":I
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1562
    .local v4, "subtitleStyleRes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1564
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Lcom/lenovo/component/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v6, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1565
    .local v1, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 1566
    .local v3, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 1567
    .local v2, "color":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1568
    and-int/lit16 v6, v2, 0xff

    const/16 v8, 0x77

    if-ge v6, v8, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Lcom/lenovo/component/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v6, v4, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1570
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 1571
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 1572
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1574
    :cond_0
    if-eqz v2, :cond_1

    .line 1575
    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1579
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "appearance":Landroid/content/res/TypedArray;
    .end local v2    # "color":I
    .end local v3    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v4    # "subtitleStyleRes":I
    .end local v5    # "titleStyleRes":I
    :cond_1
    return-void

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "appearance":Landroid/content/res/TypedArray;
    .restart local v3    # "colorStateList":Landroid/content/res/ColorStateList;
    .restart local v4    # "subtitleStyleRes":I
    .restart local v5    # "titleStyleRes":I
    :cond_2
    move v2, v7

    .line 1566
    goto :goto_0

    .restart local v2    # "color":I
    :cond_3
    move v2, v7

    .line 1571
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1654
    sub-int v25, p5, p3

    div-int/lit8 v23, v25, 0x2

    .line 1655
    .local v23, "vCenter":I
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    .line 1656
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v24

    .line 1657
    .local v24, "width":I
    const/16 v19, 0x0

    .line 1658
    .local v19, "upOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 1660
    .local v18, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v16

    .line 1661
    .local v16, "upHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v22

    .line 1662
    .local v22, "upWidth":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v19, v25, v26

    .line 1663
    div-int/lit8 v25, v16, 0x2

    sub-int v21, v23, v25

    .line 1664
    .local v21, "upTop":I
    add-int v15, v21, v16

    .line 1667
    .local v15, "upBottom":I
    if-eqz v13, :cond_1

    .line 1668
    move/from16 v20, v24

    .line 1671
    .local v20, "upRight":I
    sub-int v25, v20, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    sub-int v17, v25, v26

    .line 1673
    .local v17, "upLeft":I
    sub-int p4, p4, v19

    .line 1683
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1686
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1687
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 1688
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 1689
    .local v12, "iconWidth":I
    sub-int v25, p4, p2

    div-int/lit8 v5, v25, 0x2

    .line 1690
    .local v5, "hCenter":I
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    div-int/lit8 v26, v7, 0x2

    sub-int v26, v23, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1691
    .local v11, "iconTop":I
    add-int v6, v11, v7

    .line 1694
    .local v6, "iconBottom":I
    invoke-static {v9}, Lcom/lenovo/internal/widget/ViewUtils;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v14

    .line 1695
    .local v14, "marginStart":I
    div-int/lit8 v25, v12, 0x2

    sub-int v25, v5, v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1696
    .local v4, "delta":I
    if-eqz v13, :cond_2

    .line 1697
    sub-int v25, v24, v19

    sub-int v10, v25, v4

    .line 1698
    .local v10, "iconRight":I
    sub-int v8, v10, v12

    .line 1703
    .local v8, "iconLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v11, v10, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1704
    return-void

    .line 1678
    .end local v4    # "delta":I
    .end local v5    # "hCenter":I
    .end local v6    # "iconBottom":I
    .end local v7    # "iconHeight":I
    .end local v8    # "iconLeft":I
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "iconRight":I
    .end local v11    # "iconTop":I
    .end local v12    # "iconWidth":I
    .end local v14    # "marginStart":I
    .restart local v15    # "upBottom":I
    .restart local v16    # "upHeight":I
    .restart local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "upTop":I
    .restart local v22    # "upWidth":I
    :cond_1
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v20, v22, v25

    .line 1679
    .restart local v20    # "upRight":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    .line 1681
    .restart local v17    # "upLeft":I
    add-int p2, p2, v19

    goto :goto_0

    .line 1700
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    .restart local v4    # "delta":I
    .restart local v5    # "hCenter":I
    .restart local v6    # "iconBottom":I
    .restart local v7    # "iconHeight":I
    .restart local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "iconTop":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "marginStart":I
    :cond_2
    add-int v8, v19, v4

    .line 1701
    .restart local v8    # "iconLeft":I
    add-int v10, v8, v12

    .restart local v10    # "iconRight":I
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1602
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1603
    .local v10, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v11, v0, v1

    .line 1604
    .local v11, "upMargins":I
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1605
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int/2addr v0, v11

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    .line 1607
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mStartOffset2:I

    .line 1608
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v3, 0x0

    .line 1609
    .local v3, "width":I
    :goto_0
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1611
    .local v6, "height":I
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 1612
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1613
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1614
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1615
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1622
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1623
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1624
    .local v7, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1625
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1627
    .local v8, "heightSize":I
    sparse-switch v12, :sswitch_data_0

    .line 1638
    :goto_2
    sparse-switch v7, :sswitch_data_1

    .line 1649
    :goto_3
    invoke-virtual {p0, v3, v6}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1650
    return-void

    .line 1608
    .end local v3    # "width":I
    .end local v6    # "height":I
    .end local v7    # "heightMode":I
    .end local v8    # "heightSize":I
    .end local v12    # "widthMode":I
    .end local v13    # "widthSize":I
    :cond_1
    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto :goto_0

    .line 1617
    .restart local v3    # "width":I
    .restart local v6    # "height":I
    :cond_2
    if-gez v11, :cond_0

    .line 1619
    sub-int/2addr v3, v11

    goto :goto_1

    .line 1629
    .restart local v7    # "heightMode":I
    .restart local v8    # "heightSize":I
    .restart local v12    # "widthMode":I
    .restart local v13    # "widthSize":I
    :sswitch_0
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1630
    goto :goto_2

    .line 1632
    :sswitch_1
    move v3, v13

    .line 1633
    goto :goto_2

    .line 1640
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1641
    goto :goto_3

    .line 1643
    :sswitch_3
    move v6, v8

    .line 1644
    goto :goto_3

    .line 1627
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 1638
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1537
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1538
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1539
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1540
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    :cond_0
    return-void
.end method

.method public setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1492
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1493
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1482
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    .line 1477
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1478
    return-void

    .line 1477
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setShowUp(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1474
    return-void

    .line 1473
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1496
    iput p1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1498
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1499
    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1486
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1487
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1488
    return-void
.end method
