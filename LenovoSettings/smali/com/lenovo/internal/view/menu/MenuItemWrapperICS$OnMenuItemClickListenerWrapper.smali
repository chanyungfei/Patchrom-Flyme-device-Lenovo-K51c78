.class Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
.super Lcom/lenovo/internal/view/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMenuItemClickListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/internal/view/menu/BaseWrapper",
        "<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p2, "object"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    .line 366
    invoke-direct {p0, p2}, Lcom/lenovo/internal/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 367
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Lcom/lenovo/internal/view/SupportMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
