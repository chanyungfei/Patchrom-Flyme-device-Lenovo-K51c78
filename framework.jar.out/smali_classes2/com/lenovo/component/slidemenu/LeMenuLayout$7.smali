.class Lcom/lenovo/component/slidemenu/LeMenuLayout$7;
.super Ljava/lang/Object;
.source "LeMenuLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/slidemenu/LeMenuLayout;->setOnGrid0ItemClickListener(Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$7;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "itemViews":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$7;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    # getter for: Lcom/lenovo/component/slidemenu/LeMenuLayout;->mGrid0ItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;
    invoke-static {v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->access$500(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;->onClick(Landroid/widget/AdapterView;Landroid/view/View;I)V

    .line 868
    return-void
.end method
