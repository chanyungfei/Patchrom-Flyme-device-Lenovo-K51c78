.class final Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;
.super Landroid/widget/BaseExpandableListAdapter;
.source "LeExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/expandlistview/LeExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalExpandListAdapter2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/component/expandlistview/LeExpandableListView;)V
    .locals 1

    .prologue
    .line 571
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 572
    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$300(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->inflater:Landroid/view/LayoutInflater;

    .line 573
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 608
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 671
    .local v6, "child":Landroid/view/View;
    if-nez p4, :cond_0

    if-eqz v6, :cond_0

    .line 673
    const v0, 0x9020084

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 675
    :cond_0
    move-object p4, v6

    .line 676
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x9020083

    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;
    if-nez p3, :cond_1

    .line 623
    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 624
    iget-object v2, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x904002d

    move-object v1, p3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 625
    new-instance v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;)V

    .line 626
    .restart local v0    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;
    const v1, 0x90c0034

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->expandBtnLayout:Landroid/view/View;

    .line 627
    iget-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->expandBtnLayout:Landroid/view/View;

    const v2, 0x90c0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->expandBtn:Landroid/view/View;

    .line 628
    iput-boolean p2, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->isExpanded:Z

    .line 629
    invoke-virtual {p3, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 631
    const v1, 0x9020084

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 642
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->getChildrenCount(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 643
    iget-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->expandBtnLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :goto_1
    return-object p3

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 634
    invoke-virtual {p3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;
    check-cast v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;

    .line 636
    .restart local v0    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;
    iget-boolean v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->isExpanded:Z

    if-eq p2, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget-object v2, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->expandBtn:Landroid/view/View;

    # invokes: Lcom/lenovo/component/expandlistview/LeExpandableListView;->animationAtOnce(Landroid/view/View;Z)V
    invoke-static {v1, v2, p2}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$500(Lcom/lenovo/component/expandlistview/LeExpandableListView;Landroid/view/View;Z)V

    .line 638
    iput-boolean p2, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->isExpanded:Z

    goto :goto_0

    .line 645
    :cond_2
    iget-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->expandBtnLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$ViewHolder;->expandBtnLayout:Landroid/view/View;

    new-instance v2, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2$1;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;ZI)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter2;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mExpandListAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$1000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v0

    return v0
.end method
