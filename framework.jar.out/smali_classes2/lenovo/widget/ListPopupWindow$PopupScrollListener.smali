.class Llenovo/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Llenovo/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1782
    iput-object p1, p0, Llenovo/widget/ListPopupWindow$PopupScrollListener;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/widget/ListPopupWindow;
    .param p2, "x1"    # Llenovo/widget/ListPopupWindow$1;

    .prologue
    .line 1782
    invoke-direct {p0, p1}, Llenovo/widget/ListPopupWindow$PopupScrollListener;-><init>(Llenovo/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1786
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1789
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ListPopupWindow$PopupScrollListener;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ListPopupWindow$PopupScrollListener;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;
    invoke-static {v0}, Llenovo/widget/ListPopupWindow;->access$1100(Llenovo/widget/ListPopupWindow;)Llenovo/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$PopupScrollListener;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Llenovo/widget/ListPopupWindow;->access$1300(Llenovo/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llenovo/widget/ListPopupWindow$PopupScrollListener;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v1}, Llenovo/widget/ListPopupWindow;->access$1200(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1792
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$PopupScrollListener;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v0}, Llenovo/widget/ListPopupWindow;->access$1200(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1794
    :cond_0
    return-void
.end method
