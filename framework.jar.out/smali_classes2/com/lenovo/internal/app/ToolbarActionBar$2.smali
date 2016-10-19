.class Lcom/lenovo/internal/app/ToolbarActionBar$2;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Llenovo/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$2;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$2;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    # getter for: Lcom/lenovo/internal/app/ToolbarActionBar;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;
    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->access$000(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
