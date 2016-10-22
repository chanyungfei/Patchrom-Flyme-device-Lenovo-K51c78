.class public Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
.super Llenovo/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Llenovo/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Llenovo/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Llenovo/view/ActionMode;-><init>()V

    .line 1102
    iput-object p2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    .line 1103
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1105
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 1106
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1161
    const-string v0, "Editor"

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->setTitleOptionalHint(Z)V

    .line 1165
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Llenovo/view/ActionMode$Callback;->onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1167
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1119
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v0, v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$800(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$900(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z

    move-result v1

    # invokes: Lcom/lenovo/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z
    invoke-static {v0, v1, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1000(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iput-object p0, v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Llenovo/view/ActionMode;

    .line 1132
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    iput-object v1, v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    .line 1136
    :goto_1
    iput-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    .line 1137
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 1140
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->closeMode()V

    .line 1141
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iput-boolean v2, v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 1142
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1144
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-boolean v1, v1, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1146
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iput-object v3, v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Llenovo/view/ActionMode$Callback;->onDestroyActionMode(Llenovo/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1109
    new-instance v0, Lcom/lenovo/internal/view/SupportMenuInflater;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Llenovo/view/ActionMode$Callback;->onPrepareActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1157
    return-void

    .line 1155
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1240
    return-void
.end method

.method public onCloseSubMenu(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1256
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0, p0, p1}, Llenovo/view/ActionMode$Callback;->onActionItemClicked(Llenovo/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Llenovo/view/ActionMode$Callback;->onActionItemClicked(Llenovo/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1264
    :goto_0
    return-void

    .line 1262
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1263
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 1243
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Llenovo/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 1244
    const/4 v0, 0x0

    .line 1252
    :cond_0
    :goto_0
    return v0

    .line 1247
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    new-instance v1, Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1175
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1195
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1180
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1190
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1185
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 1209
    invoke-super {p0, p1}, Llenovo/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1210
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1211
    return-void
.end method
