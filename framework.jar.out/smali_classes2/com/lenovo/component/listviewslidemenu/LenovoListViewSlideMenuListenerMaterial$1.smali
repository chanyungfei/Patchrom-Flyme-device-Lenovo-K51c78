.class Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial$1;
.super Ljava/lang/Object;
.source "LenovoListViewSlideMenuListenerMaterial.java"

# interfaces
.implements Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;


# direct methods
.method constructor <init>(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuClicked(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)V
    .locals 1
    .param p1, "listItemViewGroup"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;

    # invokes: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack()V
    invoke-static {v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->access$000(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;)V

    .line 181
    return-void
.end method
