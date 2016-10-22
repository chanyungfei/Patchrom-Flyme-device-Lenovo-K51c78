.class public Llenovo/widget/ActionMenuView;
.super Llenovo/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/lenovo/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/ActionMenuView$1;,
        Llenovo/widget/ActionMenuView$LayoutParams;,
        Llenovo/widget/ActionMenuView$ActionMenuChildView;,
        Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Llenovo/widget/ActionMenuView$MenuBuilderCallback;,
        Llenovo/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x40


# instance fields
.field private mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

.field private mContext:Landroid/content/Context;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mHeight:I

.field private mLandlIconColor:Landroid/content/res/ColorStateList;

.field private mLandlTextColor:Landroid/content/res/ColorStateList;

.field private mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPortIconColor:Landroid/content/res/ColorStateList;

.field private mPortTextColor:Landroid/content/res/ColorStateList;

.field private mPresenter:Llenovo/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p0, v5}, Llenovo/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 91
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    .line 94
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 95
    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Llenovo/widget/ActionMenuView;->mHeight:I

    .line 96
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 97
    iput v5, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    .line 107
    const/4 v2, 0x0

    sget-object v3, Lcom/lenovo/component/appcompat/R$styleable;->Theme:[I

    const/high16 v4, 0x1010000

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "ac":Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    .line 111
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/ActionMenuView;->mPortIconColor:Landroid/content/res/ColorStateList;

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-static {p1}, Lcom/lenovo/internal/widget/ViewUtils;->getActionBarTitleColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    .line 116
    invoke-static {p1}, Lcom/lenovo/internal/widget/ViewUtils;->getActionBarDrawableColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/ActionMenuView;->mLandlIconColor:Landroid/content/res/ColorStateList;

    .line 117
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Llenovo/widget/ActionMenuView;->setGravity(I)V

    .line 119
    return-void
.end method

.method static synthetic access$200(Llenovo/widget/ActionMenuView;)Llenovo/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuView;

    .prologue
    .line 52
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mOnMenuItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Llenovo/widget/ActionMenuView;)Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuView;

    .prologue
    .line 52
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 529
    .local v8, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 531
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 532
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 534
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_2

    move-object v11, p0

    check-cast v11, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 536
    .local v7, "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onlyText()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v6, 0x1

    .line 538
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 539
    .local v0, "cellsUsed":I
    const/4 v11, 0x1

    if-le p2, v11, :cond_5

    if-eqz v6, :cond_5

    .line 540
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 542
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 545
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 546
    rem-int v11, v9, p1

    if-eqz v11, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 547
    :cond_0
    const/4 v11, 0x2

    if-ge v0, v11, :cond_1

    const/4 v0, 0x2

    .line 549
    :cond_1
    iget-boolean v11, v8, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_4

    const/4 v5, 0x1

    .line 550
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 551
    iput v0, v8, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 553
    mul-int v10, v0, p1

    .line 554
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 564
    .end local v4    # "childWidthSpec":I
    .end local v5    # "expandable":Z
    .end local v9    # "measuredWidth":I
    :goto_3
    return v0

    .line 534
    .end local v0    # "cellsUsed":I
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 536
    .restart local v7    # "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 549
    .restart local v0    # "cellsUsed":I
    .restart local v4    # "childWidthSpec":I
    .restart local v6    # "hasText":Z
    .restart local v9    # "measuredWidth":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 557
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_5
    const/4 v0, 0x1

    .line 558
    iput v0, v8, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 559
    move v10, p1

    .line 560
    .restart local v10    # "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3
.end method

