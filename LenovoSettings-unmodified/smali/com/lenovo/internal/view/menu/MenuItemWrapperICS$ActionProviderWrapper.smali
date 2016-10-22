.class Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.super Landroid/view/ActionProvider;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionProviderWrapper"
.end annotation


# instance fields
.field final mInner:Llenovo/view/ActionProvider;

.field final synthetic this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;Llenovo/view/ActionProvider;)V
    .locals 2
    .param p2, "inner"    # Llenovo/view/ActionProvider;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    .line 397
    invoke-virtual {p2}, Llenovo/view/ActionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 398
    iput-object p2, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Llenovo/view/ActionProvider;

    .line 400
    # getter for: Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z
    invoke-static {p1}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->access$000(Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Llenovo/view/ActionProvider;

    new-instance v1, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;-><init>(Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;)V

    invoke-virtual {v0, v1}, Llenovo/view/ActionProvider;->setVisibilityListener(Llenovo/view/ActionProvider$VisibilityListener;)V

    .line 410
    :cond_0
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Llenovo/view/ActionProvider;

    invoke-virtual {v0}, Llenovo/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    # getter for: Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z
    invoke-static {v0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->access$000(Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->checkActionProviderOverrideVisibility()Z

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Llenovo/view/ActionProvider;

    invoke-virtual {v0}, Llenovo/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Llenovo/view/ActionProvider;

    invoke-virtual {v0}, Llenovo/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 2
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Llenovo/view/ActionProvider;

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 435
    return-void
.end method
