.class public Llenovo/widget/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Lcom/lenovo/internal/app/WindowCallback;


# instance fields
.field private mWrapped:Lcom/lenovo/internal/app/WindowCallback;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 2
    .param p1, "wrapped"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Llenovo/widget/WindowCallbackWrapper;->mWrapped:Lcom/lenovo/internal/app/WindowCallback;

    .line 41
    return-void
.end method


# virtual methods
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 50
    iget-object v0, p0, Llenovo/widget/WindowCallbackWrapper;->mWrapped:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Llenovo/widget/WindowCallbackWrapper;->mWrapped:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Llenovo/widget/WindowCallbackWrapper;->mWrapped:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    iget-object v0, p0, Llenovo/widget/WindowCallbackWrapper;->mWrapped:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 60
    iget-object v0, p0, Llenovo/widget/WindowCallbackWrapper;->mWrapped:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 61
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menuView"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 55
    iget-object v0, p0, Llenovo/widget/WindowCallbackWrapper;->mWrapped:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 70
    iget-object v0, p0, Llenovo/widget/WindowCallbackWrapper;->mWrapped:Lcom/lenovo/internal/app/WindowCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/app/WindowCallback;->startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
