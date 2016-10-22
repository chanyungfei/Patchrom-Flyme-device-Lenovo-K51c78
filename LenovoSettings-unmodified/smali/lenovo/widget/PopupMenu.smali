.class public Llenovo/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/PopupMenu$OnMenuItemClickListener;,
        Llenovo/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Llenovo/widget/PopupMenu$OnDismissListener;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Llenovo/widget/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Lcom/lenovo/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "gravity"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Llenovo/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llenovo/widget/PopupMenu;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 85
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 86
    iput-object p2, p0, Llenovo/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 87
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Llenovo/widget/PopupMenu;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1, v1, p2}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Llenovo/widget/PopupMenu;->mPopup:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    .line 88
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mPopup:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p3}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 89
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mPopup:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Llenovo/widget/PopupMenu;)Lcom/lenovo/internal/view/menu/MenuPopupHelper;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/PopupMenu;

    .prologue
    .line 41
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mPopup:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mPopup:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 178
    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Llenovo/widget/PopupMenu$1;

    iget-object v1, p0, Llenovo/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Llenovo/widget/PopupMenu$1;-><init>(Llenovo/widget/PopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Llenovo/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 131
    :cond_0
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/lenovo/internal/view/SupportMenuInflater;

    iget-object v1, p0, Llenovo/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1, "menuRes"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Llenovo/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Llenovo/widget/PopupMenu;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 162
    return-void
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mDismissListener:Llenovo/widget/PopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mDismissListener:Llenovo/widget/PopupMenu$OnDismissListener;

    invoke-interface {v0, p0}, Llenovo/widget/PopupMenu$OnDismissListener;->onDismiss(Llenovo/widget/PopupMenu;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 236
    return-void
.end method

.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 202
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mMenuItemClickListener:Llenovo/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mMenuItemClickListener:Llenovo/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Llenovo/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 242
    return-void
.end method

.method public onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 221
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    new-instance v1, Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Llenovo/widget/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Llenovo/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setOnDismissListener(Llenovo/widget/PopupMenu$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/widget/PopupMenu$OnDismissListener;

    .prologue
    .line 195
    iput-object p1, p0, Llenovo/widget/PopupMenu;->mDismissListener:Llenovo/widget/PopupMenu$OnDismissListener;

    .line 196
    return-void
.end method

.method public setOnMenuItemClickListener(Llenovo/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 186
    iput-object p1, p0, Llenovo/widget/PopupMenu;->mMenuItemClickListener:Llenovo/widget/PopupMenu$OnMenuItemClickListener;

    .line 187
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Llenovo/widget/PopupMenu;->mPopup:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->show()V

    .line 170
    return-void
.end method
