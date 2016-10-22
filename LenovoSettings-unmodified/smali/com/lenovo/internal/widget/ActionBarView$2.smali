.class Lcom/lenovo/internal/widget/ActionBarView$2;
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
    .line 155
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mMenuPrepared:Z
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$200(Lcom/lenovo/internal/widget/ActionBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView$2;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mLogoNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarView;->access$300(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/view/menu/ActionMenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 161
    :cond_0
    return-void
.end method
