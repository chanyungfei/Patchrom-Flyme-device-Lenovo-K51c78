.class Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Llenovo/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/widget/ActionMenuPresenter;
    .param p2, "x1"    # Llenovo/widget/ActionMenuPresenter$1;

    .prologue
    .line 855
    invoke-direct {p0, p1}, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Llenovo/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 3
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 868
    instance-of v1, p1, Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 869
    check-cast v1, Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->close(Z)V

    .line 871
    :cond_0
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuPresenter;->getCallback()Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 872
    .local v0, "cb":Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    .line 873
    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 875
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 859
    if-nez p1, :cond_0

    .line 863
    :goto_0
    return v2

    .line 861
    :cond_0
    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Llenovo/widget/ActionMenuPresenter;

    move-object v1, p1

    check-cast v1, Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Llenovo/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 862
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuPresenter;->getCallback()Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 863
    .local v0, "cb":Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
