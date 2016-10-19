.class Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$1;
.super Ljava/lang/Object;
.source "LenovoListViewSlideMenuListener.java"

# interfaces
.implements Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->registerOnScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;


# direct methods
.method constructor <init>(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideStateChanged(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;I)V
    .locals 3
    .param p1, "view"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;
    .param p2, "state"    # I

    .prologue
    .line 65
    # getter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z
    invoke-static {}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "LenovoSlidemenuListViewListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####onSlideStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;

    # setter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I
    invoke-static {v0, p2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->access$102(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;I)I

    .line 70
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;

    # getter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I
    invoke-static {v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->access$100(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;

    # setter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;
    invoke-static {v0, p1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->access$202(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$1;->this$0:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;
    invoke-static {v0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->access$202(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    goto :goto_0
.end method
