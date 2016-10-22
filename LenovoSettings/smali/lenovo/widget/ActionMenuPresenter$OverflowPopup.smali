.class Llenovo/widget/ActionMenuPresenter$OverflowPopup;
.super Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 800
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->this$0:Llenovo/widget/ActionMenuPresenter;

    .line 803
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v5, 0x1010444

    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 804
    const v0, 0x800005

    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 805
    iget-object v0, p1, Llenovo/widget/ActionMenuPresenter;->mPopupPresenterCallback:Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 806
    return-void

    .line 803
    :cond_0
    const v5, 0x1010300

    goto :goto_0
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 810
    invoke-super {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 811
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->this$0:Llenovo/widget/ActionMenuPresenter;

    # getter for: Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Llenovo/widget/ActionMenuPresenter;->access$500(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->close()V

    .line 812
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->this$0:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0, v1}, Llenovo/widget/ActionMenuPresenter;->access$202(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OverflowPopup;)Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    .line 813
    return-void
.end method
