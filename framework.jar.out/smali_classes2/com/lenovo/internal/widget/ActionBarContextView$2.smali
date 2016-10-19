.class Lcom/lenovo/internal/widget/ActionBarContextView$2;
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
    .line 699
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    instance-of v1, v1, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 703
    new-instance v0, Lcom/lenovo/internal/view/menu/ActionMenuItem;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102001f

    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarContextView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v4}, Lcom/lenovo/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 705
    .local v0, "item":Lcom/lenovo/internal/view/menu/ActionMenuItem;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarContextView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarContextView;->mMode:Llenovo/view/ActionMode;

    check-cast v1, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    .line 707
    .end local v0    # "item":Lcom/lenovo/internal/view/menu/ActionMenuItem;
    :cond_0
    return-void
.end method
