.class public final Lcom/lenovo/internal/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static createMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2
    .param p0, "frameworkMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 43
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperJB;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperJB;-><init>(Landroid/view/MenuItem;)V

    move-object p0, v0

    .line 47
    .end local p0    # "frameworkMenuItem":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-object p0

    .line 44
    .restart local p0    # "frameworkMenuItem":Landroid/view/MenuItem;
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 45
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 2
    .param p0, "frameworkMenu"    # Landroid/view/Menu;

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 36
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuWrapperICS;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuWrapperICS;-><init>(Landroid/view/Menu;)V

    move-object p0, v0

    .line 38
    .end local p0    # "frameworkMenu":Landroid/view/Menu;
    :cond_0
    return-object p0
.end method

.method public static createSupportMenuItemWrapper(Landroid/view/MenuItem;)Lcom/lenovo/internal/view/SupportMenuItem;
    .locals 2
    .param p0, "frameworkMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperJB;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperJB;-><init>(Landroid/view/MenuItem;)V

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 70
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static createSupportMenuWrapper(Landroid/view/Menu;)Lcom/lenovo/internal/view/SupportMenu;
    .locals 2
    .param p0, "frameworkMenu"    # Landroid/view/Menu;

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 52
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuWrapperICS;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuWrapperICS;-><init>(Landroid/view/Menu;)V

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static createSupportSubMenuWrapper(Landroid/view/SubMenu;)Lcom/lenovo/internal/view/SupportSubMenu;
    .locals 2
    .param p0, "frameworkSubMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;-><init>(Landroid/view/SubMenu;)V

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
