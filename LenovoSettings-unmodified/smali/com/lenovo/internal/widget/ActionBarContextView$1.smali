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
    .line 82
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v0, v1, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    check-cast v0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    .line 85
    .local v0, "actionMode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarContextView;->mCloseMenuItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->access$000(Lcom/lenovo/internal/widget/ActionBarContextView;)Lcom/lenovo/internal/view/menu/ActionMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    .line 86
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->finish()V

    .line 87
    return-void
.end method
