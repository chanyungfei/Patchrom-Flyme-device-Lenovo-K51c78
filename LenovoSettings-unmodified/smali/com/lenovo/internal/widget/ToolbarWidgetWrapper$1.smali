.class Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;-><init>(Llenovo/widget/Toolbar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 190
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/lenovo/internal/view/menu/ActionMenuItem;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Llenovo/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->access$100(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z
    invoke-static {v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->access$300(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 198
    :cond_0
    return-void
.end method
