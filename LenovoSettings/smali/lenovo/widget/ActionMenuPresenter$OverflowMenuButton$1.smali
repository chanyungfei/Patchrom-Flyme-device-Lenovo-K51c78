.class Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Llenovo/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Llenovo/widget/ActionMenuPresenter;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 660
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Llenovo/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Llenovo/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    # getter for: Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Llenovo/widget/ActionMenuPresenter;->access$200(Llenovo/widget/ActionMenuPresenter;)Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 664
    const/4 v0, 0x0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    # getter for: Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Llenovo/widget/ActionMenuPresenter;->access$200(Llenovo/widget/ActionMenuPresenter;)Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 673
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    # getter for: Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v0}, Llenovo/widget/ActionMenuPresenter;->access$300(Llenovo/widget/ActionMenuPresenter;)Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0

    .line 685
    :cond_0
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 686
    const/4 v0, 0x1

    goto :goto_0
.end method
