.class Lcom/lenovo/component/slidemenu/LeMenuLayout$5;
.super Ljava/lang/Object;
.source "LeMenuLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/slidemenu/LeMenuLayout;->setOnListItemClickListener(Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;)V
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
    .line 813
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$5;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 816
    .local p1, "itemViews":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$5;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    # getter for: Lcom/lenovo/component/slidemenu/LeMenuLayout;->mListItemClickListener:Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;
    invoke-static {v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->access$300(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/component/slidemenu/LeMenuLayout$OnItemClickListener;->onClick(Landroid/widget/AdapterView;Landroid/view/View;I)V

    .line 817
    return-void
.end method
