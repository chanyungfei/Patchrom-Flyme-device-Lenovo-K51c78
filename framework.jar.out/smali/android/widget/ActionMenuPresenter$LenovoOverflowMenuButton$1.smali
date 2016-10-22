.class Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;

.field final synthetic val$this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;Landroid/view/View;Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 828
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;

    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;->val$this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 832
    const/4 v0, 0x0

    .line 835
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 841
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$300(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    const/4 v0, 0x0

    .line 854
    :goto_0
    return v0

    .line 853
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$LenovoOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 854
    const/4 v0, 0x1

    goto :goto_0
.end method
