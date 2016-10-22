.class public Llenovo/widget/ActionMenuPresenter;
.super Lcom/lenovo/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Llenovo/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/ActionMenuPresenter$1;,
        Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Llenovo/widget/ActionMenuPresenter$OverflowPopup;,
        Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;,
        Llenovo/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

.field private mPopupCallback:Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 901
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Llenovo/widget/ActionMenuPresenter;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const v0, 0x7f040044

    const v1, 0x7f040043

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 79
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 89
    new-instance v0, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mPopupPresenterCallback:Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 94
    return-void
.end method

.method static synthetic access$1000(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$200(Llenovo/widget/ActionMenuPresenter;)Llenovo/widget/ActionMenuPresenter$OverflowPopup;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$202(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OverflowPopup;)Llenovo/widget/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;
    .param p1, "x1"    # Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 62
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$300(Llenovo/widget/ActionMenuPresenter;)Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object v0
.end method

.method static synthetic access$302(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;)Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;
    .param p1, "x1"    # Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 62
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Llenovo/widget/ActionMenuPresenter;->CHECKED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$500(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$600(Llenovo/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$800(Llenovo/widget/ActionMenuPresenter;)Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$802(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;)Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;
    .param p1, "x1"    # Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 62
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$900(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 289
    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 290
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 292
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 293
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 294
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/lenovo/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 293
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 300
    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Lcom/lenovo/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 191
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/lenovo/internal/view/menu/MenuView$ItemView;->initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V

    .line 193
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v1, Llenovo/widget/ActionMenuView;

    .local v1, "menuView":Llenovo/widget/ActionMenuView;
    move-object v0, p2

    .line 194
    check-cast v0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .line 195
    .local v0, "actionItemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 197
    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mPopupCallback:Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 198
    new-instance v2, Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mPopupCallback:Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 200
    :cond_0
    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mPopupCallback:Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 201
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 352
    .local v0, "result":Z
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 353
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 263
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 389
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 390
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 391
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 392
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 393
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 395
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 396
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 397
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 398
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 399
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v15, :cond_3

    .line 400
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 401
    .local v14, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 402
    add-int/lit8 v22, v22, 0x1

    .line 408
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 411
    const/16 v17, 0x0

    .line 399
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 404
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 406
    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    .line 416
    .end local v14    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    if-nez v10, :cond_4

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 418
    :cond_4
    add-int/lit8 v17, v17, -0x1

    .line 420
    :cond_5
    sub-int v17, v17, v22

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 423
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 425
    const/4 v4, 0x0

    .line 426
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 427
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 429
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 430
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 434
    .end local v5    # "cellSizeRemaining":I
    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_1b

    .line 435
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 437
    .restart local v14    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Llenovo/widget/ActionMenuPresenter;->getItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 439
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_7

    .line 440
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 442
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 443
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Llenovo/widget/ActionMenuView;->measureChildForCellsSimple(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 448
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 449
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 450
    if-nez v8, :cond_8

    .line 451
    move/from16 v8, v18

    .line 453
    :cond_8
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 454
    .local v9, "groupId":I
    if-eqz v9, :cond_9

    .line 455
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 457
    :cond_9
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 434
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 446
    .restart local v24    # "v":Landroid/view/View;
    :cond_a
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 458
    .end local v24    # "v":Landroid/view/View;
    :cond_b
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 461
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 462
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 463
    .local v12, "inGroup":Z
    if-gtz v17, :cond_c

    if-eqz v12, :cond_14

    :cond_c
    if-lez v26, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    if-lez v7, :cond_14

    :cond_d
    const/4 v13, 0x1

    .line 466
    .local v13, "isAction":Z
    :goto_5
    if-eqz v13, :cond_11

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Llenovo/widget/ActionMenuPresenter;->getItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 468
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_e

    .line 469
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 471
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 472
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Llenovo/widget/ActionMenuView;->measureChildForCellsSimple(Landroid/view/View;IIII)I

    move-result v6

    .line 474
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 475
    if-nez v6, :cond_f

    .line 476
    const/4 v13, 0x0

    .line 494
    .end local v6    # "cells":I
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-nez v27, :cond_11

    .line 495
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 496
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 497
    if-nez v8, :cond_10

    .line 498
    move/from16 v8, v18

    .line 501
    :cond_10
    add-int v27, v26, v8

    if-lez v27, :cond_16

    const/16 v27, 0x1

    :goto_7
    and-int v13, v13, v27

    .line 505
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_11
    if-eqz v13, :cond_17

    if-eqz v9, :cond_17

    .line 506
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 520
    :cond_12
    if-eqz v13, :cond_13

    add-int/lit8 v17, v17, -0x1

    .line 522
    :cond_13
    invoke-virtual {v14, v13}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 463
    .end local v13    # "isAction":Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_5

    .line 479
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_15
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 501
    .restart local v18    # "measuredWidth":I
    :cond_16
    const/16 v27, 0x0

    goto :goto_7

    .line 507
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_17
    if-eqz v12, :cond_12

    .line 509
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 510
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_8
    move/from16 v0, v16

    if-ge v0, v11, :cond_12

    .line 511
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 512
    .local v3, "areYouMyGroupie":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_19

    .line 514
    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_18

    add-int/lit8 v17, v17, 0x1

    .line 515
    :cond_18
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 510
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 525
    .end local v3    # "areYouMyGroupie":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1a
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 528
    .end local v14    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_1b
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 181
    check-cast v2, Llenovo/widget/ActionMenuView;

    .line 182
    .local v2, "menuParent":Llenovo/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 183
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Llenovo/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    invoke-virtual {v2, v1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    :cond_2
    return-object v0

    .line 179
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Llenovo/widget/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Lcom/lenovo/internal/view/menu/MenuView;
    move-object v1, v0

    .line 169
    check-cast v1, Llenovo/widget/ActionMenuView;

    invoke-virtual {v1, p0}, Llenovo/widget/ActionMenuView;->setPresenter(Llenovo/widget/ActionMenuPresenter;)V

    .line 170
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 331
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v3}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setChecked(Z)V

    .line 332
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 343
    :goto_0
    return v1

    .line 338
    :cond_0
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    .line 339
    .local v0, "popup":Lcom/lenovo/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 341
    goto :goto_0

    :cond_1
    move v1, v3

    .line 343
    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 364
    const/4 v0, 0x1

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 98
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 103
    .local v0, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 107
    :cond_0
    iget-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 112
    :cond_1
    iget-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItems:I

    .line 116
    :cond_2
    iget v3, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 117
    .local v3, "width":I
    iget-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_4

    .line 118
    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_3

    .line 119
    new-instance v4, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Llenovo/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 120
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 121
    .local v2, "spec":I
    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 123
    .end local v2    # "spec":I
    :cond_3
    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 128
    :goto_0
    iput v3, p0, Llenovo/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 130
    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 133
    iput-object v7, p0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 134
    return-void

    .line 125
    :cond_4
    iput-object v7, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

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
    .line 384
    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 533
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 534
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 535
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 138
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItems:I

    .line 141
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 144
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 546
    move-object v1, p1

    check-cast v1, Llenovo/widget/ActionMenuPresenter$SavedState;

    .line 547
    .local v1, "saved":Llenovo/widget/ActionMenuPresenter$SavedState;
    iget v3, v1, Llenovo/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 548
    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget v4, v1, Llenovo/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 549
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .line 551
    .local v2, "subMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Llenovo/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z

    .line 554
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Llenovo/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Llenovo/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 540
    .local v0, "state":Llenovo/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Llenovo/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Llenovo/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 541
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v2

    .line 270
    :cond_1
    move-object v1, p1

    .line 271
    .local v1, "topSubMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 272
    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 274
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Llenovo/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 276
    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 277
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 280
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Llenovo/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 281
    new-instance v2, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 282
    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 283
    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 284
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z

    .line 285
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 558
    if-eqz p1, :cond_0

    .line 560
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Llenovo/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 164
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 158
    iput p1, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItems:I

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 160
    return-void
.end method

.method public setMenuView(Llenovo/widget/ActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Llenovo/widget/ActionMenuView;

    .prologue
    .line 567
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    .line 568
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Llenovo/widget/ActionMenuView;->initialize(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 569
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 155
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 147
    iput p1, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 148
    iput-boolean p2, p0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 150
    return-void
.end method

.method public shouldIncludeItem(ILcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 205
    invoke-virtual {p2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 308
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v5}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setChecked(Z)V

    .line 309
    iget-boolean v1, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    new-instance v0, Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 312
    .local v0, "popup":Llenovo/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 314
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 318
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z

    .line 322
    .end local v0    # "popup":Llenovo/widget/ActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 12
    .param p1, "cleared"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 210
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 211
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 212
    invoke-static {v5}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 214
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 216
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 218
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_2

    .line 219
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 221
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 222
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Llenovo/view/ActionProvider;

    move-result-object v8

    .line 223
    .local v8, "provider":Llenovo/view/ActionProvider;
    if-eqz v8, :cond_1

    .line 224
    invoke-virtual {v8, p0}, Llenovo/view/ActionProvider;->setSubUiVisibilityListener(Llenovo/view/ActionProvider$SubUiVisibilityListener;)V

    .line 221
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Llenovo/view/ActionProvider;
    :cond_2
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_7

    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 232
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 233
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 234
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 235
    .restart local v1    # "count":I
    if-ne v1, v10, :cond_9

    .line 236
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v9

    if-nez v9, :cond_8

    move v2, v10

    .line 242
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_b

    .line 243
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v9, :cond_4

    .line 244
    new-instance v9, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v10, p0, Llenovo/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 246
    :cond_4
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 247
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    if-eq v7, v9, :cond_6

    .line 248
    if-eqz v7, :cond_5

    .line 249
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    :cond_5
    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v4, Llenovo/widget/ActionMenuView;

    .line 252
    .local v4, "menuView":Llenovo/widget/ActionMenuView;
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Llenovo/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Llenovo/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .end local v4    # "menuView":Llenovo/widget/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    :cond_6
    :goto_3
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v9, Llenovo/widget/ActionMenuView;

    iget-boolean v10, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v9, v10}, Llenovo/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 259
    return-void

    .line 229
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_8
    move v2, v11

    .line 236
    goto :goto_2

    .line 238
    :cond_9
    if-lez v1, :cond_a

    move v2, v10

    :goto_4
    goto :goto_2

    :cond_a
    move v2, v11

    goto :goto_4

    .line 254
    .end local v1    # "count":I
    :cond_b
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v9, :cond_6

    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v10, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    if-ne v9, v10, :cond_6

    .line 255
    iget-object v9, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method
