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
    .line 391
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    sget-object v12, Lcom/lenovo/component/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v11, v12}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 393
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 394
    .local v5, "mFixedWidthMajor":Landroid/util/TypedValue;
    const/4 v6, 0x0

    .line 395
    .local v6, "mFixedWidthMinor":Landroid/util/TypedValue;
    const/4 v3, 0x0

    .line 396
    .local v3, "mFixedHeightMajor":Landroid/util/TypedValue;
    const/4 v4, 0x0

    .line 415
    .local v4, "mFixedHeightMinor":Landroid/util/TypedValue;
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 416
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v11, v12, :cond_4

    const/4 v2, 0x1

    .line 417
    .local v2, "isPortrait":Z
    :goto_0
    const/4 v10, -0x1

    .line 418
    .local v10, "w":I
    const/4 v1, -0x1

    .line 420
    .local v1, "h":I
    if-eqz v2, :cond_5

    move-object v9, v6

    .line 421
    .local v9, "tvw":Ljava/lang/Object;
    :goto_1
    if-eqz v9, :cond_0

    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_0

    .line 422
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_6

    .line 423
    invoke-virtual {v9, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    .line 429
    :cond_0
    :goto_2
    if-eqz v2, :cond_7

    move-object v8, v3

    .line 430
    .local v8, "tvh":Ljava/lang/Object;
    :goto_3
    if-eqz v8, :cond_1

    iget v11, v8, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_1

    .line 431
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_8

    .line 432
    invoke-virtual {v8, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v1, v11

    .line 438
    :cond_1
    :goto_4
    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v11, -0x1

    if-eq v1, v11, :cond_3

    .line 439
    :cond_2
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v10, v1}, Landroid/view/Window;->setLayout(II)V

    .line 442
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 443
    return-void

    .line 416
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

    .line 420
    goto :goto_1

    .line 424
    .restart local v9    # "tvw":Ljava/lang/Object;
    :cond_6
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    .line 425
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

    .line 429
    goto :goto_3

    .line 433
    .restart local v8    # "tvh":Ljava/lang/Object;
    :cond_8
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_1

    .line 434
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
    .line 1245
    if-nez p3, :cond_1

    .line 1247
    if-nez p2, :cond_0

    .line 1248
    if-ltz p1, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1249
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1253
    :cond_0
    if-eqz p2, :cond_1

    .line 1255
    iget-object p3, p2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1260
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_2

    .line 1264
    :goto_0
    return-void

    .line 1263
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
    .line 1190
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1194
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1195
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1196
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1197
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1198
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1200
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method private checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1748
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1752
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1753
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/SplitActionBarView;->dismissPopups()V

    .line 1754
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1755
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1756
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1758
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

    .line 1210
    if-eqz p2, :cond_2

    iget v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v0, :cond_2

    .line 1211
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1215
    iget-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 1221
    :cond_2
    iget-boolean v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_3

    .line 1222
    if-eqz p2, :cond_3

    .line 1223
    iget v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-direct {p0, v0, p1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 1227
    :cond_3
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1228
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1229
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    .line 1232
    iput-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1238
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1239
    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    goto :goto_0
.end method

.method private doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1336
    invoke-direct {p0, p1, v4}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1337
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    const/4 v0, 0x0

    .line 1338
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 1339
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1340
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1342
    iput-object v0, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1345
    :cond_0
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1346
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->clear()V

    .line 1348
    :cond_1
    iput-boolean v4, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1349
    iput-boolean v4, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1355
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_4

    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_4

    .line 1358
    :cond_3
    invoke-direct {p0, v3, v3}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1359
    if-eqz v1, :cond_4

    .line 1360
    iput-boolean v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1361
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1364
    :cond_4
    return-void
.end method

.method private ensureToolbarListMenuPresenter()V
    .locals 3

    .prologue
    .line 1443
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_0

    .line 1444
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0001

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1446
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    const v2, 0x7f04004c

    invoke-direct {v1, v0, v2}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 1449
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1267
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1268
    .local v3, "panels":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1269
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1270
    aget-object v2, v3, v1

    .line 1271
    .local v2, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1275
    .end local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1268
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1269
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1275
    .end local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 988
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 989
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 990
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 992
    :cond_0
    return-object v0
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 996
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 997
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 998
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1000
    :cond_0
    return-object v0
.end method

.method private getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1280
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .local v0, "ar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gt v3, p1, :cond_2

    .line 1281
    :cond_0
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1282
    .local v1, "nar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_1

    .line 1283
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1285
    :cond_1
    move-object v0, v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1288
    .end local v1    # "nar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    aget-object v2, v0, p1

    .line 1289
    .local v2, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-nez v2, :cond_3

    .line 1290
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .end local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {v2, p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;-><init>(I)V

    .restart local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    aput-object v2, v0, p1

    .line 1292
    :cond_3
    return-object v2
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v1, 0x4

    .line 979
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 980
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 982
    :cond_0
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 983
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 985
    :cond_1
    return-void
.end method

.method private initializePanelContent(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    const/4 v1, 0x0

    .line 1049
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return v1

    .line 1053
    :cond_1
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1054
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$1;)V

    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    .line 1057
    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->getListMenuView(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    .line 1059
    .local v0, "menuView":Lcom/lenovo/internal/view/menu/MenuView;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Lcom/lenovo/internal/view/menu/MenuView;
    iput-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1061
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initializePanelDecor(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)V
    .locals 1
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    .line 883
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iput-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 884
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 885
    return-void
.end method

.method private initializePanelMenu(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 10
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    const v9, 0x1010397

    const/4 v8, 0x1

    .line 1004
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 1007
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

    .line 1009
    :cond_1
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1010
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1011
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 1012
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1015
    :cond_2
    const/4 v5, 0x0

    .line 1016
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_6

    .line 1017
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1018
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1019
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1020
    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1027
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1028
    if-nez v5, :cond_3

    .line 1029
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1030
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1032
    :cond_3
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1035
    :cond_4
    if-eqz v5, :cond_5

    .line 1036
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1037
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1041
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_5
    new-instance v3, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1042
    .local v3, "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 1043
    invoke-virtual {p1, v3}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1045
    return v8

    .line 1023
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

    .line 1326
    iget v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    .line 1328
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1331
    iput-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    .line 1333
    :cond_0
    return-void
.end method

.method private openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 822
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

    .line 825
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 833
    :goto_0
    return-void

    .line 826
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

    .line 829
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    goto :goto_0

    .line 831
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

    .line 837
    iget-boolean v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v7, :cond_2

    .line 844
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 845
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 846
    .local v1, "config":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    move v4, v5

    .line 848
    .local v4, "isXLarge":Z
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_4

    move v3, v5

    .line 851
    .local v3, "isHoneycombApp":Z
    :goto_2
    if-eqz v4, :cond_2

    if-nez v3, :cond_0

    .line 856
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "isHoneycombApp":Z
    .end local v4    # "isXLarge":Z
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 857
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_5

    iget v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v8, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v8}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 859
    invoke-direct {p0, p1, v5}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0

    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "context":Landroid/content/Context;
    :cond_3
    move v4, v6

    .line 846
    goto :goto_1

    .restart local v4    # "isXLarge":Z
    :cond_4
    move v3, v6

    .line 848
    goto :goto_2

    .line 864
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "isXLarge":Z
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    :cond_5
    invoke-direct {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 868
    iget-object v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    iget-boolean v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_7

    .line 869
    :cond_6
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelDecor(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)V

    .line 873
    :cond_7
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelContent(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 877
    iput-boolean v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 879
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

    .line 1065
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return v4

    .line 1070
    :cond_1
    iget-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_2

    move v4, v3

    .line 1071
    goto :goto_0

    .line 1074
    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eq v2, p1, :cond_3

    .line 1076
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-direct {p0, v2, v4}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1079
    :cond_3
    iget v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-eqz v2, :cond_4

    iget v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_a

    :cond_4
    move v0, v3

    .line 1082
    .local v0, "isActionBarMenu":Z
    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_5

    .line 1085
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 1089
    :cond_5
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v2, :cond_e

    .line 1090
    :cond_6
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_7

    .line 1091
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelMenu(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1104
    :cond_7
    if-eqz v0, :cond_9

    .line 1105
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    if-nez v2, :cond_8

    .line 1106
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v7}, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$1;)V

    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    .line 1108
    :cond_8
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_b

    .line 1109
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1118
    :cond_9
    :goto_2
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1119
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    iget v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1121
    invoke-virtual {p1, v7}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1128
    if-eqz v0, :cond_0

    .line 1129
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_c

    .line 1130
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v7, v3}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0

    .end local v0    # "isActionBarMenu":Z
    :cond_a
    move v0, v4

    .line 1079
    goto :goto_1

    .line 1110
    .restart local v0    # "isActionBarMenu":Z
    :cond_b
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_9

    .line 1111
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_2

    .line 1131
    :cond_c
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_0

    .line 1132
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    .line 1140
    :cond_d
    iput-boolean v4, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1145
    :cond_e
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1149
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v2, :cond_f

    .line 1150
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1151
    iput-object v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1155
    :cond_f
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v4, v7, v5}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1162
    if-eqz v0, :cond_10

    .line 1163
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_11

    .line 1164
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v7, v3}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1170
    :cond_10
    :goto_3
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1165
    :cond_11
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_10

    .line 1166
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_3

    .line 1175
    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    :goto_4
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 1177
    .local v1, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_14

    move v2, v3

    :goto_5
    iput-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    .line 1178
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-boolean v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v2, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1179
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1182
    iput-boolean v3, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1183
    iput-boolean v4, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1184
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move v4, v3

    .line 1186
    goto/16 :goto_0

    .line 1175
    .end local v1    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_13
    const/4 v2, -0x1

    goto :goto_4

    .restart local v1    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v2, v4

    .line 1177
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

    .line 888
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

    .line 892
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 894
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_4

    .line 895
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 897
    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_2

    iget v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 899
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 900
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 903
    :cond_2
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 907
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v7, v2}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 909
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 910
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 964
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 914
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    :cond_4
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 915
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 916
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 917
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 923
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

    .line 927
    :cond_6
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 929
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_9

    .line 930
    :cond_7
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 932
    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_8

    iget v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 934
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 935
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 938
    :cond_8
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 942
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v7, v2}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 944
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 945
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    goto/16 :goto_0

    .line 949
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_9
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->hideOverflowMenu()Z

    .line 950
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 951
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 952
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 958
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_a
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 960
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iput-boolean v5, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 961
    invoke-direct {p0, v1, v4}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 963
    invoke-direct {p0, v1, v7}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto/16 :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v2, 0x0

    .line 968
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 969
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 972
    :cond_0
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 973
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 975
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

    .line 783
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 784
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 786
    .local v1, "horizontalProgressBar":Landroid/widget/ProgressBar;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    .line 787
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v5, :cond_1

    .line 788
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 789
    .local v2, "level":I
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v2, v6, :cond_3

    :cond_0
    move v3, v4

    .line 791
    .local v3, "visibility":I
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 793
    .end local v2    # "level":I
    .end local v3    # "visibility":I
    :cond_1
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v5, :cond_2

    .line 794
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 819
    :cond_2
    :goto_1
    return-void

    .line 789
    .restart local v2    # "level":I
    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    .line 796
    .end local v2    # "level":I
    :cond_4
    const/4 v5, -0x2

    if-ne p1, v5, :cond_6

    .line 797
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v4, :cond_5

    .line 798
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 800
    :cond_5
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v4, :cond_2

    .line 801
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 803
    :cond_6
    const/4 v5, -0x3

    if-ne p1, v5, :cond_7

    .line 804
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 805
    :cond_7
    const/4 v5, -0x4

    if-ne p1, v5, :cond_8

    .line 806
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 807
    :cond_8
    if-ltz p1, :cond_2

    if-gt p1, v6, :cond_2

    .line 811
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 813
    if-ge p1, v6, :cond_9

    .line 814
    invoke-direct {p0, v1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 816
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

    .line 1373
    const/4 v6, 0x0

    .line 1375
    .local v6, "showStatusGuard":Z
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_3

    .line 1376
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 1377
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1379
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    .line 1381
    .local v4, "mlpChanged":Z
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1382
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 1383
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1384
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1386
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1387
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1388
    .local v1, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1390
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v8, v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1391
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_5

    move v5, p1

    .line 1392
    .local v5, "newMargin":I
    :goto_0
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v5, :cond_1

    .line 1393
    const/4 v4, 0x1

    .line 1394
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1396
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1397
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    .line 1398
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1400
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    :cond_1
    :goto_1
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    .line 1420
    :goto_2
    iget-boolean v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 1421
    const/4 p1, 0x0

    .line 1430
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1431
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_3
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 1436
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    :cond_4
    return p1

    .restart local v0    # "insets":Landroid/graphics/Rect;
    .restart local v1    # "localInsets":Landroid/graphics/Rect;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    :cond_5
    move v5, v7

    .line 1391
    goto :goto_0

    .line 1404
    .restart local v5    # "newMargin":I
    :cond_6
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1405
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_1

    .line 1406
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1407
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move v6, v7

    .line 1414
    goto :goto_2

    .line 1425
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_8
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v8, :cond_2

    .line 1426
    const/4 v4, 0x1

    .line 1427
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1436
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
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

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
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

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

    invoke-direct {v0, v1, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

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
    .line 760
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 763
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 776
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 763
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

    .line 765
    :pswitch_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 767
    :pswitch_1
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 769
    :pswitch_2
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 771
    :pswitch_3
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 773
    :pswitch_4
    new-instance v0, Landroid/widget/CheckedTextView;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 763
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

    .line 256
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-nez v5, :cond_7

    .line 257
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v5, :cond_9

    .line 263
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 264
    .local v2, "outValue":Landroid/util/TypedValue;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_0

    .line 265
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010431

    invoke-virtual {v5, v6, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 269
    :cond_0
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_8

    .line 270
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 276
    .local v4, "themedContext":Landroid/content/Context;
    :goto_0
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04004f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 279
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v6, 0x7f0b0008

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/internal/widget/DecorContentParent;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    .line 281
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 286
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    if-eqz v5, :cond_1

    .line 287
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/16 v6, 0x9

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 289
    :cond_1
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v5, :cond_2

    .line 290
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 292
    :cond_2
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v5, :cond_3

    .line 293
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 346
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "themedContext":Landroid/content/Context;
    :cond_3
    :goto_1
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/lenovo/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 349
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-interface {v5, v6}, Llenovo/app/ActivityBarActivityImpl;->superSetContentView(Landroid/view/View;)V

    .line 353
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 354
    .local v1, "decorContent":Landroid/view/View;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 355
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0b0002

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, "abcContent":Landroid/view/View;
    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    .line 360
    instance-of v5, v1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_4

    .line 361
    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "decorContent":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_4
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v5, :cond_5

    .line 366
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 367
    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    .line 370
    :cond_5
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->applyFixedSizeWindow()V

    .line 372
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->onSubDecorInstalled()V

    .line 374
    iput-boolean v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    .line 381
    invoke-direct {p0, v8, v8}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v3

    .line 382
    .local v3, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v3, :cond_6

    iget-object v5, v3, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v5, :cond_7

    .line 383
    :cond_6
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Llenovo/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    .line 386
    .end local v0    # "abcContent":Landroid/view/View;
    .end local v3    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_7
    return-void

    .line 272
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    :cond_8
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .restart local v4    # "themedContext":Landroid/content/Context;
    goto/16 :goto_0

    .line 296
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "themedContext":Landroid/content/Context;
    :cond_9
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSplitNoAcionBar:Z

    if-nez v5, :cond_b

    .line 297
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-eqz v5, :cond_a

    .line 298
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040052

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 311
    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_c

    .line 314
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$2;

    invoke-direct {v6, p0}, Llenovo/app/ActionBarActivityDelegateBase$2;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 301
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

    .line 305
    :cond_b
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040053

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 307
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v6, 0x7f0b0003

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/internal/widget/SplitActionBarView;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    .line 308
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/SplitActionBarView;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    goto :goto_2

    .line 335
    :cond_c
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    check-cast v5, Lcom/lenovo/internal/widget/FitWindowsViewGroup;

    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$3;

    invoke-direct {v6, p0}, Llenovo/app/ActionBarActivityDelegateBase$3;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_1
.end method

.method getHomeAsUpIndicatorAttrId()I
    .locals 1

    .prologue
    .line 717
    const v0, 0x101030b

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 679
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_1

    .line 680
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->finish()V

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1}, Llenovo/app/ActionBar;->collapseActionView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
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
    .line 508
    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 511
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
    .line 481
    const/4 v1, 0x0

    .line 484
    .local v1, "panelView":Landroid/view/View;
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-nez v3, :cond_1

    .line 486
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 487
    .local v0, "callback":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0, p1}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    .line 491
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v3, :cond_1

    .line 496
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v2

    .line 497
    .local v2, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 498
    iget-boolean v3, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v3, :cond_1

    .line 499
    iget-object v1, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 503
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
    .line 755
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

    .line 724
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v4, :cond_1

    .line 725
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v4, v5, p2, v2}, Llenovo/app/ActionBarActivityDelegateBase;->performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 727
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 728
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v3, :cond_0

    .line 729
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    iput-boolean v2, v3, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 748
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v2

    .line 739
    :cond_1
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-nez v4, :cond_2

    .line 740
    invoke-direct {p0, v3, v2}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 741
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {p0, v1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 742
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, v1, v4, p2, v2}, Llenovo/app/ActionBarActivityDelegateBase;->performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 743
    .restart local v0    # "handled":Z
    iput-boolean v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 744
    if-nez v0, :cond_0

    .end local v0    # "handled":Z
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    move v2, v3

    .line 748
    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 555
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 556
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-direct {p0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 558
    .local v1, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 559
    iget v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 562
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
    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->reopenMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 568
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 543
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 544
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v0}, Llenovo/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 549
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

    .line 524
    invoke-direct {p0, p1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 525
    .local v0, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0, v0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 530
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 531
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v2}, Llenovo/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 539
    :cond_1
    :goto_0
    return-void

    .line 534
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 537
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
    .line 516
    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 519
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
    .line 1763
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/SplitActionBarView;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
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
    .line 388
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 470
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 477
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
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
    .line 1297
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1298
    const/4 v0, 0x0

    .line 1322
    :cond_0
    :goto_0
    return v0

    .line 1301
    :cond_1
    const/4 v0, 0x0

    .line 1305
    .local v0, "handled":Z
    iget-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1307
    iget-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1310
    :cond_3
    if-eqz v0, :cond_0

    .line 1316
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v1, :cond_0

    .line 1317
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

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
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

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
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

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
    .line 712
    add-int/lit8 v0, p1, 0x0

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 713
    return-void
