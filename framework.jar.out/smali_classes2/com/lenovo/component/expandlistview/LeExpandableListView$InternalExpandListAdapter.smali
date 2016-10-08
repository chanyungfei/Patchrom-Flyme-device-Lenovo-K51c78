.class final Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "LeExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/expandlistview/LeExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalExpandListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;,
        Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/component/expandlistview/LeExpandableListView;)V
    .locals 1

    .prologue
    .line 362
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 363
    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$300(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 364
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 403
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 466
    const/4 v3, 0x0

    .line 468
    .local v3, "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;
    if-nez p4, :cond_0

    .line 469
    iget-object v7, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x904002c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 470
    iget-object v7, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;
    invoke-static {v7}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$400(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    .line 472
    .local v1, "childCount":I
    new-instance v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;

    .end local v3    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;
    invoke-direct {v3, p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;)V

    .line 473
    .restart local v3    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;
    iput v1, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childCount:I

    .line 474
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childList:Ljava/util/ArrayList;

    .line 475
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childIconList:Ljava/util/ArrayList;

    .line 476
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childTitleList:Ljava/util/ArrayList;

    .line 477
    invoke-virtual {p4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 479
    const v7, 0x9020084

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p4, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 481
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 482
    iget-object v8, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x904002b

    move-object v7, p4

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-object v7, p4

    .line 483
    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 484
    .local v2, "childVg":Landroid/view/View;
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    const v7, 0x90c000e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 487
    .local v5, "iv":Landroid/widget/ImageView;
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childIconList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const v7, 0x90c000f

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 490
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childTitleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "childCount":I
    .end local v2    # "childVg":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "iv":Landroid/widget/ImageView;
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;
    check-cast v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;

    .line 495
    .restart local v3    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;
    iget-object v7, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;
    invoke-static {v7}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$400(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    .line 496
    .restart local v1    # "childCount":I
    iget v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childCount:I

    if-eq v7, v1, :cond_1

    .line 497
    iget-object v7, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x904002c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 499
    new-instance v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;

    .end local v3    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;
    invoke-direct {v3, p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;)V

    .line 500
    .restart local v3    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;
    iput v1, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childCount:I

    .line 501
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childList:Ljava/util/ArrayList;

    .line 502
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childIconList:Ljava/util/ArrayList;

    .line 503
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childTitleList:Ljava/util/ArrayList;

    .line 504
    invoke-virtual {p4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 506
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 507
    iget-object v8, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x904002b

    move-object v7, p4

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-object v7, p4

    .line 508
    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 509
    .restart local v2    # "childVg":Landroid/view/View;
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    const v7, 0x90c000e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 512
    .restart local v5    # "iv":Landroid/widget/ImageView;
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childIconList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    const v7, 0x90c000f

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 515
    .restart local v6    # "tv":Landroid/widget/TextView;
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childTitleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 521
    .end local v2    # "childVg":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "iv":Landroid/widget/ImageView;
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_4

    .line 522
    iget-object v7, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;
    invoke-static {v7}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$400(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;->getChild(II)Lcom/lenovo/component/expandlistview/LeExpandableChild;

    move-result-object v0

    .line 524
    .local v0, "child":Lcom/lenovo/component/expandlistview/LeExpandableChild;
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childIconList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 525
    .restart local v5    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/lenovo/component/expandlistview/LeExpandableChild;->getIconResId()I

    move-result v7

    if-eqz v7, :cond_2

    .line 526
    invoke-virtual {v0}, Lcom/lenovo/component/expandlistview/LeExpandableChild;->getIconResId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    :cond_2
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childTitleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 530
    .restart local v6    # "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/lenovo/component/expandlistview/LeExpandableChild;->getTitleResId()I

    move-result v7

    if-eqz v7, :cond_3

    .line 531
    invoke-virtual {v0}, Lcom/lenovo/component/expandlistview/LeExpandableChild;->getTitleResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 534
    :cond_3
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const v8, 0x90b0001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 535
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const v8, 0x90b0002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 536
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnChildClickListener:Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;
    invoke-static {v8}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$800(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v7, v3, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ChildViewHolder;->childList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnChildLongClickListener:Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;
    invoke-static {v8}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$900(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 521
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 540
    .end local v0    # "child":Lcom/lenovo/component/expandlistview/LeExpandableChild;
    .end local v5    # "iv":Landroid/widget/ImageView;
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_4
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$400(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$400(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 397
    int-to-long v0, p1

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

    const/4 v2, 0x0

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;
    if-nez p3, :cond_1

    .line 418
    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;
    invoke-static {v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$400(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v2}, Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 419
    iget-object v2, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x904002d

    move-object v1, p3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 420
    new-instance v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;)V

    .line 421
    .restart local v0    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;
    const v1, 0x90c0034

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->expandBtnLayout:Landroid/view/View;

    .line 422
    iget-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->expandBtnLayout:Landroid/view/View;

    const v2, 0x90c0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->expandBtn:Landroid/view/View;

    .line 423
    iput-boolean p2, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->isExpanded:Z

    .line 424
    invoke-virtual {p3, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 426
    const v1, 0x9020084

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->getChildrenCount(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 438
    iget-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->expandBtnLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :goto_1
    return-object p3

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mListAdapter:Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;
    invoke-static {v1}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$400(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v2}, Lcom/lenovo/component/expandlistview/LeExpandableListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 429
    invoke-virtual {p3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;
    check-cast v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;

    .line 431
    .restart local v0    # "holder":Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;
    iget-boolean v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->isExpanded:Z

    if-eq p2, v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    iget-object v2, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->expandBtn:Landroid/view/View;

    # invokes: Lcom/lenovo/component/expandlistview/LeExpandableListView;->animationAtOnce(Landroid/view/View;Z)V
    invoke-static {v1, v2, p2}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$500(Lcom/lenovo/component/expandlistview/LeExpandableListView;Landroid/view/View;Z)V

    .line 433
    iput-boolean p2, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->isExpanded:Z

    goto :goto_0

    .line 440
    :cond_2
    iget-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->expandBtnLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v1, v0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->expandBtnLayout:Landroid/view/View;

    new-instance v2, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$1;-><init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;ZI)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 546
    const/4 v0, 0x1

    return v0
.end method
