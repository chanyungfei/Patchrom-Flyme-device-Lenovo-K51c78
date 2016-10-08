.class Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;
.super Ljava/lang/Object;
.source "LeExpandableListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

.field final synthetic val$groupPosition:I

.field final synthetic val$isExpanded:Z


# direct methods
.method constructor <init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;ZI)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iput-boolean p2, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->val$isExpanded:Z

    iput p3, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->val$isExpanded:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->val$groupPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->collapseGroup(I)Z

    .line 456
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->isSingleExpandMode:Z
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$600(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$700(Lcom/lenovo/component/expandlistview/LeExpandableListView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$700(Lcom/lenovo/component/expandlistview/LeExpandableListView;)I

    move-result v0

    iget v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->val$groupPosition:I

    if-eq v0, v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iget-object v1, v1, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I
    invoke-static {v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$700(Lcom/lenovo/component/expandlistview/LeExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->collapseGroup(I)Z

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->val$groupPosition:I

    # setter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOldExpandGroupIndex:I
    invoke-static {v0, v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$702(Lcom/lenovo/component/expandlistview/LeExpandableListView;I)I

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    iget-object v0, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;->val$groupPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