.end method

.method setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 706
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 708
    return-void

    .line 706
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 700
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 702
    return-void

    .line 700
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 694
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 696
    return-void

    .line 694
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 573
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ActionMode callback can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->finish()V

    .line 580
    :cond_1
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V

    .line 582
    .local v0, "wrappedCallback":Llenovo/view/ActionMode$Callback;
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_4

    .line 583
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v0}, Llenovo/app/ActionBar;->startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 584
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v1, v2}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeStarted(Llenovo/view/ActionMode;)V

    .line 592
    :cond_2
    :goto_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-nez v1, :cond_3

    .line 594
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 597
    :cond_3
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    return-object v1

    .line 588
    :cond_4
    const-string v1, "liqftest"

    const-string v2, "ActionBar was null,you must getActionBar() before startActionMode(Callback)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
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

    .line 609
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v6, :cond_0

    .line 610
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v6}, Llenovo/view/ActionMode;->finish()V

    .line 612
    :cond_0
    new-instance v5, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v5, p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V

    .line 613
    .local v5, "wrappedCallback":Llenovo/view/ActionMode$Callback;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 615
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-nez v6, :cond_1

    .line 616
    iget-boolean v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mIsFloating:Z

    if-eqz v6, :cond_5

    .line 617
    new-instance v6, Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-direct {v6, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 620
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 621
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 622
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 624
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 625
    .local v2, "heightValue":Landroid/util/TypedValue;
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v9, 0x10102eb

    invoke-virtual {v6, v9, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 626
    iget v6, v2, Landroid/util/TypedValue;->data:I

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 628
    .local v1, "height":I
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 629
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 630
    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$4;

    invoke-direct {v6, p0}, Llenovo/app/ActionBarActivityDelegateBase$4;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 648
    .end local v1    # "height":I
    .end local v2    # "heightValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v6, :cond_3

    .line 649
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    .line 650
    new-instance v3, Lcom/lenovo/internal/view/StandaloneActionMode;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v6, :cond_6

    move v6, v7

    :goto_1
    invoke-direct {v3, v0, v9, v5, v6}, Lcom/lenovo/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/lenovo/internal/widget/ActionBarContextView;Llenovo/view/ActionMode$Callback;Z)V

    .line 652
    .local v3, "mode":Llenovo/view/ActionMode;
    invoke-virtual {v3}, Llenovo/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-interface {p1, v3, v6}, Llenovo/view/ActionMode$Callback;->onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 653
    invoke-virtual {v3}, Llenovo/view/ActionMode;->invalidate()V

    .line 654
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->initForMode(Llenovo/view/ActionMode;)V

    .line 655
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 656
    iput-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 657
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_2

    .line 658
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 660
    :cond_2
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/lenovo/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 663
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 664
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 670
    .end local v3    # "mode":Llenovo/view/ActionMode;
    :cond_3
    :goto_2
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v6, :cond_4

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_4

    .line 671
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v6, v7}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeStarted(Llenovo/view/ActionMode;)V

    .line 673
    :cond_4
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    return-object v6

    .line 638
    :cond_5
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0b000a

    invoke-virtual {v6, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    .line 640
    .local v4, "stub":Landroid/view/ViewStub;
    if-eqz v4, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v6, v9, :cond_1

    .line 642
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 643
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lenovo/internal/widget/ActionBarContextView;

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    goto/16 :goto_0

    .end local v4    # "stub":Landroid/view/ViewStub;
    :cond_6
    move v6, v8

    .line 650
    goto :goto_1

    .line 667
    .restart local v3    # "mode":Llenovo/view/ActionMode;
    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    goto :goto_2
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0}, Llenovo/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 604
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

    .line 447
    packed-switch p1, :pswitch_data_0

    .line 464
    :pswitch_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 449
    :pswitch_1
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    goto :goto_0

    .line 452
    :pswitch_2
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    goto :goto_0

    .line 455
    :pswitch_3
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    goto :goto_0

    .line 458
    :pswitch_4
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    goto :goto_0

    .line 461
    :pswitch_5
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
