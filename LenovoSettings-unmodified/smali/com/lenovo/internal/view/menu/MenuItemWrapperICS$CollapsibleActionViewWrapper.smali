.class Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
.super Landroid/widget/FrameLayout;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollapsibleActionViewWrapper"
.end annotation


# instance fields
.field final mWrappedView:Llenovo/view/CollapsibleActionView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "actionView"    # Landroid/view/View;

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    .line 444
    check-cast v0, Llenovo/view/CollapsibleActionView;

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Llenovo/view/CollapsibleActionView;

    .line 445
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->addView(Landroid/view/View;)V

    .line 446
    return-void
.end method


# virtual methods
.method getWrappedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Llenovo/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onActionViewCollapsed()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Llenovo/view/CollapsibleActionView;

    invoke-interface {v0}, Llenovo/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 456
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Llenovo/view/CollapsibleActionView;

    invoke-interface {v0}, Llenovo/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 451
    return-void
.end method
