.class public Lcom/lenovo/internal/app/ToolbarActionBar;
.super Llenovo/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;,
        Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;,
        Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
    }
.end annotation


# instance fields
.field private mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Llenovo/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbar:Llenovo/widget/Toolbar;

.field private mToolbarMenuPrepared:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;


# direct methods
.method public constructor <init>(Llenovo/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 2
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "window"    # Landroid/view/Window;
    .param p4, "windowCallback"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 82
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/lenovo/internal/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/ToolbarActionBar$1;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/lenovo/internal/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/ToolbarActionBar$2;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuClicker:Llenovo/widget/Toolbar$OnMenuItemClickListener;

    .line 83
    iput-object p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    .line 84
    new-instance v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;-><init>(Llenovo/widget/Toolbar;Z)V

    iput-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    .line 85
    new-instance v0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p4}, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;Lcom/lenovo/internal/app/WindowCallback;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 86
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuClicker:Llenovo/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Llenovo/widget/Toolbar;->setOnMenuItemClickListener(Llenovo/widget/Toolbar$OnMenuItemClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p2}, Lcom/lenovo/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 90
    iput-object p3, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindow:Landroid/view/Window;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/app/ToolbarActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/internal/app/ToolbarActionBar;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/internal/app/ToolbarActionBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/internal/app/ToolbarActionBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/internal/app/ToolbarActionBar;)Llenovo/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/internal/app/ToolbarActionBar;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/internal/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lenovo/internal/app/ToolbarActionBar;->getListMenuView(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getListMenuView(Landroid/view/Menu;)Landroid/view/View;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 499
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-object v0

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 550
    iget-boolean v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    new-instance v1, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;Lcom/lenovo/internal/app/ToolbarActionBar$1;)V

    new-instance v2, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;Lcom/lenovo/internal/app/ToolbarActionBar$1;)V

    invoke-virtual {v0, v1, v2}, Llenovo/widget/Toolbar;->setMenuCallbacks(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->collapseActionView()V

    .line 446
    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 487
    iget-boolean v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 496
    :cond_0
    return-void

    .line 490
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 492
    iget-object v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 493
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 494
    iget-object v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public getTabFragmentAt(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 647
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedWindowCallback()Lcom/lenovo/internal/app/WindowCallback;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->setVisibility(I)V

    .line 423
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 438
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Llenovo/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public lockFragment(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 651
    return-void
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newTab(Landroid/os/Bundle;)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/lenovo/internal/app/ToolbarActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 201
    invoke-super {p0, p1}, Llenovo/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 472
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/lenovo/internal/app/ToolbarActionBar;->openOptionsMenu()Z

    .line 475
    :cond_0
    return v1
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-direct {p0}, Lcom/lenovo/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 453
    .local v1, "menu":Landroid/view/Menu;
    instance-of v2, v1, Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-object v0, v2

    .line 454
    .local v0, "mb":Lcom/lenovo/internal/view/menu/MenuBuilder;
    :cond_0
    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 458
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 459
    iget-object v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 461
    :cond_2
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_3
    if-eqz v0, :cond_4

    .line 465
    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 468
    :cond_4
    return-void

    .line 464
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 465
    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v2
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 373
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 99
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 100
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 187
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 284
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 263
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 264
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 269
    .local v0, "currentOptions":I
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/lenovo/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 270
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 294
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 295
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 279
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 280
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 289
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 274
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 275
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setElevation(F)V

    .line 152
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 192
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setNavigationIcon(I)V

    .line 177
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 147
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(I)V

    .line 117
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method public setListMenuPresenter(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)V
    .locals 4
    .param p1, "listMenuPresenter"    # Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .prologue
    const/4 v3, 0x0

    .line 558
    invoke-direct {p0}, Lcom/lenovo/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 560
    .local v1, "menu":Landroid/view/Menu;
    instance-of v2, v1, Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 561
    check-cast v0, Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 563
    .local v0, "mb":Lcom/lenovo/internal/view/menu/MenuBuilder;
    iget-object v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 566
    iget-object v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 569
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 571
    if-eqz p1, :cond_1

    .line 572
    new-instance v2, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;Lcom/lenovo/internal/app/ToolbarActionBar$1;)V

    invoke-virtual {p1, v2}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 573
    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 576
    .end local v0    # "mb":Lcom/lenovo/internal/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    new-instance v1, Lcom/lenovo/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/lenovo/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 212
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(I)V

    .line 127
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 324
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 328
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 224
    return-void

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 142
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 137
    return-void
.end method

.method public setSubtitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 258
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 259
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 243
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->setVisibility(I)V

    .line 416
    return-void
.end method

.method public startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/app/WindowCallback;->startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
