.class Lcom/lenovo/internal/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Llenovo/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/internal/view/menu/MenuItemImpl;->setSupportActionProvider(Llenovo/view/ActionProvider;)Lcom/lenovo/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 654
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    # getter for: Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->access$000(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 655
    return-void
.end method
