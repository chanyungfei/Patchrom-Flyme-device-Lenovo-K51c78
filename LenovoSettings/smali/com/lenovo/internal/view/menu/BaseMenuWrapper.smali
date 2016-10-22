.class abstract Lcom/lenovo/internal/view/menu/BaseMenuWrapper;
.super Lcom/lenovo/internal/view/menu/BaseWrapper;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lenovo/internal/view/menu/BaseWrapper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mMenuItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lcom/lenovo/internal/view/SupportMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/lenovo/internal/view/menu/BaseMenuWrapper;, "Lcom/lenovo/internal/view/menu/BaseMenuWrapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/lenovo/internal/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Lcom/lenovo/internal/view/SupportMenuItem;
    .locals 2
    .param p1, "frameworkItem"    # Landroid/view/MenuItem;

    .prologue
    .line 38
    .local p0, "this":Lcom/lenovo/internal/view/menu/BaseMenuWrapper;, "Lcom/lenovo/internal/view/menu/BaseMenuWrapper<TT;>;"
    if-eqz p1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/view/SupportMenuItem;

    .line 46
    .local v0, "compatItem":Lcom/lenovo/internal/view/SupportMenuItem;
    if-nez v0, :cond_1

    .line 47
    invoke-static {p1}, Lcom/lenovo/internal/view/menu/MenuWrapperFactory;->createSupportMenuItemWrapper(Landroid/view/MenuItem;)Lcom/lenovo/internal/view/SupportMenuItem;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v0    # "compatItem":Lcom/lenovo/internal/view/SupportMenuItem;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2
    .param p1, "frameworkSubMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 57
    .local p0, "this":Lcom/lenovo/internal/view/menu/BaseMenuWrapper;, "Lcom/lenovo/internal/view/menu/BaseMenuWrapper<TT;>;"
    if-eqz p1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    .line 65
    .local v0, "compatSubMenu":Landroid/view/SubMenu;
    if-nez v0, :cond_1

    .line 66
    invoke-static {p1}, Lcom/lenovo/internal/view/menu/MenuWrapperFactory;->createSupportSubMenuWrapper(Landroid/view/SubMenu;)Lcom/lenovo/internal/view/SupportSubMenu;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v0    # "compatSubMenu":Landroid/view/SubMenu;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final internalClear()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/lenovo/internal/view/menu/BaseMenuWrapper;, "Lcom/lenovo/internal/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 82
    :cond_1
    return-void
.end method

.method final internalRemoveGroup(I)V
    .locals 3
    .param p1, "groupId"    # I

    .prologue
    .line 85
    .local p0, "this":Lcom/lenovo/internal/view/menu/BaseMenuWrapper;, "Lcom/lenovo/internal/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 98
    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/MenuItem;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 94
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method final internalRemoveItem(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 101
    .local p0, "this":Lcom/lenovo/internal/view/menu/BaseMenuWrapper;, "Lcom/lenovo/internal/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/MenuItem;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 110
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
