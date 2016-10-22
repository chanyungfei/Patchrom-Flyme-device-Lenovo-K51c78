.class Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;
.super Lcom/lenovo/internal/view/menu/MenuWrapperICS;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Lcom/lenovo/internal/view/SupportSubMenu;


# direct methods
.method constructor <init>(Landroid/view/SubMenu;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lenovo/internal/view/menu/MenuWrapperICS;-><init>(Landroid/view/Menu;)V

    .line 29
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    .line 69
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Lcom/lenovo/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedObject()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public bridge synthetic getWrappedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 51
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 57
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 39
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 45
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 63
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 74
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 80
    return-object p0
.end method
