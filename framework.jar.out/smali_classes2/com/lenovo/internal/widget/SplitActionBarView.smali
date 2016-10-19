.class public Lcom/lenovo/internal/widget/SplitActionBarView;
.super Landroid/widget/FrameLayout;
.source "SplitActionBarView.java"


# instance fields
.field protected mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

.field mContext:Landroid/content/Context;

.field protected mMenuView:Llenovo/widget/ActionMenuView;

.field private mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/widget/SplitActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const v0, 0x1010388

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/widget/SplitActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object p1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mContext:Landroid/content/Context;

    .line 59
    sget-object v1, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method private configPresenters(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 3
    .param p1, "builder"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 156
    :cond_0
    return-void
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 71
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 109
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 79
    .local v0, "builder":Lcom/lenovo/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 81
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {p0, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->removeView(Landroid/view/View;)V

    .line 85
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-nez v3, :cond_3

    .line 86
    new-instance v3, Llenovo/widget/ActionMenuPresenter;

    iget-object v4, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 87
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v3, p2}, Llenovo/widget/ActionMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 88
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const v4, 0x90c0005

    invoke-virtual {v3, v4}, Llenovo/widget/ActionMenuPresenter;->setId(I)V

    .line 90
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 95
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Llenovo/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 99
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x90b0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Llenovo/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 101
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 102
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 103
    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->configPresenters(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 104
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Llenovo/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Llenovo/widget/ActionMenuView;

    .line 106
    .local v2, "menuView":Llenovo/widget/ActionMenuView;
    invoke-virtual {p0, v2, v1}, Lcom/lenovo/internal/widget/SplitActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iput-object v2, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Llenovo/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 169
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 170
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 163
    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    .line 176
    :cond_0
    return v1
.end method

.method public setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 69
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
