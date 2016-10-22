.class Llenovo/widget/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/PopupWindow;


# direct methods
.method constructor <init>(Llenovo/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 157
    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$000(Llenovo/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$000(Llenovo/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 158
    .local v1, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 162
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    iget-object v3, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAnchorXoff:I
    invoke-static {v3}, Llenovo/widget/PopupWindow;->access$200(Llenovo/widget/PopupWindow;)I

    move-result v3

    iget-object v4, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAnchorYoff:I
    invoke-static {v4}, Llenovo/widget/PopupWindow;->access$300(Llenovo/widget/PopupWindow;)I

    move-result v4

    iget-object v5, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAnchoredGravity:I
    invoke-static {v5}, Llenovo/widget/PopupWindow;->access$400(Llenovo/widget/PopupWindow;)I

    move-result v5

    # invokes: Llenovo/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    invoke-static/range {v0 .. v5}, Llenovo/widget/PopupWindow;->access$500(Llenovo/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    # invokes: Llenovo/widget/PopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v7, v0}, Llenovo/widget/PopupWindow;->access$600(Llenovo/widget/PopupWindow;Z)V

    .line 164
    iget-object v3, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Llenovo/widget/PopupWindow;->update(IIIIZ)V

    .line 166
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 157
    .end local v1    # "anchor":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
