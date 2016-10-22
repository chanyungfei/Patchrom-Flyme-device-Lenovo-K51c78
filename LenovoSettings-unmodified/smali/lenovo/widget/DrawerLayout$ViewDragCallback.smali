.class Llenovo/widget/DrawerLayout$ViewDragCallback;
.super Llenovo/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Llenovo/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Llenovo/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Llenovo/widget/DrawerLayout;I)V
    .locals 1
    .param p2, "gravity"    # I

    .prologue
    .line 1592
    iput-object p1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-direct {p0}, Llenovo/widget/ViewDragHelper$Callback;-><init>()V

    .line 1586
    new-instance v0, Llenovo/widget/DrawerLayout$ViewDragCallback$1;

    invoke-direct {v0, p0}, Llenovo/widget/DrawerLayout$ViewDragCallback$1;-><init>(Llenovo/widget/DrawerLayout$ViewDragCallback;)V

    iput-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 1593
    iput p2, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 1594
    return-void
.end method

.method static synthetic access$000(Llenovo/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0
    .param p0, "x0"    # Llenovo/widget/DrawerLayout$ViewDragCallback;

    .prologue
    .line 1582
    invoke-direct {p0}, Llenovo/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method

.method private closeOtherDrawer()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 1643
    iget v2, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x5

    .line 1644
    .local v0, "otherGrav":I
    :cond_0
    iget-object v2, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v2, v0}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1645
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1646
    iget-object v2, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Llenovo/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1648
    :cond_1
    return-void
.end method

.method private peekDrawer()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1677
    iget-object v7, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v7}, Llenovo/widget/ViewDragHelper;->getEdgeSize()I

    move-result v3

    .line 1678
    .local v3, "peekDistance":I
    iget v7, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-ne v7, v8, :cond_4

    move v1, v6

    .line 1679
    .local v1, "leftEdge":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 1680
    iget-object v7, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v7, v8}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 1681
    .local v4, "toCapture":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    :cond_0
    add-int v0, v5, v3

    .line 1687
    .local v0, "childLeft":I
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v0, :cond_2

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v0, :cond_3

    :cond_2
    iget-object v5, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v5, v4}, Llenovo/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_3

    .line 1690
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 1691
    .local v2, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    iget-object v5, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v5, v4, v0, v7}, Llenovo/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1692
    iput-boolean v6, v2, Llenovo/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1693
    iget-object v5, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v5}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 1695
    invoke-direct {p0}, Llenovo/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 1697
    iget-object v5, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v5}, Llenovo/widget/DrawerLayout;->cancelChildViewTouch()V

    .line 1699
    .end local v2    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :cond_3
    return-void

    .end local v0    # "childLeft":I
    .end local v1    # "leftEdge":Z
    .end local v4    # "toCapture":Landroid/view/View;
    :cond_4
    move v1, v5

    .line 1678
    goto :goto_0

    .line 1683
    .restart local v1    # "leftEdge":Z
    :cond_5
    iget-object v5, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 1684
    .restart local v4    # "toCapture":Landroid/view/View;
    iget-object v5, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v5}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v5

    sub-int v0, v5, v3

    .restart local v0    # "childLeft":I
    goto :goto_1
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 1734
    iget-object v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1735
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1738
    :goto_0
    return v1

    .line 1737
    :cond_0
    iget-object v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v1}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1738
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1744
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1729
    iget-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEdgeDragStarted(II)V
    .locals 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1716
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1717
    iget-object v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1722
    .local v0, "toCapture":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Llenovo/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1723
    iget-object v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p2}, Llenovo/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1725
    :cond_0
    return-void

    .line 1719
    .end local v0    # "toCapture":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "toCapture":Landroid/view/View;
    goto :goto_0
.end method

.method public onEdgeLock(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    .prologue
    .line 1710
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 4
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1671
    iget-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    iget-object v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Llenovo/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1672
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1636
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 1637
    .local v0, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Llenovo/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1639
    invoke-direct {p0}, Llenovo/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 1640
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1614
    iget-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    iget v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    iget-object v2, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v2}, Llenovo/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Llenovo/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1615
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 1620
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1623
    .local v0, "childWidth":I
    iget-object v3, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1624
    add-int v3, v0, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 1629
    .local v1, "offset":F
    :goto_0
    iget-object v3, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v3, p1, v1}, Llenovo/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1630
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1631
    iget-object v3, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v3}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 1632
    return-void

    .line 1626
    .end local v1    # "offset":F
    :cond_0
    iget-object v3, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v3}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1627
    .local v2, "width":I
    sub-int v3, v2, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .restart local v1    # "offset":F
    goto :goto_0

    .line 1630
    .end local v2    # "width":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 1654
    iget-object v4, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v4, p1}, Llenovo/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    .line 1655
    .local v2, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1658
    .local v0, "childWidth":I
    iget-object v4, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1659
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v6

    if-nez v4, :cond_1

    cmpl-float v4, v2, v7

    if-lez v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1665
    .local v1, "left":I
    :goto_0
    iget-object v4, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Llenovo/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1666
    iget-object v4, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v4}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 1667
    return-void

    .line 1659
    .end local v1    # "left":I
    :cond_1
    neg-int v1, v0

    goto :goto_0

    .line 1661
    :cond_2
    iget-object v4, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v4}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v3

    .line 1662
    .local v3, "width":I
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_3

    cmpl-float v4, p2, v6

    if-nez v4, :cond_4

    cmpl-float v4, v2, v7

    if-lez v4, :cond_4

    :cond_3
    sub-int v1, v3, v0

    .restart local v1    # "left":I
    :goto_1
    goto :goto_0

    .end local v1    # "left":I
    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public removeCallbacks()V
    .locals 2

    .prologue
    .line 1601
    iget-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    iget-object v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Llenovo/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1602
    return-void
.end method

.method public setDragger(Llenovo/widget/ViewDragHelper;)V
    .locals 0
    .param p1, "dragger"    # Llenovo/widget/ViewDragHelper;

    .prologue
    .line 1597
    iput-object p1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mDragger:Llenovo/widget/ViewDragHelper;

    .line 1598
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 1608
    iget-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    iget v1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v0, p1, v1}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback;->this$0:Llenovo/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Llenovo/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
