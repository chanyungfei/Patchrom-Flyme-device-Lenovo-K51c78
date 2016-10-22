.class final Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;
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
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegateBase;


# direct methods
.method private constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 1620
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p2, "x1"    # Llenovo/app/ActionBarActivityDelegateBase$1;

    .prologue
    .line 1620
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 6
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1623
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v2

    .line 1624
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_2

    move v0, v3

    .line 1625
    .local v0, "isSubMenu":Z
    :goto_0
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    if-eqz v0, :cond_0

    move-object p1, v2

    .end local p1    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    :cond_0
    # invokes: Llenovo/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-static {v4, p1}, Llenovo/app/ActionBarActivityDelegateBase;->access$600(Llenovo/app/ActionBarActivityDelegateBase;Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1626
    .local v1, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v1, :cond_1

    .line 1627
    if-eqz v0, :cond_3

    .line 1628
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget v5, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    # invokes: Llenovo/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    invoke-static {v4, v5, v1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->access$700(Llenovo/app/ActionBarActivityDelegateBase;ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 1629
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    # invokes: Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    invoke-static {v4, v1, v3}, Llenovo/app/ActionBarActivityDelegateBase;->access$800(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1637
    :cond_1
    :goto_1
    return-void

    .line 1624
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .restart local p1    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1633
    .end local p1    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    .restart local v0    # "isSubMenu":Z
    .restart local v1    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_3
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v3, v3, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1634
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    # invokes: Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    invoke-static {v3, v1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->access$800(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1641
    if-nez p1, :cond_0

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-boolean v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 1642
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-virtual {v1}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1643
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-virtual {v1}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1644
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1647
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
