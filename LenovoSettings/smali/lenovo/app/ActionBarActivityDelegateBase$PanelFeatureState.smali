.class final Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1724
    iput p1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    .line 1726
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1727
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 1812
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 1814
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 1742
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 1743
    return-void
.end method

.method getListMenuView(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 4
    .param p1, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1772
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1783
    :goto_0
    return-object v0

    .line 1774
    :cond_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    .line 1775
    new-instance v1, Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    const v3, 0x7f04004c

    invoke-direct {v1, v2, v3}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 1777
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1778
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 1781
    :cond_1
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    .line 1783
    .local v0, "result":Lcom/lenovo/internal/view/menu/MenuView;
    goto :goto_0
.end method

.method public hasPanelItems()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1730
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1732
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 1800
    move-object v0, p1

    check-cast v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    .line 1801
    .local v0, "savedState":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    iget v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    .line 1802
    iget-boolean v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->wasLastOpen:Z

    .line 1803
    iget-object v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 1805
    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1806
    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1807
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1787
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;-><init>(Llenovo/app/ActionBarActivityDelegateBase$1;)V

    .line 1788
    .local v0, "savedState":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    iget v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iput v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    .line 1789
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    .line 1791
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 1792
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 1793
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v2, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 1796
    :cond_0
    return-object v0
.end method

.method setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1760
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 1763
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 1765
    :cond_2
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1766
    if-eqz p1, :cond_0

    .line 1767
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    goto :goto_0
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1746
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1747
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1748
    .local v2, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1750
    const v3, 0x7f0d0001

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1753
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1754
    .end local p1    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1756
    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 1757
    return-void
.end method
