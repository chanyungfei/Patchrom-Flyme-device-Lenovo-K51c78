.class Lcom/lenovo/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ActionBarContextView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    instance-of v0, v0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    check-cast v0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseMenuItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->access$000(Lcom/lenovo/internal/widget/ActionBarContextView;)Lcom/lenovo/internal/view/menu/ActionMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Llenovo/app/ActivityHelp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mActivity:Landroid/app/Activity;

    check-cast v0, Llenovo/app/ActivityHelp;

    invoke-interface {v0}, Llenovo/app/ActivityHelp;->hasFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->finish()V

    .line 98
    :cond_2
    return-void

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    instance-of v0, v0, Lcom/lenovo/internal/view/StandaloneActionMode;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    check-cast v0, Lcom/lenovo/internal/view/StandaloneActionMode;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseMenuItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->access$000(Lcom/lenovo/internal/widget/ActionBarContextView;)Lcom/lenovo/internal/view/menu/ActionMenuItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/internal/view/StandaloneActionMode;->onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    goto :goto_0
.end method
