.class final Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lcom/lenovo/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;Lcom/lenovo/internal/app/ToolbarActionBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;
    .param p2, "x1"    # Lcom/lenovo/internal/app/ToolbarActionBar$1;

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 597
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mToolbar:Llenovo/widget/Toolbar;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$400(Lcom/lenovo/internal/app/ToolbarActionBar;)Llenovo/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->dismissPopupMenus()V

    .line 598
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 601
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 585
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
