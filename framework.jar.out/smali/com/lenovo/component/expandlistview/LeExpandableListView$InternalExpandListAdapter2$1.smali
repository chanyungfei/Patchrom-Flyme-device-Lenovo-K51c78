.class Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;
.super Ljava/lang/Object;
.source "LeExpandableListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

.field final synthetic val$groupPosition:I

.field final synthetic val$isExpanded:Z


# direct methods
.method constructor <init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;ZI)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iput-boolean p2, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->val$isExpanded:Z

    iput p3, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->val$isExpanded:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->val$groupPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->collapseGroup(I)Z

    .line 661
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->isSingleExpandMode:Z
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$600(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$700(Lcom/lenovo/component/expandlistview/LeExpandableListView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$700(Lcom/lenovo/component/expandlistview/LeExpandableListView;)I

    move-result v0

    iget v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->val$groupPosition:I

    if-eq v0, v1, :cond_1

    .line 655
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iget-object v1, v1, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I
    invoke-static {v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$700(Lcom/lenovo/component/expandlistview/LeExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->collapseGroup(I)Z

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->val$groupPosition:I

    # setter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I
    invoke-static {v0, v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$702(Lcom/lenovo/component/expandlistview/LeExpandableListView;I)I

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;->val$groupPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
