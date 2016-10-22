.class Llenovo/widget/PopupWindow$PopupViewContainer;
.super Landroid/widget/RelativeLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/PopupWindow;


# direct methods
.method public constructor <init>(Llenovo/widget/PopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1663
    iput-object p1, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    .line 1664
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1665
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1682
    invoke-virtual {p0}, Llenovo/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1683
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1702
    :cond_0
    :goto_0
    return v1

    .line 1686
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1688
    invoke-virtual {p0}, Llenovo/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1689
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1690
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 1693
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1694
    invoke-virtual {p0}, Llenovo/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1695
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1696
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    invoke-virtual {v2}, Llenovo/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1700
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1702
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1708
    iget-object v0, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$1200(Llenovo/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$1200(Llenovo/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    const/4 v0, 0x1

    .line 1711
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1742
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1743
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1744
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f050008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1745
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1746
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1749
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$1300(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1750
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f050004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1751
    .local v1, "animation2":Landroid/view/animation/Animation;
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$1300(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1752
    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 1754
    .end local v1    # "animation2":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1669
    iget-object v1, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Llenovo/widget/PopupWindow;->access$1000(Llenovo/widget/PopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1671
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1672
    .local v0, "drawableState":[I
    # getter for: Llenovo/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I
    invoke-static {}, Llenovo/widget/PopupWindow;->access$1100()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1675
    .end local v0    # "drawableState":[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1717
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1719
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    iget-object v3, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0}, Llenovo/widget/PopupWindow$PopupViewContainer;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_0

    invoke-virtual {p0}, Llenovo/widget/PopupWindow$PopupViewContainer;->getHeight()I

    move-result v3

    iget-object v4, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v4}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v1, v3, :cond_1

    .line 1721
    :cond_0
    iget-object v3, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    invoke-virtual {v3}, Llenovo/widget/PopupWindow;->dismiss()V

    .line 1727
    :goto_0
    return v2

    .line 1723
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1724
    iget-object v3, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    invoke-virtual {v3}, Llenovo/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1727
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 1734
    iget-object v0, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1739
    :goto_0
    return-void

    .line 1737
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
