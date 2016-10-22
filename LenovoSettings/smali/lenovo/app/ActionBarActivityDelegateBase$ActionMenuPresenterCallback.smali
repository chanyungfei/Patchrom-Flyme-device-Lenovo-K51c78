.class final Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegateBase;


# direct methods
.method private constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 1651
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p2, "x1"    # Llenovo/app/ActionBarActivityDelegateBase$1;

    .prologue
    .line 1651
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1663
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    # getter for: Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;
    invoke-static {v0}, Llenovo/app/ActionBarActivityDelegateBase;->access$900(Llenovo/app/ActionBarActivityDelegateBase;)Lcom/lenovo/internal/widget/DecorContentParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1664
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    # invokes: Llenovo/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    invoke-static {v0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->access$1000(Llenovo/app/ActionBarActivityDelegateBase;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1668
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    # invokes: Llenovo/app/ActionBarActivityDelegateBase;->checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    invoke-static {v0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->access$1100(Llenovo/app/ActionBarActivityDelegateBase;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1654
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-virtual {v1}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1655
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    .line 1656
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1658
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
