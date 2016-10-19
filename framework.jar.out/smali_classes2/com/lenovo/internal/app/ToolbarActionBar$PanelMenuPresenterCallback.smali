.class final Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;
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
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;Lcom/lenovo/internal/app/ToolbarActionBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/internal/app/ToolbarActionBar;
    .param p2, "x1"    # Lcom/lenovo/internal/app/ToolbarActionBar$1;

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$1000(Lcom/lenovo/internal/app/ToolbarActionBar;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 614
    return-void
.end method

.method public onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 618
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 621
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
