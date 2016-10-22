.class public Lcom/lenovo/internal/widget/SplitActionBarView;
.super Landroid/widget/LinearLayout;
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
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/widget/SplitActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const v0, 0x1010388

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/widget/SplitActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object p1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mContext:Landroid/content/Context;

    .line 58
    sget-object v1, Lcom/lenovo/component/appcompat/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private configPresenters(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 3
    .param p1, "builder"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 124
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
    .line 152
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 155
    :cond_0
    return-void
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 148
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

    .line 70
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 108
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 78
    .local v0, "builder":Lcom/lenovo/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 80
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {p0, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->removeView(Landroid/view/View;)V

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-nez v3, :cond_3

    .line 85
    new-instance v3, Llenovo/widget/ActionMenuPresenter;

    iget-object v4, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 86
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v3, p2}, Llenovo/widget/ActionMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 87
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Llenovo/widget/ActionMenuPresenter;->setId(I)V

    .line 89
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 94
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

    .line 98
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0a0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Llenovo/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 100
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 101
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 102
    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->configPresenters(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 103
    iget-object v3, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Llenovo/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Llenovo/widget/ActionMenuView;

    .line 105
    .local v2, "menuView":Llenovo/widget/ActionMenuView;
    invoke-virtual {p0, v2, v1}, Lcom/lenovo/internal/widget/SplitActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iput-object v2, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 120
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
    .line 179
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Llenovo/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
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
    .line 168
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 169
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 162
    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    .line 175
    :cond_0
    return v1
.end method

.method public setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 68
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/SplitActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/lenovo/internal/widget/SplitActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
