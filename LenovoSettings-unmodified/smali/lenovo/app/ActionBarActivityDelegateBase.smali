.class Llenovo/app/ActionBarActivityDelegateBase;
.super Llenovo/app/ActionBarActivityDelegate;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;,
        Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;,
        Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;,
        Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegateBase"


# instance fields
.field private mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

.field mActionMode:Llenovo/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

.field private mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field private mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleToSet:Ljava/lang/CharSequence;

.field private mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

.field private mWindowDecor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 114
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$1;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarActivityDelegateBase$1;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 137
    return-void
.end method

.method static synthetic access$000(Llenovo/app/ActionBarActivityDelegateBase;)I
    .locals 1
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;

    .prologue
    .line 82
    iget v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Llenovo/app/ActionBarActivityDelegateBase;I)I
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$100(Llenovo/app/ActionBarActivityDelegateBase;I)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->doInvalidatePanelMenu(I)V

    return-void
.end method

.method static synthetic access$1000(Llenovo/app/ActionBarActivityDelegateBase;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$1100(Llenovo/app/ActionBarActivityDelegateBase;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$202(Llenovo/app/ActionBarActivityDelegateBase;Z)Z
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$300(Llenovo/app/ActionBarActivityDelegateBase;I)I
    .locals 1
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->updateStatusGuard(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Llenovo/app/ActionBarActivityDelegateBase;Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Llenovo/app/ActionBarActivityDelegateBase;ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Llenovo/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$800(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic access$900(Llenovo/app/ActionBarActivityDelegateBase;)Lcom/lenovo/internal/widget/DecorContentParent;
    .locals 1
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;

    .prologue
    .line 82
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    return-object v0
.end method

.method private applyFixedSizeWindow()V
    .locals 13

    .prologue
    .line 504
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    sget-object v12, Lcom/lenovo/component/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v11, v12}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 506
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 507
    .local v5, "mFixedWidthMajor":Landroid/util/TypedValue;
    const/4 v6, 0x0

    .line 508
    .local v6, "mFixedWidthMinor":Landroid/util/TypedValue;
    const/4 v3, 0x0

    .line 509
    .local v3, "mFixedHeightMajor":Landroid/util/TypedValue;
    const/4 v4, 0x0

    .line 528
    .local v4, "mFixedHeightMinor":Landroid/util/TypedValue;
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 529
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v11, v12, :cond_4

    const/4 v2, 0x1

    .line 530
    .local v2, "isPortrait":Z
    :goto_0
    const/4 v10, -0x1

    .line 531
    .local v10, "w":I
    const/4 v1, -0x1

    .line 533
    .local v1, "h":I
    if-eqz v2, :cond_5

    move-object v9, v6

    .line 534
    .local v9, "tvw":Ljava/lang/Object;
    :goto_1
    if-eqz v9, :cond_0

    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_0

    .line 535
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_6

    .line 536
    invoke-virtual {v9, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    .line 542
    :cond_0
    :goto_2
    if-eqz v2, :cond_7

    move-object v8, v3

    .line 543
    .local v8, "tvh":Ljava/lang/Object;
    :goto_3
    if-eqz v8, :cond_1

    iget v11, v8, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_1

    .line 544
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_8

    .line 545
    invoke-virtual {v8, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v1, v11

    .line 551
    :cond_1
    :goto_4
    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v11, -0x1

    if-eq v1, v11, :cond_3

    .line 552
    :cond_2
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v10, v1}, Landroid/view/Window;->setLayout(II)V

    .line 555
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 556
    return-void

    .line 529
    .end local v1    # "h":I
    .end local v2    # "isPortrait":Z
    .end local v8    # "tvh":Ljava/lang/Object;
    .end local v9    # "tvw":Ljava/lang/Object;
    .end local v10    # "w":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "h":I
    .restart local v2    # "isPortrait":Z
    .restart local v10    # "w":I
    :cond_5
    move-object v9, v5

    .line 533
    goto :goto_1

    .line 537
    .restart local v9    # "tvw":Ljava/lang/Object;
    :cond_6
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    .line 538
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    goto :goto_2

    :cond_7
    move-object v8, v4

    .line 542
    goto :goto_3

    .line 546
    .restart local v8    # "tvh":Ljava/lang/Object;
    :cond_8
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_1

    .line 547
    iget v11, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v1, v11

    goto :goto_4
.end method

.method private callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "panel"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1361
    if-nez p3, :cond_1

    .line 1363
    if-nez p2, :cond_0

    .line 1364
    if-ltz p1, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1365
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1369
    :cond_0
    if-eqz p2, :cond_1

    .line 1371
    iget-object p3, p2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1376
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_2

    .line 1380
    :goto_0
    return-void

    .line 1379
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1306
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1310
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1311
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1312
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1313
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1314
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1316
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method private checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1864
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1875
    :goto_0
    return-void

    .line 1868
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1869
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/SplitActionBarView;->dismissPopups()V

    .line 1870
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1871
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1872
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1874
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method private closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 3
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1326
    if-eqz p2, :cond_2

    iget v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v0, :cond_2

    .line 1327
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1331
    iget-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 1337
    :cond_2
    iget-boolean v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_3

    .line 1338
    if-eqz p2, :cond_3

    .line 1339
    iget v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-direct {p0, v0, p1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 1343
    :cond_3
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1344
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1345
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    .line 1348
    iput-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1352
    const/4 v0, 0x1

    iput-boolean v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1354
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1355
    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    goto :goto_0
.end method

.method private doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1452
    invoke-direct {p0, p1, v4}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1453
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    const/4 v0, 0x0

    .line 1454
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 1455
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1456
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1458
    iput-object v0, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1461
    :cond_0
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1462
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->clear()V

    .line 1464
    :cond_1
    iput-boolean v4, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1465
    iput-boolean v4, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1471
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_4

    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_4

    .line 1474
    :cond_3
    invoke-direct {p0, v3, v3}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1475
    if-eqz v1, :cond_4

    .line 1476
    iput-boolean v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1477
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1480
    :cond_4
    return-void
.end method

.method private ensureToolbarListMenuPresenter()V
    .locals 3

    .prologue
    .line 1559
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_0

    .line 1560
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0001

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1562
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    const v2, 0x7f04004c

    invoke-direct {v1, v0, v2}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 1565
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1383
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1384
    .local v3, "panels":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1385
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1386
    aget-object v2, v3, v1

    .line 1387
    .local v2, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1391
    .end local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1384
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1385
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1391
    .end local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 1104
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1105
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 1106
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1108
    :cond_0
    return-object v0
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 1112
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1113
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 1114
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1116
    :cond_0
    return-object v0
.end method

.method private getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1396
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .local v0, "ar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gt v3, p1, :cond_2

    .line 1397
    :cond_0
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1398
    .local v1, "nar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_1

    .line 1399
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1401
    :cond_1
    move-object v0, v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1404
    .end local v1    # "nar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    aget-object v2, v0, p1

    .line 1405
    .local v2, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-nez v2, :cond_3

    .line 1406
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .end local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {v2, p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;-><init>(I)V

    .restart local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    aput-object v2, v0, p1

    .line 1408
    :cond_3
    return-object v2
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v1, 0x4

    .line 1095
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1098
    :cond_0
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1101
    :cond_1
    return-void
.end method

.method private initializePanelContent(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    const/4 v1, 0x0

    .line 1165
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return v1

    .line 1169
    :cond_1
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1170
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$1;)V

    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    .line 1173
    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->getListMenuView(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    .line 1175
    .local v0, "menuView":Lcom/lenovo/internal/view/menu/MenuView;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Lcom/lenovo/internal/view/menu/MenuView;
    iput-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1177
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initializePanelDecor(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)V
    .locals 1
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    .line 999
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iput-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1000
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1001
    return-void
.end method

.method private initializePanelMenu(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 10
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    const v9, 0x1010397

    const/4 v8, 0x1

    .line 1120
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 1123
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    :cond_0
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v6, :cond_1

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v6, :cond_5

    .line 1125
    :cond_1
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1126
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1127
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 1128
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1131
    :cond_2
    const/4 v5, 0x0

    .line 1132
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_6

    .line 1133
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1134
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1135
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1136
    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1143
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1144
    if-nez v5, :cond_3

    .line 1145
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1146
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1148
    :cond_3
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1151
    :cond_4
    if-eqz v5, :cond_5

    .line 1152
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1153
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1157
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_5
    new-instance v3, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1158
    .local v3, "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 1159
    invoke-virtual {p1, v3}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1161
    return v8

    .line 1139
    .end local v3    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_6
    invoke-virtual {v0, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1442
    iget v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    .line 1444
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1447
    iput-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    .line 1449
    :cond_0
    return-void
.end method

.method private openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 938
    if-nez p1, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 949
    :goto_0
    return-void

    .line 942
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 945
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    goto :goto_0

    .line 947
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 9
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 953
    iget-boolean v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v7, :cond_2

    .line 960
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 961
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 962
    .local v1, "config":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    move v4, v5

    .line 964
    .local v4, "isXLarge":Z
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_4

    move v3, v5

    .line 967
    .local v3, "isHoneycombApp":Z
    :goto_2
    if-eqz v4, :cond_2

    if-nez v3, :cond_0

    .line 972
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "isHoneycombApp":Z
    .end local v4    # "isXLarge":Z
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 973
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_5

    iget v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v8, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v8}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 975
    invoke-direct {p0, p1, v5}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0

    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "context":Landroid/content/Context;
    :cond_3
    move v4, v6

    .line 962
    goto :goto_1

    .restart local v4    # "isXLarge":Z
    :cond_4
    move v3, v6

    .line 964
    goto :goto_2

    .line 980
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "isXLarge":Z
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    :cond_5
    invoke-direct {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 984
    iget-object v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    iget-boolean v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_7

    .line 985
    :cond_6
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelDecor(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)V

    .line 989
    :cond_7
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelContent(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 993
    iput-boolean v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 995
    iput-boolean v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    goto :goto_0
.end method

.method private preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1181
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return v4

    .line 1186
    :cond_1
    iget-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_2

    move v4, v3

    .line 1187
    goto :goto_0

    .line 1190
    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eq v2, p1, :cond_3

    .line 1192
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-direct {p0, v2, v4}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1195
    :cond_3
    iget v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-eqz v2, :cond_4

    iget v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_a

    :cond_4
    move v0, v3

    .line 1198
    .local v0, "isActionBarMenu":Z
    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_5

    .line 1201
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 1205
    :cond_5
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v2, :cond_e

    .line 1206
    :cond_6
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_7

    .line 1207
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelMenu(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1220
    :cond_7
    if-eqz v0, :cond_9

    .line 1221
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    if-nez v2, :cond_8

    .line 1222
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v7}, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$1;)V

    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    .line 1224
    :cond_8
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_b

    .line 1225
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1234
    :cond_9
    :goto_2
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1235
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    iget v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1237
    invoke-virtual {p1, v7}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1244
    if-eqz v0, :cond_0

    .line 1245
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_c

    .line 1246
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v7, v3}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0

    .end local v0    # "isActionBarMenu":Z
    :cond_a
    move v0, v4

    .line 1195
    goto :goto_1

    .line 1226
    .restart local v0    # "isActionBarMenu":Z
    :cond_b
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_9

    .line 1227
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_2

    .line 1247
    :cond_c
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_0

    .line 1248
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    .line 1256
    :cond_d
    iput-boolean v4, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1261
    :cond_e
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1265
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v2, :cond_f

    .line 1266
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1267
    iput-object v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1271
    :cond_f
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v4, v7, v5}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1278
    if-eqz v0, :cond_10

    .line 1279
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_11

    .line 1280
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v7, v3}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1286
    :cond_10
    :goto_3
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1281
    :cond_11
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_10

    .line 1282
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_3

    .line 1291
    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    :goto_4
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 1293
    .local v1, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_14

    move v2, v3

    :goto_5
    iput-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    .line 1294
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-boolean v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v2, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1295
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1298
    iput-boolean v3, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1299
    iput-boolean v4, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1300
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move v4, v3

    .line 1302
    goto/16 :goto_0

    .line 1291
    .end local v1    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_13
    const/4 v2, -0x1

    goto :goto_4

    .restart local v1    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v2, v4

    .line 1293
    goto :goto_5
.end method

.method private reopenMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 8
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1004
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1008
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1010
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_4

    .line 1011
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1013
    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_2

    iget v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1015
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1016
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1019
    :cond_2
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1023
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v7, v2}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1025
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1026
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1080
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 1030
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    :cond_4
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1031
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1032
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1033
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1039
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_5
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1043
    :cond_6
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1045
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_9

    .line 1046
    :cond_7
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1048
    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_8

    iget v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 1050
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1051
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1054
    :cond_8
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1058
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v7, v2}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1060
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1061
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    goto/16 :goto_0

    .line 1065
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_9
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->hideOverflowMenu()Z

    .line 1066
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1067
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1068
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 1074
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_a
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1076
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iput-boolean v5, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1077
    invoke-direct {p0, v1, v4}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1079
    invoke-direct {p0, v1, v7}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto/16 :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v2, 0x0

    .line 1084
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1085
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1088
    :cond_0
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 1089
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1091
    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0x2710

    const/4 v4, 0x0

    .line 899
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 900
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 902
    .local v1, "horizontalProgressBar":Landroid/widget/ProgressBar;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    .line 903
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v5, :cond_1

    .line 904
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 905
    .local v2, "level":I
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v2, v6, :cond_3

    :cond_0
    move v3, v4

    .line 907
    .local v3, "visibility":I
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 909
    .end local v2    # "level":I
    .end local v3    # "visibility":I
    :cond_1
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v5, :cond_2

    .line 910
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 935
    :cond_2
    :goto_1
    return-void

    .line 905
    .restart local v2    # "level":I
    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    .line 912
    .end local v2    # "level":I
    :cond_4
    const/4 v5, -0x2

    if-ne p1, v5, :cond_6

    .line 913
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v4, :cond_5

    .line 914
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 916
    :cond_5
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v4, :cond_2

    .line 917
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 919
    :cond_6
    const/4 v5, -0x3

    if-ne p1, v5, :cond_7

    .line 920
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 921
    :cond_7
    const/4 v5, -0x4

    if-ne p1, v5, :cond_8

    .line 922
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 923
    :cond_8
    if-ltz p1, :cond_2

    if-gt p1, v6, :cond_2

    .line 927
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 929
    if-ge p1, v6, :cond_9

    .line 930
    invoke-direct {p0, v1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 932
    :cond_9
    invoke-direct {p0, v1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1
.end method

.method private updateStatusGuard(I)I
    .locals 12
    .param p1, "insetTop"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1489
    const/4 v6, 0x0

    .line 1491
    .local v6, "showStatusGuard":Z
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_3

    .line 1492
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 1493
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1495
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    .line 1497
    .local v4, "mlpChanged":Z
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1498
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 1499
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1500
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1502
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1503
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1504
    .local v1, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1506
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v8, v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1507
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_5

    move v5, p1

    .line 1508
    .local v5, "newMargin":I
    :goto_0
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v5, :cond_1

    .line 1509
    const/4 v4, 0x1

    .line 1510
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1512
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1513
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    .line 1514
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1516
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    :cond_1
    :goto_1
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    .line 1536
    :goto_2
    iget-boolean v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 1537
    const/4 p1, 0x0

    .line 1546
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1547
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1551
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_3
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 1552
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    :cond_4
    return p1

    .restart local v0    # "insets":Landroid/graphics/Rect;
    .restart local v1    # "localInsets":Landroid/graphics/Rect;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    :cond_5
    move v5, v7

    .line 1507
    goto :goto_0

    .line 1520
    .restart local v5    # "newMargin":I
    :cond_6
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1521
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_1

    .line 1522
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1523
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move v6, v7

    .line 1530
    goto :goto_2

    .line 1541
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_8
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v8, :cond_2

    .line 1542
    const/4 v4, 0x1

    .line 1543
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1552
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_9
    const/16 v7, 0x8

    goto :goto_4
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 244
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 245
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 246
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 248
    return-void
.end method

.method public createSupportActionBar()Llenovo/app/ActionBar;
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 158
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getUiOptions()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/lenovo/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 160
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    iget-boolean v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasEmbeddedTabsSup:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;ZZ)V

    .line 161
    .local v0, "ab":Llenovo/app/ActionBar;
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 162
    return-object v0

    .line 158
    .end local v0    # "ab":Llenovo/app/ActionBar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method createView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 876
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 879
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 892
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 879
    :sswitch_0
    const-string v1, "EditText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "Spinner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "RadioButton"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "CheckedTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 881
    :pswitch_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 883
    :pswitch_1
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 885
    :pswitch_2
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 887
    :pswitch_3
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 889
    :pswitch_4
    new-instance v0, Landroid/widget/CheckedTextView;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 879
    nop

    :sswitch_data_0
    .sparse-switch
        -0x56c015e7 -> :sswitch_4
        -0x1440b607 -> :sswitch_1
        0x2e46a6ed -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final ensureSubDecor()V
    .locals 12

    .prologue
    const v11, 0x1020002

    const/16 v10, 0x15

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 369
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-nez v5, :cond_7

    .line 370
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v5, :cond_9

    .line 376
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 377
    .local v2, "outValue":Landroid/util/TypedValue;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_0

    .line 378
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010431

    invoke-virtual {v5, v6, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 382
    :cond_0
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_8

    .line 383
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 389
    .local v4, "themedContext":Landroid/content/Context;
    :goto_0
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04004f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 392
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v6, 0x7f0b0008

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/internal/widget/DecorContentParent;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    .line 394
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 399
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    if-eqz v5, :cond_1

    .line 400
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/16 v6, 0x9

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 402
    :cond_1
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v5, :cond_2

    .line 403
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 405
    :cond_2
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v5, :cond_3

    .line 406
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 459
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "themedContext":Landroid/content/Context;
    :cond_3
    :goto_1
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/lenovo/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 462
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-interface {v5, v6}, Llenovo/app/ActivityBarActivityImpl;->superSetContentView(Landroid/view/View;)V

    .line 466
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 467
    .local v1, "decorContent":Landroid/view/View;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 468
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0b0002

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 469
    .local v0, "abcContent":Landroid/view/View;
    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    .line 473
    instance-of v5, v1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_4

    .line 474
    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "decorContent":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 478
    :cond_4
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v5, :cond_5

    .line 479
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 480
    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    .line 483
    :cond_5
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->applyFixedSizeWindow()V

    .line 485
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->onSubDecorInstalled()V

    .line 487
    iput-boolean v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    .line 494
    invoke-direct {p0, v8, v8}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v3

    .line 495
    .local v3, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v3, :cond_6

    iget-object v5, v3, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v5, :cond_7

    .line 496
    :cond_6
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Llenovo/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    .line 499
    .end local v0    # "abcContent":Landroid/view/View;
    .end local v3    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_7
    return-void

    .line 385
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    :cond_8
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .restart local v4    # "themedContext":Landroid/content/Context;
    goto/16 :goto_0

    .line 409
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "themedContext":Landroid/content/Context;
    :cond_9
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSplitNoAcionBar:Z

    if-nez v5, :cond_b

    .line 410
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-eqz v5, :cond_a

    .line 411
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040052

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 424
    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_c

    .line 427
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$4;

    invoke-direct {v6, p0}, Llenovo/app/ActionBarActivityDelegateBase$4;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 414
    :cond_a
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040051

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    goto :goto_2

    .line 418
    :cond_b
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040053

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 420
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v6, 0x7f0b0003

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/internal/widget/SplitActionBarView;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    .line 421
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/SplitActionBarView;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    goto :goto_2

    .line 448
    :cond_c
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    check-cast v5, Lcom/lenovo/internal/widget/FitWindowsViewGroup;

    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$5;

    invoke-direct {v6, p0}, Llenovo/app/ActionBarActivityDelegateBase$5;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_1
.end method

.method protected getDecorViewLayoutRes()I
    .locals 2

    .prologue
    .line 257
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 258
    const v0, 0x7f04004f

    .line 270
    .local v0, "layoutRes":I
    :goto_0
    return v0

    .line 260
    .end local v0    # "layoutRes":I
    :cond_0
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSplitNoAcionBar:Z

    if-nez v1, :cond_2

    .line 261
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-eqz v1, :cond_1

    .line 262
    const v0, 0x7f040052

    .restart local v0    # "layoutRes":I
    goto :goto_0

    .line 264
    .end local v0    # "layoutRes":I
    :cond_1
    const v0, 0x7f040051

    .restart local v0    # "layoutRes":I
    goto :goto_0

    .line 267
    .end local v0    # "layoutRes":I
    :cond_2
    const v0, 0x7f040053

    .restart local v0    # "layoutRes":I
    goto :goto_0
.end method

.method getHomeAsUpIndicatorAttrId()I
    .locals 1

    .prologue
    .line 833
    const v0, 0x101030b

    return v0
.end method

.method protected installSubDecor()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v12, 0x1020002

    const/16 v11, 0x15

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-nez v7, :cond_7

    .line 274
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 275
    .local v6, "themedContext":Landroid/content/Context;
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v7, :cond_1

    .line 276
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 277
    .local v4, "outValue":Landroid/util/TypedValue;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v11, :cond_0

    .line 278
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x1010431

    invoke-virtual {v7, v8, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 280
    :cond_0
    iget v7, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_1

    .line 281
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .end local v6    # "themedContext":Landroid/content/Context;
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 287
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v6    # "themedContext":Landroid/content/Context;
    :cond_1
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 288
    .local v2, "localViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 289
    .local v1, "localView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 290
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 291
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 292
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getDecorViewLayoutRes()I

    move-result v8

    invoke-virtual {v7, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 295
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v7, :cond_8

    .line 300
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v8, 0x7f0b0008

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/DecorContentParent;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    .line 302
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 304
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    if-eqz v7, :cond_2

    .line 305
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/16 v8, 0x9

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 307
    :cond_2
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v7, :cond_3

    .line 308
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 310
    :cond_3
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v7, :cond_4

    .line 311
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 346
    :cond_4
    :goto_0
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v7}, Lcom/lenovo/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 347
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v8, 0x7f0b0002

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "abcContent":Landroid/view/View;
    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    .line 350
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    if-eqz v7, :cond_5

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v7, :cond_5

    .line 351
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 352
    iput-object v13, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    .line 355
    :cond_5
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->applyFixedSizeWindow()V

    .line 357
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->onSubDecorInstalled()V

    .line 359
    iput-boolean v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    .line 361
    invoke-direct {p0, v9, v9}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v5

    .line 362
    .local v5, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v5, :cond_6

    iget-object v7, v5, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v7, :cond_7

    .line 363
    :cond_6
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Llenovo/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    .line 366
    .end local v0    # "abcContent":Landroid/view/View;
    .end local v1    # "localView":Landroid/view/View;
    .end local v2    # "localViewGroup":Landroid/view/ViewGroup;
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_7
    return-void

    .line 314
    .restart local v1    # "localView":Landroid/view/View;
    .restart local v2    # "localViewGroup":Landroid/view/ViewGroup;
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6    # "themedContext":Landroid/content/Context;
    :cond_8
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSplitNoAcionBar:Z

    if-eqz v7, :cond_9

    .line 315
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v8, 0x7f0b0003

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/SplitActionBarView;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    .line 316
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/internal/widget/SplitActionBarView;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 318
    :cond_9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v11, :cond_a

    .line 319
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    new-instance v8, Llenovo/app/ActionBarActivityDelegateBase$2;

    invoke-direct {v8, p0}, Llenovo/app/ActionBarActivityDelegateBase$2;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    .line 337
    :cond_a
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    check-cast v7, Lcom/lenovo/internal/widget/FitWindowsViewGroup;

    new-instance v8, Llenovo/app/ActionBarActivityDelegateBase$3;

    invoke-direct {v8, p0}, Llenovo/app/ActionBarActivityDelegateBase$3;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 795
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_1

    .line 796
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->finish()V

    .line 805
    :cond_0
    :goto_0
    return v0

    .line 801
    :cond_1
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1}, Llenovo/app/ActionBar;->collapseActionView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 192
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    .line 145
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Llenovo/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-nez v0, :cond_1

    .line 147
    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mEnableDefaultActionBarUp:Z

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 624
    if-eqz p1, :cond_0

    .line 625
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4
    .param p1, "featureId"    # I

    .prologue
    .line 597
    const/4 v1, 0x0

    .line 600
    .local v1, "panelView":Landroid/view/View;
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-nez v3, :cond_1

    .line 602
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 603
    .local v0, "callback":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    .line 604
    invoke-interface {v0, p1}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    .line 607
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v3, :cond_1

    .line 612
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v2

    .line 613
    .local v2, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 614
    iget-boolean v3, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v3, :cond_1

    .line 615
    iget-object v1, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 619
    .end local v0    # "callback":Lcom/lenovo/internal/app/WindowCallback;
    .end local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_1
    return-object v1
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 871
    invoke-virtual {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 840
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v4, :cond_1

    .line 841
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v4, v5, p2, v2}, Llenovo/app/ActionBarActivityDelegateBase;->performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 843
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 844
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v3, :cond_0

    .line 845
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    iput-boolean v2, v3, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 864
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v2

    .line 855
    :cond_1
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-nez v4, :cond_2

    .line 856
    invoke-direct {p0, v3, v2}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 857
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {p0, v1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 858
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, v1, v4, p2, v2}, Llenovo/app/ActionBarActivityDelegateBase;->performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 859
    .restart local v0    # "handled":Z
    iput-boolean v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 860
    if-nez v0, :cond_0

    .end local v0    # "handled":Z
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    move v2, v3

    .line 864
    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 671
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 672
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-direct {p0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 674
    .local v1, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 675
    iget v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 678
    .end local v1    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 683
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->reopenMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 684
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 659
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 660
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v0}, Llenovo/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 665
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v0, p1, p2}, Llenovo/app/ActivityBarActivityImpl;->superOnMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-direct {p0, p1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 641
    .local v0, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_0

    .line 643
    invoke-direct {p0, v0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 646
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 647
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_1

    .line 648
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v2}, Llenovo/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 650
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 653
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1, p1, p2}, Llenovo/app/ActivityBarActivityImpl;->superOnPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 632
    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSplitMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1878
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/SplitActionBarView;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method onSubDecorInstalled()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 586
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 593
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 591
    :cond_1
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1413
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1414
    const/4 v0, 0x0

    .line 1438
    :cond_0
    :goto_0
    return v0

    .line 1417
    :cond_1
    const/4 v0, 0x0

    .line 1421
    .local v0, "handled":Z
    iget-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1423
    iget-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1426
    :cond_3
    if-eqz v0, :cond_0

    .line 1432
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v1, :cond_0

    .line 1433
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 227
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 228
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 229
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 230
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 231
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 218
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 219
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 220
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 222
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 235
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 236
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 237
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 238
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 240
    return-void
.end method

.method setSupportActionBar(Llenovo/widget/Toolbar;)V
    .locals 5
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;

    .prologue
    .line 167
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 168
    .local v0, "ab":Llenovo/app/ActionBar;
    instance-of v2, v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    if-eqz v2, :cond_0

    .line 169
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    instance-of v2, v0, Lcom/lenovo/internal/app/ToolbarActionBar;

    if-eqz v2, :cond_1

    .line 174
    check-cast v0, Lcom/lenovo/internal/app/ToolbarActionBar;

    .end local v0    # "ab":Llenovo/app/ActionBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/app/ToolbarActionBar;->setListMenuPresenter(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)V

    .line 179
    :cond_1
    new-instance v1, Lcom/lenovo/internal/app/ToolbarActionBar;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDefaultWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/lenovo/internal/app/ToolbarActionBar;-><init>(Llenovo/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Lcom/lenovo/internal/app/WindowCallback;)V

    .line 181
    .local v1, "tbab":Lcom/lenovo/internal/app/ToolbarActionBar;
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureToolbarListMenuPresenter()V

    .line 182
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/app/ToolbarActionBar;->setListMenuPresenter(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)V

    .line 183
    invoke-virtual {p0, v1}, Llenovo/app/ActionBarActivityDelegateBase;->setSupportActionBar(Llenovo/app/ActionBar;)V

    .line 184
    invoke-virtual {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 185
    invoke-virtual {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->invalidateOptionsMenu()Z

    .line 186
    return-void
.end method

.method setSupportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 828
    add-int/lit8 v0, p1, 0x0

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 829
    return-void
.end method

.method setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 822
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 824
    return-void

    .line 822
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 816
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 818
    return-void

    .line 816
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 810
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 812
    return-void

    .line 810
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 688
    if-nez p1, :cond_0

    .line 689
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ActionMode callback can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    :cond_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->finish()V

    .line 696
    :cond_1
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V

    .line 698
    .local v0, "wrappedCallback":Llenovo/view/ActionMode$Callback;
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_4

    .line 699
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v0}, Llenovo/app/ActionBar;->startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 700
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_2

    .line 701
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v1, v2}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeStarted(Llenovo/view/ActionMode;)V

    .line 708
    :cond_2
    :goto_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-nez v1, :cond_3

    .line 710
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 713
    :cond_3
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    return-object v1

    .line 704
    :cond_4
    const-string v1, "liqftest"

    const-string v2, "ActionBar was null,you must getActionBar() before startActionMode(Callback)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 10
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 725
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v6, :cond_0

    .line 726
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v6}, Llenovo/view/ActionMode;->finish()V

    .line 728
    :cond_0
    new-instance v5, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v5, p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V

    .line 729
    .local v5, "wrappedCallback":Llenovo/view/ActionMode$Callback;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 731
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-nez v6, :cond_1

    .line 732
    iget-boolean v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mIsFloating:Z

    if-eqz v6, :cond_5

    .line 733
    new-instance v6, Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-direct {v6, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 736
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 737
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 738
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 740
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 741
    .local v2, "heightValue":Landroid/util/TypedValue;
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v9, 0x10102eb

    invoke-virtual {v6, v9, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 742
    iget v6, v2, Landroid/util/TypedValue;->data:I

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 744
    .local v1, "height":I
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 745
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 746
    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$6;

    invoke-direct {v6, p0}, Llenovo/app/ActionBarActivityDelegateBase$6;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 764
    .end local v1    # "height":I
    .end local v2    # "heightValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v6, :cond_3

    .line 765
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    .line 766
    new-instance v3, Lcom/lenovo/internal/view/StandaloneActionMode;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v6, :cond_6

    move v6, v7

    :goto_1
    invoke-direct {v3, v0, v9, v5, v6}, Lcom/lenovo/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/lenovo/internal/widget/ActionBarContextView;Llenovo/view/ActionMode$Callback;Z)V

    .line 768
    .local v3, "mode":Llenovo/view/ActionMode;
    invoke-virtual {v3}, Llenovo/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-interface {p1, v3, v6}, Llenovo/view/ActionMode$Callback;->onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 769
    invoke-virtual {v3}, Llenovo/view/ActionMode;->invalidate()V

    .line 770
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->initForMode(Llenovo/view/ActionMode;)V

    .line 771
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 772
    iput-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 773
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_2

    .line 774
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 776
    :cond_2
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/lenovo/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 779
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 780
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 786
    .end local v3    # "mode":Llenovo/view/ActionMode;
    :cond_3
    :goto_2
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v6, :cond_4

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_4

    .line 787
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v6, v7}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeStarted(Llenovo/view/ActionMode;)V

    .line 789
    :cond_4
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    return-object v6

    .line 754
    :cond_5
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0b000a

    invoke-virtual {v6, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    .line 756
    .local v4, "stub":Landroid/view/ViewStub;
    if-eqz v4, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v6, v9, :cond_1

    .line 758
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 759
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lenovo/internal/widget/ActionBarContextView;

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    goto/16 :goto_0

    .end local v4    # "stub":Landroid/view/ViewStub;
    :cond_6
    move v6, v8

    .line 766
    goto :goto_1

    .line 783
    .restart local v3    # "mode":Llenovo/view/ActionMode;
    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    goto :goto_2
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0}, Llenovo/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x1

    .line 560
    sparse-switch p1, :sswitch_data_0

    .line 580
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 562
    :sswitch_0
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    goto :goto_0

    .line 565
    :sswitch_1
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    goto :goto_0

    .line 568
    :sswitch_2
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    goto :goto_0

    .line 571
    :sswitch_3
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    goto :goto_0

    .line 574
    :sswitch_4
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 577
    :sswitch_5
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasEmbeddedTabsSup:Z

    goto :goto_0

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_5
    .end sparse-switch
.end method