.method static measureChildForCellsSimple(Landroid/view/View;IIII)I
    .locals 12
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 568
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 571
    .local v8, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    instance-of v10, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_2

    move-object v10, p0

    check-cast v10, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move-object v7, v10

    .line 573
    .local v7, "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onlyText()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v6, 0x1

    .line 575
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 576
    .local v0, "cellsUsed":I
    const/4 v10, 0x1

    if-le p2, v10, :cond_5

    if-eqz v6, :cond_5

    .line 577
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v2, v10, p4

    .line 580
    .local v2, "childHeightSize":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 581
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 583
    .local v3, "childHeightSpec":I
    mul-int v10, p1, p2

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 585
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 587
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 588
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 589
    rem-int v10, v9, p1

    if-eqz v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 590
    :cond_0
    const/4 v10, 0x2

    if-ge v0, v10, :cond_1

    const/4 v0, 0x2

    .line 592
    :cond_1
    iget-boolean v10, v8, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_4

    const/4 v5, 0x1

    .line 593
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 594
    iput v0, v8, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 600
    .end local v1    # "childHeightMode":I
    .end local v2    # "childHeightSize":I
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "expandable":Z
    .end local v9    # "measuredWidth":I
    :goto_3
    return v0

    .line 571
    .end local v0    # "cellsUsed":I
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 573
    .restart local v7    # "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 592
    .restart local v0    # "cellsUsed":I
    .restart local v1    # "childHeightMode":I
    .restart local v2    # "childHeightSize":I
    .restart local v3    # "childHeightSpec":I
    .restart local v4    # "childWidthSpec":I
    .restart local v6    # "hasText":Z
    .restart local v9    # "measuredWidth":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 596
    .end local v1    # "childHeightMode":I
    .end local v2    # "childHeightSize":I
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_5
    const/4 v0, 0x1

    .line 597
    iput v0, v8, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    goto :goto_3
.end method

