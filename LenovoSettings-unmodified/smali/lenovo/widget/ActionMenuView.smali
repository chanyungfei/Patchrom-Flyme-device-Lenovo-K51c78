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
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p0, v3}, Llenovo/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 90
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f080016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    .line 93
    const v2, 0x7f080001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 94
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 95
    iput v3, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    .line 97
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 98
    .local v1, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010361

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010429

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/ActionMenuView;->mPortIconColor:Landroid/content/res/ColorStateList;

    .line 105
    :cond_1
    invoke-static {p1}, Lcom/lenovo/internal/widget/ViewUtils;->getActionBarTitleColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    .line 106
    invoke-static {p1}, Lcom/lenovo/internal/widget/ViewUtils;->getActionBarDrawableColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/ActionMenuView;->mLandlIconColor:Landroid/content/res/ColorStateList;

    .line 108
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
    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 447
    .local v8, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 449
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 450
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 452
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 454
    .local v7, "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 456
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 457
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 458
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 460
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 463
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 464
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 465
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 468
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 469
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 471
    iput v0, v8, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 476
    if-eqz v5, :cond_6

    .line 477
    mul-int v10, v0, p1

    .line 478
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 486
    :goto_3
    return v0

    .line 452
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 454
    .restart local v7    # "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 468
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 481
    .restart local v5    # "expandable":Z
    :cond_6
    move v10, p1

    .line 482
    .restart local v10    # "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 205
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 206
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 207
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 209
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 210
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 212
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Llenovo/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 215
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 219
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 221
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 223
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 428
    :goto_0
    return-void

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 229
    .local v5, "cellSize":I
    move v8, v4

    .line 230
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 231
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 232
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 233
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 234
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 237
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 239
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v12

    .line 242
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_8

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 244
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 242
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 245
    :cond_2
    instance-of v0, v11, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 248
    .local v21, "isGeneratedItem":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v38, v0

    if-eqz v38, :cond_3

    move-object/from16 v38, v11

    .line 249
    check-cast v38, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v38, v11

    .line 250
    check-cast v38, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuView;->mPortIconColor:Landroid/content/res/ColorStateList;

    move-object/from16 v39, v0

    invoke-interface/range {v38 .. v39}, Lcom/lenovo/internal/view/menu/TintMenuIcon;->tintDrawable(Landroid/content/res/ColorStateList;)V

    .line 253
    :cond_3
    add-int/lit8 v34, v34, 0x1

    .line 262
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 263
    .local v23, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 264
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 265
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 266
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 267
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 268
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 269
    if-eqz v21, :cond_6

    move-object/from16 v38, v11

    check-cast v38, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_6

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 272
    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/4 v7, 0x1

    .line 274
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Llenovo/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 277
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 278
    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 279
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    const/16 v16, 0x1

    .line 281
    :cond_5
    sub-int/2addr v8, v9

    .line 282
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 283
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 269
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v38, 0x0

    goto :goto_3

    :cond_7
    move v7, v8

    .line 272
    goto :goto_4

    .line 288
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 293
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 294
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_e

    if-lez v8, :cond_e

    .line 295
    const v26, 0x7fffffff

    .line 296
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 297
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 298
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v12, :cond_d

    .line 299
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 300
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 303
    .restart local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 298
    :cond_9
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 288
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 306
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 307
    move-object/from16 v0, v23

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 308
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 309
    const/16 v27, 0x1

    goto :goto_8

    .line 310
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 311
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 312
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 317
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v28

    .line 319
    move/from16 v0, v27

    if-le v0, v8, :cond_13

    .line 349
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_e
    if-nez v16, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 353
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_20

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_20

    if-nez v31, :cond_f

    if-lez v14, :cond_20

    .line 355
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 357
    .local v13, "expandCount":F
    if-nez v31, :cond_11

    .line 359
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_10

    .line 360
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 361
    .restart local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 363
    .end local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_10
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 364
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 365
    .restart local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 369
    .end local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_19

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 372
    .local v15, "extraPixels":I
    :goto_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v12, :cond_1f

    .line 373
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1a

    .line 372
    :cond_12
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 322
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_13
    add-int/lit8 v26, v26, 0x1

    .line 324
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_17

    .line 325
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 326
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 328
    .restart local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_15

    .line 330
    move-object/from16 v0, v23

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 324
    :cond_14
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 334
    :cond_15
    if-eqz v10, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_16

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 338
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 339
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 340
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 343
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    .line 344
    goto/16 :goto_6

    .line 349
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 369
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 375
    .restart local v15    # "extraPixels":I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 376
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 377
    .restart local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 379
    move-object/from16 v0, v23

    iput v15, v0, Llenovo/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 380
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 382
    if-nez v20, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1b

    check-cast v11, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .end local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 385
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 387
    :cond_1b
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 388
    .restart local v11    # "child":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 389
    move-object/from16 v0, v23

    iput v15, v0, Llenovo/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 390
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 391
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 392
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 397
    :cond_1d
    if-eqz v20, :cond_1e

    .line 398
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 400
    :cond_1e
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 401
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 406
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_1f
    const/4 v8, 0x0

    .line 410
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_20
    if-eqz v30, :cond_22

    .line 411
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_22

    .line 412
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 413
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 415
    .restart local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_21

    .line 411
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 417
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 418
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 423
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_22
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    .line 424
    move/from16 v19, v25

    .line 427
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 703
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
    .line 806
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 809
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 832
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

    .line 676
    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 678
    .local v0, "params":Llenovo/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 679
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
    .line 684
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
    .line 689
    if-eqz p1, :cond_2

    .line 690
    instance-of v1, p1, Llenovo/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    check-cast p1, Llenovo/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(Llenovo/widget/ActionMenuView$LayoutParams;)V

    .line 693
    .local v0, "result":Llenovo/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 694
    const/16 v1, 0x10

    iput v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 698
    .end local v0    # "result":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 690
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 698
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
    .line 708
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 709
    .local v0, "result":Llenovo/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 710
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 738
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 739
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 740
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    new-instance v2, Llenovo/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Llenovo/widget/ActionMenuView$MenuBuilderCallback;-><init>(Llenovo/widget/ActionMenuView;Llenovo/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 741
    new-instance v1, Llenovo/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 742
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 743
    iget-object v2, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Llenovo/widget/ActionMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 745
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v3, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 746
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Llenovo/widget/ActionMenuPresenter;->setMenuView(Llenovo/widget/ActionMenuView;)V

    .line 749
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v1

    .line 743
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Llenovo/widget/ActionMenuView;Llenovo/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 816
    if-nez p1, :cond_1

    .line 817
    const/4 v2, 0x0

    .line 828
    :cond_0
    :goto_0
    return v2

    .line 819
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 820
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 822
    .local v2, "result":Z
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Llenovo/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 823
    check-cast v1, Llenovo/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Llenovo/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 825
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Llenovo/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 826
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
    const/4 v3, 0x0

    .line 960
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 961
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 962
    .local v2, "v":Landroid/view/View;
    instance-of v4, v2, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_2

    .line 963
    check-cast v2, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 969
    :cond_0
    :goto_1
    return v3

    .line 966
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 960
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 784
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
    .line 725
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 726
    return-void
.end method

.method public invokeItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 715
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 799
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
    .line 794
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
    .line 666
    iget-boolean v0, p0, Llenovo/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 149
    invoke-super {p0, p1}, Llenovo/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 153
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 155
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 157
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 159
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 660
    invoke-super {p0}, Llenovo/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 661
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->dismissPopupMenus()V

    .line 662
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
    .line 491
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    .line 492
    invoke-super/range {p0 .. p5}, Llenovo/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 497
    .local v6, "childCount":I
    add-int v31, p3, p5

    div-int/lit8 v15, v31, 0x2

    .line 498
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 499
    .local v7, "dividerWidth":I
    const/16 v19, 0x0

    .line 500
    .local v19, "overflowWidth":I
    const/16 v18, 0x0

    .line 501
    .local v18, "nonOverflowWidth":I
    const/16 v17, 0x0

    .line 502
    .local v17, "nonOverflowCount":I
    sub-int v31, p4, p2

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v32

    sub-int v30, v31, v32

    .line 503
    .local v30, "widthRemaining":I
    const/4 v8, 0x0

    .line 504
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 506
    .local v11, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->hasTextItem()Z

    move-result v16

    .line 508
    .local v16, "needCenter":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_8

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 510
    .local v28, "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 508
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 514
    :cond_2
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 515
    .local v20, "p":Llenovo/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 516
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 517
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 518
    add-int v19, v19, v7

    .line 520
    :cond_3
    if-nez v16, :cond_5

    .line 521
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 524
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 525
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    move-object/from16 v0, v20

    iget v0, v0, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v12, v31, v32

    .line 526
    .local v12, "l":I
    add-int v21, v12, v19

    .line 531
    .local v21, "r":I
    :goto_3
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 532
    .local v27, "t":I
    add-int v5, v27, v9

    .line 533
    .local v5, "b":I
    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 534
    sub-int v30, v30, v19

    .line 540
    .end local v5    # "b":I
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v21    # "r":I
    .end local v27    # "t":I
    :goto_4
    const/4 v8, 0x1

    goto :goto_2

    .line 528
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

    .line 529
    .restart local v21    # "r":I
    sub-int v12, v21, v19

    .restart local v12    # "l":I
    goto :goto_3

    .line 537
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v21    # "r":I
    :cond_5
    sub-int v30, v30, v19

    goto :goto_4

    .line 542
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

    .line 543
    .local v22, "size":I
    add-int v18, v18, v22

    .line 544
    sub-int v30, v30, v22

    .line 545
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 546
    add-int v18, v18, v7

    .line 548
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 552
    .end local v20    # "p":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v22    # "size":I
    .end local v28    # "v":Landroid/view/View;
    :cond_8
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_9

    if-nez v8, :cond_9

    .line 554
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 555
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 556
    .local v29, "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 557
    .restart local v9    # "height":I
    sub-int v31, p4, p2

    div-int/lit8 v14, v31, 0x2

    .line 558
    .local v14, "midHorizontal":I
    div-int/lit8 v31, v29, 0x2

    sub-int v12, v14, v31

    .line 559
    .restart local v12    # "l":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 560
    .restart local v27    # "t":I
    add-int v31, v12, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 567
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_9
    if-nez v16, :cond_11

    .line 568
    if-eqz v8, :cond_b

    const/16 v31, 0x0

    :goto_5
    sub-int v23, v17, v31

    .line 569
    .local v23, "spacerCount":I
    const/16 v32, 0x0

    if-lez v23, :cond_c

    div-int v31, v30, v23

    :goto_6
    move/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 570
    .local v24, "spacerSize":I
    if-eqz v11, :cond_e

    .line 571
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v26, v31, v32

    .line 572
    .local v26, "startRight":I
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 574
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 575
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

    .line 572
    :cond_a
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 568
    .end local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v23    # "spacerCount":I
    .end local v24    # "spacerSize":I
    .end local v26    # "startRight":I
    .end local v28    # "v":Landroid/view/View;
    :cond_b
    const/16 v31, 0x1

    goto :goto_5

    .line 569
    .restart local v23    # "spacerCount":I
    :cond_c
    const/16 v31, 0x0

    goto :goto_6

    .line 579
    .restart local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .restart local v24    # "spacerSize":I
    .restart local v26    # "startRight":I
    .restart local v28    # "v":Landroid/view/View;
    :cond_d
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v26, v26, v31

    .line 580
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 581
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 582
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 583
    .restart local v27    # "t":I
    sub-int v31, v26, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 584
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v24

    sub-int v26, v26, v31

    goto :goto_8

    .line 587
    .end local v9    # "height":I
    .end local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v26    # "startRight":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingLeft()I

    move-result v25

    .line 588
    .local v25, "startLeft":I
    const/4 v10, 0x0

    :goto_9
    if-ge v10, v6, :cond_0

    .line 589
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 590
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 591
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

    .line 588
    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 595
    :cond_10
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v25, v25, v31

    .line 596
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 597
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 598
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 599
    .restart local v27    # "t":I
    add-int v31, v25, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 600
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v24

    add-int v25, v25, v31

    goto :goto_a

    .line 605
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

    .line 606
    .restart local v23    # "spacerCount":I
    const/16 v31, 0x0

    div-int/lit8 v32, v30, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 609
    .restart local v24    # "spacerSize":I
    if-eqz v11, :cond_13

    .line 612
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    sub-int v26, v31, v24

    .line 614
    .restart local v26    # "startRight":I
    const/4 v10, 0x0

    :goto_b
    if-ge v10, v6, :cond_0

    .line 615
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 616
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 618
    .restart local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 614
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 622
    :cond_12
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v26, v26, v31

    .line 623
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 624
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 625
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 626
    .restart local v27    # "t":I
    sub-int v31, v26, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 629
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    sub-int v26, v26, v31

    goto :goto_c

    .line 635
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

    .line 636
    .restart local v25    # "startLeft":I
    const/4 v10, 0x0

    :goto_d
    if-ge v10, v6, :cond_0

    .line 637
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 638
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 640
    .restart local v13    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 636
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 644
    :cond_14
    iget v0, v13, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v25, v25, v31

    .line 645
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 646
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 647
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v27, v15, v31

    .line 648
    .restart local v27    # "t":I
    add-int v31, v25, v29

    add-int v32, v27, v9

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 651
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

    .line 168
    iget-boolean v4, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    .line 169
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    .line 171
    iget-boolean v6, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 172
    iput v8, p0, Llenovo/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 177
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 178
    .local v5, "widthSize":I
    iget-boolean v6, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Llenovo/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 179
    iput v5, p0, Llenovo/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 180
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 183
    :cond_1
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 184
    .local v1, "childCount":I
    iget-boolean v6, p0, Llenovo/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 185
    invoke-direct {p0, p1, p2}, Llenovo/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 201
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 169
    goto :goto_0

    .line 188
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 189
    invoke-virtual {p0, v2}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 191
    .local v3, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    iget v6, p0, Llenovo/widget/ActionMenuView;->mGeneratedItemPadding:I

    iput v6, v3, Llenovo/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v6, v3, Llenovo/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 193
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_4

    move-object v6, v0

    .line 194
    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 195
    check-cast v0, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mLandlIconColor:Landroid/content/res/ColorStateList;

    invoke-interface {v0, v6}, Lcom/lenovo/internal/view/menu/TintMenuIcon;->tintDrawable(Landroid/content/res/ColorStateList;)V

    .line 188
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 199
    .end local v3    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_5
    invoke-super {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 942
    if-ne p1, v3, :cond_1

    .line 943
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 944
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 945
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 946
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 943
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 951
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 952
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 953
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 950
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 957
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 933
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 934
    mul-float v1, v3, p2

    .line 938
    .local v1, "offset":F
    :goto_0
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v2, v1

    .line 939
    .local v0, "menuTranslationY":F
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->setTranslationY(F)V

    .line 940
    return-void

    .line 936
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
    .line 766
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 837
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 838
    return-void
.end method

.method public setMenuCallbacks(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 757
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .line 758
    iput-object p2, p0, Llenovo/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .line 759
    return-void
.end method

.method public setOnMenuItemClickListener(Llenovo/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 162
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mOnMenuItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    .line 163
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 671
    iput-boolean p1, p0, Llenovo/widget/ActionMenuView;->mReserveOverflow:Z

    .line 672
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 118
    iget v0, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 119
    iput p1, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    .line 120
    if-nez p1, :cond_1

    .line 121
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
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
    .line 142
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 143
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Llenovo/widget/ActionMenuPresenter;->setMenuView(Llenovo/widget/ActionMenuView;)V

    .line 144
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 775
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
