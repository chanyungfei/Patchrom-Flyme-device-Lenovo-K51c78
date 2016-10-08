.class Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;
.super Ljava/lang/Object;
.source "LenovoListViewSlideMenuGroupViewMaterial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->setLeftMenuClickListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;


# direct methods
.method constructor <init>(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    # getter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;
    invoke-static {v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->access$000(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    # getter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;
    invoke-static {v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->access$000(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-interface {v0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;->onMenuClicked(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    # getter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnLeftMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;
    invoke-static {v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->access$100(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    # getter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnLeftMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;
    invoke-static {v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->access$100(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-interface {v0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;->onLeftMenuClicked(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)V

    .line 361
    :cond_1
    return-void
.end method
