.class Llenovo/app/ActionBarActivityDelegate$1;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"

# interfaces
.implements Lcom/lenovo/internal/app/WindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegate;


# direct methods
.method constructor <init>(Llenovo/app/ActionBarActivityDelegate;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegate$1;->this$0:Llenovo/app/ActionBarActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 86
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate$1;->this$0:Llenovo/app/ActionBarActivityDelegate;

    iget-object v0, v0, Llenovo/app/ActionBarActivityDelegate;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v0, p1, p2}, Llenovo/app/ActivityBarActivityImpl;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate$1;->this$0:Llenovo/app/ActionBarActivityDelegate;

    iget-object v0, v0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 101
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate$1;->this$0:Llenovo/app/ActionBarActivityDelegate;

    iget-object v0, v0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 96
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate$1;->this$0:Llenovo/app/ActionBarActivityDelegate;

    iget-object v0, v0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 97
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menuView"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 91
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate$1;->this$0:Llenovo/app/ActionBarActivityDelegate;

    iget-object v0, v0, Llenovo/app/ActionBarActivityDelegate;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v0, p1, p2, p3}, Llenovo/app/ActivityBarActivityImpl;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 106
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate$1;->this$0:Llenovo/app/ActionBarActivityDelegate;

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
