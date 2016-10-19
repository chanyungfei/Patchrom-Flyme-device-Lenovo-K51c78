.class Lcom/lenovo/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->access$000(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v1

    iget-object v0, v1, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 148
    .local v0, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 150
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarView;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView$1;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mBackItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;
    invoke-static {v3}, Lcom/lenovo/internal/widget/ActionBarView;->access$100(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/view/menu/ActionMenuItem;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 152
    :cond_0
    return-void
.end method
