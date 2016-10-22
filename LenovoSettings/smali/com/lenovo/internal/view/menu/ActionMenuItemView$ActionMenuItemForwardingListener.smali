.class Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Llenovo/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .line 373
    invoke-direct {p0, p1}, Llenovo/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 374
    return-void
.end method


# virtual methods
.method public getPopup()Llenovo/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->access$000(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->access$000(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->access$100(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->access$100(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-static {v3}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->access$200(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    .line 389
    .local v0, "popup":Llenovo/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 391
    .end local v0    # "popup":Llenovo/widget/ListPopupWindow;
    :cond_0
    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    .line 397
    .local v0, "popup":Llenovo/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    .line 399
    const/4 v1, 0x1

    .line 401
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