.method private onMeasureExactFormat(II)V
    .locals 44
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 218
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 219
    .local v16, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v38

    .line 220
    .local v38, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 221
    .local v18, "heightSize":I
    if-lez v18, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mHeight:I

    move/from16 v18, v0

    .line 225
    :cond_0
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v40

    add-int v37, v39, v40

    .line 226
    .local v37, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingTop()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingBottom()I

    move-result v40

    add-int v17, v39, v40

    .line 228
    .local v17, "heightPadding":I
    const/16 v39, -0x2

    move/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Llenovo/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v21

    .line 231
    .local v21, "itemHeightSpec":I
    sub-int v38, v38, v37

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    div-int v4, v38, v39

    .line 236
    .local v4, "cellCount":I
    if-nez v4, :cond_1

    .line 238
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 463
    :goto_0
    return-void

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    .line 244
    .local v5, "cellSize":I
    move v7, v4

    .line 245
    .local v7, "cellsRemaining":I
    const/16 v24, 0x0

    .line 246
    .local v24, "maxChildHeight":I
    const/16 v23, 0x0

    .line 247
    .local v23, "maxCellsUsed":I
    const/4 v13, 0x0

    .line 248
    .local v13, "expandableItemCount":I
    const/16 v35, 0x0

    .line 249
    .local v35, "visibleItemCount":I
    const/4 v15, 0x0

    .line 252
    .local v15, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 254
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 257
    .local v11, "childCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v11, :cond_9

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 259
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v39

    const/16 v40, 0x8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    .line 257
    :cond_2
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 260
    :cond_3
    instance-of v0, v10, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move/from16 v20, v0

    .line 263
    .local v20, "isGeneratedItem":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v39, v0

    if-eqz v39, :cond_4

    instance-of v0, v10, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    move/from16 v39, v0

    if-eqz v39, :cond_4

    move-object/from16 v39, v10

    .line 264
    check-cast v39, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v39, v10

    .line 265
    check-cast v39, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuView;->mPortIconColor:Landroid/content/res/ColorStateList;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Lcom/lenovo/internal/view/menu/TintMenuIcon;->tintDrawable(Landroid/content/res/ColorStateList;)V

    .line 268
    :cond_4
    add-int/lit8 v35, v35, 0x1

    .line 277
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 278
    .local v22, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 279
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 280
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 281
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 282
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 283
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 284
    if-eqz v20, :cond_7

    move-object/from16 v39, v10

    check-cast v39, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v39 .. v39}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v39

    if-eqz v39, :cond_7

    const/16 v39, 0x1

    :goto_3
    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 287
    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_8

    const/4 v6, 0x1

    .line 289
    .local v6, "cellsAvailable":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v10, v5, v6, v0, v1}, Llenovo/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v8

    .line 292
    .local v8, "cellsUsed":I
    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 293
    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v39, v0

    if-eqz v39, :cond_5

    add-int/lit8 v13, v13, 0x1

    .line 294
    :cond_5
    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_6

    const/4 v15, 0x1

    .line 296
    :cond_6
    sub-int/2addr v7, v8

    .line 297
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    move/from16 v0, v24

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 298
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v8, v0, :cond_2

    const/16 v39, 0x1

    shl-int v39, v39, v19

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v32, v32, v40

    goto/16 :goto_2

    .line 284
    .end local v6    # "cellsAvailable":I
    .end local v8    # "cellsUsed":I
    :cond_7
    const/16 v39, 0x0

    goto :goto_3

    :cond_8
    move v6, v7

    .line 287
    goto :goto_4

    .line 300
    .end local v10    # "child":Landroid/view/View;
    .end local v20    # "isGeneratedItem":Z
    .end local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_9
    const/16 v39, 0x1

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    if-nez v15, :cond_d

    .line 301
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v0, v11, :cond_d

    .line 302
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 303
    .local v34, "view":Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v39

    const/16 v40, 0x8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    .line 301
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 304
    :cond_b
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move/from16 v39, v0

    if-eqz v39, :cond_a

    move-object/from16 v39, v34

    .line 305
    check-cast v39, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v39 .. v39}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onlyText()Z

    move-result v39

    if-nez v39, :cond_a

    .line 306
    const/high16 v39, -0x80000000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move-object/from16 v0, v34

    move/from16 v1, v39

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 308
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    .line 309
    .local v31, "size":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    move/from16 v0, v31

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 310
    const/high16 v39, 0x40000000    # 2.0f

    move/from16 v0, v39

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move-object/from16 v0, v34

    move/from16 v1, v39

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 314
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 323
    .end local v31    # "size":I
    .end local v34    # "view":Landroid/view/View;
    :cond_d
    if-eqz v15, :cond_f

    const/16 v39, 0x2

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_f

    const/4 v9, 0x1

    .line 328
    .local v9, "centerSingleExpandedItem":Z
    :goto_6
    const/16 v29, 0x0

    .line 329
    .local v29, "needsExpansion":Z
    :goto_7
    if-lez v13, :cond_13

    if-lez v7, :cond_13

    .line 330
    const v25, 0x7fffffff

    .line 331
    .local v25, "minCells":I
    const-wide/16 v26, 0x0

    .line 332
    .local v26, "minCellsAt":J
    const/16 v28, 0x0

    .line 333
    .local v28, "minCellsItemCount":I
    const/16 v19, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v0, v11, :cond_12

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 335
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 338
    .restart local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v39, v0

    if-nez v39, :cond_10

    .line 333
    :cond_e
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 323
    .end local v9    # "centerSingleExpandedItem":Z
    .end local v10    # "child":Landroid/view/View;
    .end local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v25    # "minCells":I
    .end local v26    # "minCellsAt":J
    .end local v28    # "minCellsItemCount":I
    .end local v29    # "needsExpansion":Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_6

    .line 341
    .restart local v9    # "centerSingleExpandedItem":Z
    .restart local v10    # "child":Landroid/view/View;
    .restart local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .restart local v25    # "minCells":I
    .restart local v26    # "minCellsAt":J
    .restart local v28    # "minCellsItemCount":I
    .restart local v29    # "needsExpansion":Z
    :cond_10
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 342
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v25, v0

    .line 343
    const/16 v39, 0x1

    shl-int v39, v39, v19

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 344
    const/16 v28, 0x1

    goto :goto_9

    .line 345
    :cond_11
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 346
    const/16 v39, 0x1

    shl-int v39, v39, v19

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v26, v26, v40

    .line 347
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 352
    .end local v10    # "child":Landroid/view/View;
    .end local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_12
    or-long v32, v32, v26

    .line 354
    move/from16 v0, v28

    if-le v0, v7, :cond_18

    .line 384
    .end local v25    # "minCells":I
    .end local v26    # "minCellsAt":J
    .end local v28    # "minCellsItemCount":I
    :cond_13
    if-nez v15, :cond_1d

    const/16 v39, 0x1

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_1d

    const/16 v30, 0x1

    .line 388
    .local v30, "singleItem":Z
    :goto_a
    if-lez v7, :cond_25

    const-wide/16 v40, 0x0

    cmp-long v39, v32, v40

    if-eqz v39, :cond_25

    if-nez v30, :cond_14

    if-lez v13, :cond_25

    .line 390
    :cond_14
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v39

    move/from16 v0, v39

    int-to-float v12, v0

    .line 392
    .local v12, "expandCount":F
    if-nez v30, :cond_16

    .line 394
    const-wide/16 v40, 0x1

    and-long v40, v40, v32

    const-wide/16 v42, 0x0

    cmp-long v39, v40, v42

    if-eqz v39, :cond_15

    .line 395
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 396
    .restart local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_15

    const/high16 v39, 0x3f000000    # 0.5f

    sub-float v12, v12, v39

    .line 398
    .end local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_15
    const/16 v39, 0x1

    add-int/lit8 v40, v11, -0x1

    shl-int v39, v39, v40

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v32

    const-wide/16 v42, 0x0

    cmp-long v39, v40, v42

    if-eqz v39, :cond_16

    .line 399
    add-int/lit8 v39, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 400
    .restart local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_16

    const/high16 v39, 0x3f000000    # 0.5f

    sub-float v12, v12, v39

    .line 404
    .end local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_16
    const/16 v39, 0x0

    cmpl-float v39, v12, v39

    if-lez v39, :cond_1e

    mul-int v39, v7, v5

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v39, v39, v12

    move/from16 v0, v39

    float-to-int v14, v0

    .line 407
    .local v14, "extraPixels":I
    :goto_b
    const/16 v19, 0x0

    :goto_c
    move/from16 v0, v19

    if-ge v0, v11, :cond_24

    .line 408
    const/16 v39, 0x1

    shl-int v39, v39, v19

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v32

    const-wide/16 v42, 0x0

    cmp-long v39, v40, v42

    if-nez v39, :cond_1f

    .line 407
    :cond_17
    :goto_d
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 357
    .end local v12    # "expandCount":F
    .end local v14    # "extraPixels":I
    .end local v30    # "singleItem":Z
    .restart local v25    # "minCells":I
    .restart local v26    # "minCellsAt":J
    .restart local v28    # "minCellsItemCount":I
    :cond_18
    add-int/lit8 v25, v25, 0x1

    .line 359
    const/16 v19, 0x0

    :goto_e
    move/from16 v0, v19

    if-ge v0, v11, :cond_1c

    .line 360
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 361
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 363
    .restart local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    const/16 v39, 0x1

    shl-int v39, v39, v19

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v26

    const-wide/16 v42, 0x0

    cmp-long v39, v40, v42

    if-nez v39, :cond_1a

    .line 365
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    const/16 v39, 0x1

    shl-int v39, v39, v19

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v32, v32, v40

    .line 359
    :cond_19
    :goto_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    .line 369
    :cond_1a
    if-eqz v9, :cond_1b

    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1b

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v7, v0, :cond_1b

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    add-int v39, v39, v5

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 373
    :cond_1b
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 374
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 375
    add-int/lit8 v7, v7, -0x1

    goto :goto_f

    .line 378
    .end local v10    # "child":Landroid/view/View;
    .end local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_1c
    const/16 v29, 0x1

    .line 379
    goto/16 :goto_7

    .line 384
    .end local v25    # "minCells":I
    .end local v26    # "minCellsAt":J
    .end local v28    # "minCellsItemCount":I
    :cond_1d
    const/16 v30, 0x0

    goto/16 :goto_a

    .line 404
    .restart local v12    # "expandCount":F
    .restart local v30    # "singleItem":Z
    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_b

    .line 410
    .restart local v14    # "extraPixels":I
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 411
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 412
    .restart local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    instance-of v0, v10, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move/from16 v39, v0

    if-eqz v39, :cond_21

    .line 414
    move-object/from16 v0, v22

    iput v14, v0, Llenovo/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 415
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 417
    if-nez v19, :cond_20

    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_20

    check-cast v10, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .end local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v39

    if-eqz v39, :cond_20

    .line 420
    neg-int v0, v14

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 422
    :cond_20
    const/16 v29, 0x1

    goto/16 :goto_d

    .line 423
    .restart local v10    # "child":Landroid/view/View;
    :cond_21
    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_22

    .line 424
    move-object/from16 v0, v22

    iput v14, v0, Llenovo/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 425
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 426
    neg-int v0, v14

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 427
    const/16 v29, 0x1

    goto/16 :goto_d

    .line 432
    :cond_22
    if-eqz v19, :cond_23

    .line 433
    div-int/lit8 v39, v14, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 435
    :cond_23
    add-int/lit8 v39, v11, -0x1

    move/from16 v0, v19

    move/from16 v1, v39

    if-eq v0, v1, :cond_17

    .line 436
    div-int/lit8 v39, v14, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 441
    .end local v10    # "child":Landroid/view/View;
    .end local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_24
    const/4 v7, 0x0

    .line 445
    .end local v12    # "expandCount":F
    .end local v14    # "extraPixels":I
    :cond_25
    if-eqz v29, :cond_27

    .line 446
    const/16 v19, 0x0

    :goto_10
    move/from16 v0, v19

    if-ge v0, v11, :cond_27

    .line 447
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 448
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 450
    .restart local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v39, v0

    if-nez v39, :cond_26

    .line 446
    :goto_11
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 452
    :cond_26
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    mul-int v39, v39, v5

    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v40, v0

    add-int v36, v39, v40

    .line 453
    .local v36, "width":I
    const/high16 v39, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 458
    .end local v10    # "child":Landroid/view/View;
    .end local v22    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v36    # "width":I
    :cond_27
    const/high16 v39, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v39

    if-eq v0, v1, :cond_28

    .line 459
    move/from16 v18, v24

    .line 462
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 817
    if-eqz p1, :cond_0

    instance-of v0, p1, Llenovo/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

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
    .line 920
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 923
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 790
    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 792
    .local v0, "params":Llenovo/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 793
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 798
    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 803
    if-eqz p1, :cond_2

    .line 804
    instance-of v1, p1, Llenovo/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    check-cast p1, Llenovo/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(Llenovo/widget/ActionMenuView$LayoutParams;)V

    .line 807
    .local v0, "result":Llenovo/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 808
    const/16 v1, 0x10

    iput v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 812
    .end local v0    # "result":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 804
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 812
    :cond_2
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 822
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 823
    .local v0, "result":Llenovo/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 824
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 851
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 852
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 853
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 854
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    new-instance v2, Llenovo/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Llenovo/widget/ActionMenuView$MenuBuilderCallback;-><init>(Llenovo/widget/ActionMenuView;Llenovo/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 855
    new-instance v1, Llenovo/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 856
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 857
    iget-object v2, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Llenovo/widget/ActionMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 859
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v3, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 860
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Llenovo/widget/ActionMenuPresenter;->setMenuView(Llenovo/widget/ActionMenuView;)V

    .line 863
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v1

    .line 857
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Llenovo/widget/ActionMenuView;Llenovo/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 930
    if-nez p1, :cond_1

    .line 931
    const/4 v2, 0x0

    .line 942
    :cond_0
    :goto_0
    return v2

    .line 933
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 934
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 935
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 936
    .local v2, "result":Z
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Llenovo/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 937
    check-cast v1, Llenovo/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Llenovo/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 939
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Llenovo/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 940
    check-cast v0, Llenovo/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Llenovo/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method hasTextItem()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1077
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1078
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1079
    .local v2, "v":Landroid/view/View;
    instance-of v4, v2, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_1

    .line 1080
    check-cast v2, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1081
    const/4 v3, 0x0

    .line 1086
    :cond_0
    return v3

    .line 1077
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 839
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 840
    return-void
.end method

.method public invokeItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 829
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Llenovo/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 160
    invoke-super {p0, p1}, Llenovo/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 165
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    .line 166
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 168
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 170
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 172
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 774
    invoke-super {p0}, Llenovo/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 775
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->dismissPopupMenus()V

    .line 776
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 33
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 605
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    .line 606
    invoke-super/range {p0 .. p5}, Llenovo/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 611
    .local v6, "childCount":I
    add-int v31, p3, p5

    div-int/lit8 v15, v31, 0x2

    .line 612
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 613
    .local v7, "dividerWidth":I
    const/16 v19, 0x0

    .line 614
    .local v19, "overflowWidth":I
    const/16 v18, 0x0

    .line 615
    .local v18, "nonOverflowWidth":I
    const/16 v17, 0x0

    .line 616
    .local v17, "nonOverflowCount":I
    sub-int v31, p4, p2

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v32

    sub-int v30, v31, v32

    .line 617
    .local v30, "widthRemaining":I
    const/4 v8, 0x0

    .line 618
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 620
    .local v11, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->hasTextItem()Z

    move-result v16

    .line 622
    .local v16, "needCenter":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_8

    .line 623
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 624
    .local v28, "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 622
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 628
    :cond_2
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 629
    .local v20, "p":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 630
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 632
    add-int v19, v19, v7

    .line 634
    :cond_3
    if-nez v16, :cond_5

    .line 635
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 638
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 639
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    move-object/from16 v0, v20

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v12, v31, v32

    .line 640
    .local v12, "l":I
    add-int v21, v12, v19

    .line 645
    .local v21, "r":I
    :goto_3
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 646
    .local v27, "t":I
    add-int v5, v27, v9

    .line 647
    .local v5, "b":I
    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 648
    sub-int v30, v30, v19

    .line 654
    .end local v5    # "b":I
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v21    # "r":I
    .end local v27    # "t":I
    :goto_4
    const/4 v8, 0x1

    goto :goto_2

    .line 642
    .restart local v9    # "height":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, v20

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v21, v31, v32

    .line 643
    .restart local v21    # "r":I
    sub-int v12, v21, v19

    .restart local v12    # "l":I
    goto :goto_3

    .line 651
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v21    # "r":I
    :cond_5
    sub-int v30, v30, v19

    goto :goto_4

    .line 656
    :cond_6
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move-object/from16 v0, v20

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v20

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v22, v31, v32

    .line 657
    .local v22, "size":I
    add-int v18, v18, v22

    .line 658
    sub-int v30, v30, v22

    .line 659
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 660
    add-int v18, v18, v7

    .line 662
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 666
    .end local v20    # "p":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v22    # "size":I
    .end local v28    # "v":Landroid/view/View;
    :cond_8
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_9

    if-nez v8, :cond_9

    .line 668
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 669
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 670
    .local v29, "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 671
    .restart local v9    # "height":I
    sub-int v31, p4, p2

    div-int/lit8 v14, v31, 0x2

    .line 672
    .local v14, "midHorizontal":I
    div-int/lit8 v31, v29, 0x2

    sub-int v12, v14, v31

    .line 673
    .restart local v12    # "l":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 674
    .restart local v27    # "t":I
    add-int v31, v12, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 681
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_9
    if-nez v16, :cond_11

    .line 682
    if-eqz v8, :cond_b

    const/16 v31, 0x0

    :goto_5
    sub-int v23, v17, v31

    .line 683
    .local v23, "spacerCount":I
    const/16 v32, 0x0

    if-lez v23, :cond_c

    div-int v31, v30, v23

    :goto_6
    move/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 684
    .local v24, "spacerSize":I
    if-eqz v11, :cond_e

    .line 685
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v26, v31, v32

    .line 686
    .local v26, "startRight":I
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_0

    .line 687
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 688
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 689
    .local v13, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    iget-boolean v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 686
    :cond_a
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 682
    .end local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v23    # "spacerCount":I
    .end local v24    # "spacerSize":I
    .end local v26    # "startRight":I
    .end local v28    # "v":Landroid/view/View;
    :cond_b
    const/16 v31, 0x1

    goto :goto_5

    .line 683
    .restart local v23    # "spacerCount":I
    :cond_c
    const/16 v31, 0x0

    goto :goto_6

    .line 693
    .restart local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .restart local v24    # "spacerSize":I
    .restart local v26    # "startRight":I
    .restart local v28    # "v":Landroid/view/View;
    :cond_d
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v26, v26, v31

    .line 694
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 695
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 696
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 697
    .restart local v27    # "t":I
    sub-int v31, v26, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 698
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v24

    sub-int v26, v26, v31

    goto :goto_8

    .line 701
    .end local v9    # "height":I
    .end local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v26    # "startRight":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v25

    .line 702
    .local v25, "startLeft":I
    const/4 v10, 0x0

    :goto_9
    if-ge v10, v6, :cond_0

    .line 703
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 704
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 705
    .restart local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_f

    iget-boolean v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 702
    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 709
    :cond_10
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v25, v25, v31

    .line 710
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 711
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 712
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 713
    .restart local v27    # "t":I
    add-int v31, v25, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 714
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v24

    add-int v25, v25, v31

    goto :goto_a

    .line 719
    .end local v9    # "height":I
    .end local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v23    # "spacerCount":I
    .end local v24    # "spacerSize":I
    .end local v25    # "startLeft":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_11
    const/16 v23, 0x2

    .line 720
    .restart local v23    # "spacerCount":I
    const/16 v31, 0x0

    div-int/lit8 v32, v30, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 723
    .restart local v24    # "spacerSize":I
    if-eqz v11, :cond_13

    .line 726
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    sub-int v26, v31, v24

    .line 728
    .restart local v26    # "startRight":I
    const/4 v10, 0x0

    :goto_b
    if-ge v10, v6, :cond_0

    .line 729
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 730
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 732
    .restart local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 728
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 736
    :cond_12
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v26, v26, v31

    .line 737
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 738
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 739
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 740
    .restart local v27    # "t":I
    sub-int v31, v26, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 743
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    sub-int v26, v26, v31

    goto :goto_c

    .line 749
    .end local v9    # "height":I
    .end local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v26    # "startRight":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    add-int v25, v31, v24

    .line 750
    .restart local v25    # "startLeft":I
    const/4 v10, 0x0

    :goto_d
    if-ge v10, v6, :cond_0

    .line 751
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 752
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 754
    .restart local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 750
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 758
    :cond_14
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v25, v25, v31

    .line 759
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 760
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 761
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 762
    .restart local v27    # "t":I
    add-int v31, v25, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 765
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v25, v25, v31

    goto :goto_e
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 181
    iget-boolean v4, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    .line 182
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    .line 184
    iget-boolean v6, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 185
    iput v8, p0, Llenovo/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 190
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 191
    .local v5, "widthSize":I
    iget-boolean v6, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Llenovo/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 192
    iput v5, p0, Llenovo/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 193
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 196
    :cond_1
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 197
    .local v1, "childCount":I
    iget-boolean v6, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 198
    invoke-direct {p0, p1, p2}, Llenovo/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 214
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 182
    goto :goto_0

    .line 201
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 202
    invoke-virtual {p0, v2}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 204
    .local v3, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    iget v6, p0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    iput v6, v3, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v6, v3, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 206
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_4

    instance-of v6, v0, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    if-eqz v6, :cond_4

    move-object v6, v0

    .line 207
    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 208
    check-cast v0, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mLandlIconColor:Landroid/content/res/ColorStateList;

    invoke-interface {v0, v6}, Lcom/lenovo/internal/view/menu/TintMenuIcon;->tintDrawable(Landroid/content/res/ColorStateList;)V

    .line 201
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v3    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_5
    invoke-super {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    .line 1056
    if-nez p1, :cond_0

    .line 1057
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Llenovo/widget/ActionMenuView;->setTranslationY(F)V

    .line 1059
    :cond_0
    if-ne p1, v4, :cond_2

    .line 1060
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 1061
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1062
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1063
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1060
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1067
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1068
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1069
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1070
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1067
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1047
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 1048
    mul-float v1, v3, p2

    .line 1052
    .local v1, "offset":F
    :goto_0
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v2, v1

    .line 1053
    .local v0, "menuTranslationY":F
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->setTranslationY(F)V

    .line 1054
    return-void

    .line 1050
    .end local v0    # "menuTranslationY":F
    .end local v1    # "offset":F
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float v1, v3, v2

    .restart local v1    # "offset":F
    goto :goto_0
.end method

.method public peekMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 951
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 952
    return-void
.end method

.method public setMenuCallbacks(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 871
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .line 872
    iput-object p2, p0, Llenovo/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .line 873
    return-void
.end method

.method public setOnMenuItemClickListener(Llenovo/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 175
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mOnMenuItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    .line 176
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 785
    iput-boolean p1, p0, Llenovo/widget/ActionMenuView;->mReserveOverflow:Z

    .line 786
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 129
    iget v0, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 130
    iput p1, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    .line 131
    if-nez p1, :cond_1

    .line 132
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Llenovo/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 153
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 154
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Llenovo/widget/ActionMenuPresenter;->setMenuView(Llenovo/widget/ActionMenuView;)V

    .line 155
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
