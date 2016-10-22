.class Llenovo/widget/ListPopupWindow$DropDownListView;
.super Lcom/lenovo/internal/widget/ListViewCompat;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Llenovo/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llenovo/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Llenovo/widget/ListViewAutoScrollHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1494
    new-instance v0, Llenovo/widget/ListPopupWindow$DropDownListView$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Llenovo/widget/ListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Llenovo/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Llenovo/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 1557
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1558
    iput-boolean p2, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1560
    return-void
.end method

.method static synthetic access$502(Llenovo/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    .line 1486
    iput-boolean p1, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private clearPressedItem()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1653
    iput-boolean v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1654
    invoke-virtual {p0, v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1656
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$DropDownListView;->drawableStateChanged()V

    .line 1658
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1660
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1662
    :cond_0
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1629
    invoke-virtual {p0, p2}, Llenovo/widget/ListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1630
    .local v4, "id":J
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1631
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mSelector:Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;

    sget-object v1, Llenovo/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Llenovo/util/IntProperty;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1633
    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1634
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1635
    new-instance v0, Llenovo/widget/ListPopupWindow$DropDownListView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Llenovo/widget/ListPopupWindow$DropDownListView$2;-><init>(Llenovo/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1641
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 1643
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1646
    :cond_0
    iput-object v6, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1650
    .end local v6    # "anim":Landroid/animation/Animator;
    :goto_0
    return-void

    .line 1648
    :cond_1
    invoke-virtual {p0, p1, p2, v4, v5}, Llenovo/widget/ListPopupWindow$DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    .line 1631
    nop

    :array_0
    .array-data 4
        0xff
        0x80
        0xff
    .end array-data
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v0, 0x1

    .line 1665
    iput-boolean v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1669
    invoke-virtual {p0, v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1670
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$DropDownListView;->layoutChildren()V

    .line 1673
    invoke-virtual {p0, p2}, Llenovo/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 1674
    invoke-virtual {p0, p2, p1, p3, p4}, Llenovo/widget/ListPopupWindow$DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 1679
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->setSelectorEnabled(Z)V

    .line 1683
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$DropDownListView;->refreshDrawableState()V

    .line 1685
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1686
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1687
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1689
    :cond_0
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/lenovo/internal/widget/ListViewCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1709
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/lenovo/internal/widget/ListViewCompat;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1719
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/lenovo/internal/widget/ListViewCompat;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1699
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/lenovo/internal/widget/ListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v10, 0x1

    .line 1569
    const/4 v4, 0x1

    .line 1570
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 1572
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1573
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 1606
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 1607
    :cond_1
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow$DropDownListView;->clearPressedItem()V

    .line 1611
    :cond_2
    if-eqz v4, :cond_7

    .line 1612
    iget-object v8, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Llenovo/widget/ListViewAutoScrollHelper;

    if-nez v8, :cond_3

    .line 1613
    new-instance v8, Llenovo/widget/ListViewAutoScrollHelper;

    invoke-direct {v8, p0}, Llenovo/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v8, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Llenovo/widget/ListViewAutoScrollHelper;

    .line 1615
    :cond_3
    iget-object v8, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Llenovo/widget/ListViewAutoScrollHelper;

    invoke-virtual {v8, v10}, Llenovo/widget/ListViewAutoScrollHelper;->setEnabled(Z)Llenovo/widget/AutoScrollHelper;

    .line 1616
    iget-object v8, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Llenovo/widget/ListViewAutoScrollHelper;

    invoke-virtual {v8, p0, p1}, Llenovo/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1621
    :cond_4
    :goto_1
    return v4

    .line 1575
    :pswitch_0
    const/4 v4, 0x0

    .line 1576
    goto :goto_0

    .line 1578
    :pswitch_1
    const/4 v4, 0x0

    .line 1581
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1582
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 1583
    const/4 v4, 0x0

    .line 1584
    goto :goto_0

    .line 1587
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 1588
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 1589
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Llenovo/widget/ListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 1590
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 1591
    const/4 v3, 0x1

    .line 1592
    goto :goto_0

    .line 1595
    :cond_6
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Llenovo/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1596
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-direct {p0, v2, v5, v8, v9}, Llenovo/widget/ListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 1597
    const/4 v4, 0x1

    .line 1599
    if-ne v0, v10, :cond_0

    .line 1600
    invoke-direct {p0, v2, v5}, Llenovo/widget/ListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 1617
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Llenovo/widget/ListViewAutoScrollHelper;

    if-eqz v8, :cond_4

    .line 1618
    iget-object v8, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Llenovo/widget/ListViewAutoScrollHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Llenovo/widget/ListViewAutoScrollHelper;->setEnabled(Z)Llenovo/widget/AutoScrollHelper;

    goto :goto_1

    .line 1573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .prologue
    .line 1693
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/lenovo/internal/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
