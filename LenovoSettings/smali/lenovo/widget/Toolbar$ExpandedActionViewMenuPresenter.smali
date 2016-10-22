.class Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Llenovo/widget/Toolbar;


# direct methods
.method private constructor <init>(Llenovo/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1880
    iput-object p1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/Toolbar;Llenovo/widget/Toolbar$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/widget/Toolbar;
    .param p2, "x1"    # Llenovo/widget/Toolbar$1;

    .prologue
    .line 1880
    invoke-direct {p0, p1}, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Llenovo/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1971
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v0, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Llenovo/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 1972
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v0, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Llenovo/view/CollapsibleActionView;

    invoke-interface {v0}, Llenovo/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1975
    :cond_0
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v1, v1, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1976
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    # getter for: Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Llenovo/widget/Toolbar;->access$300(Llenovo/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1977
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iput-object v3, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1979
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    # invokes: Llenovo/widget/Toolbar;->setChildVisibilityForExpandedActionView(Z)V
    invoke-static {v0, v2}, Llenovo/widget/Toolbar;->access$500(Llenovo/widget/Toolbar;Z)V

    .line 1980
    iput-object v3, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 1981
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->requestLayout()V

    .line 1982
    invoke-virtual {p2, v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1984
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x1

    .line 1942
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    # invokes: Llenovo/widget/Toolbar;->ensureCollapseButtonView()V
    invoke-static {v1}, Llenovo/widget/Toolbar;->access$200(Llenovo/widget/Toolbar;)V

    .line 1943
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    # getter for: Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Llenovo/widget/Toolbar;->access$300(Llenovo/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    if-eq v1, v2, :cond_0

    .line 1944
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v2, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    # getter for: Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v2}, Llenovo/widget/Toolbar;->access$300(Llenovo/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1946
    :cond_0
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    invoke-virtual {p2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1947
    iput-object p2, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 1948
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v1, v1, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    if-eq v1, v2, :cond_1

    .line 1949
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->generateDefaultLayoutParams()Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1950
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    # getter for: Llenovo/widget/Toolbar;->mButtonGravity:I
    invoke-static {v2}, Llenovo/widget/Toolbar;->access$400(Llenovo/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    .line 1951
    const/4 v1, 0x2

    iput v1, v0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1952
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v1, v1, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1953
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v2, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v2, v2, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1956
    .end local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_1
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    # invokes: Llenovo/widget/Toolbar;->setChildVisibilityForExpandedActionView(Z)V
    invoke-static {v1, v3}, Llenovo/widget/Toolbar;->access$500(Llenovo/widget/Toolbar;Z)V

    .line 1957
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->requestLayout()V

    .line 1958
    invoke-virtual {p2, v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1960
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v1, v1, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Llenovo/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    .line 1961
    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Llenovo/widget/Toolbar;

    iget-object v1, v1, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Llenovo/view/CollapsibleActionView;

    invoke-interface {v1}, Llenovo/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1964
    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1937
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1989
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1895
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1887
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 1890
    :cond_0
    iput-object p2, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1891
    return-void
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1933
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1999
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1994
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1928
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1924
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1901
    iget-object v4, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1902
    const/4 v1, 0x0

    .line 1904
    .local v1, "found":Z
    iget-object v4, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1905
    iget-object v4, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1906
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1907
    iget-object v4, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1908
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1909
    const/4 v1, 0x1

    .line 1915
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1917
    iget-object v4, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 1920
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1906
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
