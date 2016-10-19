.class Llenovo/widget/PopupMenu$1;
.super Llenovo/widget/ListPopupWindow$ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/PopupMenu;


# direct methods
.method constructor <init>(Llenovo/widget/PopupMenu;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Llenovo/widget/PopupMenu$1;->this$0:Llenovo/widget/PopupMenu;

    invoke-direct {p0, p2}, Llenovo/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Llenovo/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Llenovo/widget/PopupMenu$1;->this$0:Llenovo/widget/PopupMenu;

    # getter for: Llenovo/widget/PopupMenu;->mPopup:Lcom/lenovo/internal/view/menu/MenuPopupHelper;
    invoke-static {v0}, Llenovo/widget/PopupMenu;->access$000(Llenovo/widget/PopupMenu;)Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Llenovo/widget/PopupMenu$1;->this$0:Llenovo/widget/PopupMenu;

    invoke-virtual {v0}, Llenovo/widget/PopupMenu;->show()V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Llenovo/widget/PopupMenu$1;->this$0:Llenovo/widget/PopupMenu;

    invoke-virtual {v0}, Llenovo/widget/PopupMenu;->dismiss()V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
