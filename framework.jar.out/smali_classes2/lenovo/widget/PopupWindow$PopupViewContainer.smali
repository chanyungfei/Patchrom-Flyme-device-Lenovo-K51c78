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
    .line 1704
    iput-object p1, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    .line 1705
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1706
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1722
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1723
    invoke-virtual {p0}, Llenovo/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1724
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1743
    :cond_0
    :goto_0
    return v1

    .line 1727
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1729
    invoke-virtual {p0}, Llenovo/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1730
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1731
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 1734
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1735
    invoke-virtual {p0}, Llenovo/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1736
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1737
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    invoke-virtual {v2}, Llenovo/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1741
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1743
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1749
    iget-object v0, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$1100(Llenovo/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$1100(Llenovo/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1750
    const/4 v0, 0x1

    .line 1752
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1710
    iget-object v1, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Llenovo/widget/PopupWindow;->access$900(Llenovo/widget/PopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1712
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1713
    .local v0, "drawableState":[I
    # getter for: Llenovo/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I
    invoke-static {}, Llenovo/widget/PopupWindow;->access$1000()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1716
    .end local v0    # "drawableState":[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1783
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1784
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-boolean v2, v2, Llenovo/widget/PopupWindow;->mAnimationDuing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-boolean v2, v2, Llenovo/widget/PopupWindow;->mAnimationEnterFinish:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-object v2, v2, Llenovo/widget/PopupWindow;->mTranslateEnterAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mIsShowing:Z
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$1200(Llenovo/widget/PopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1785
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1786
    .local v1, "listChildCount":I
    mul-int/lit8 v2, v1, 0xa

    add-int/lit16 v0, v2, 0x96

    .line 1787
    .local v0, "durationTime":I
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-object v2, v2, Llenovo/widget/PopupWindow;->mTranslateEnterAnimation:Landroid/view/animation/TranslateAnimation;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1788
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-object v3, v3, Llenovo/widget/PopupWindow;->mTranslateEnterAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1789
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-object v2, v2, Llenovo/widget/PopupWindow;->mTranslateEnterAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 1790
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-object v2, v2, Llenovo/widget/PopupWindow;->mAlphaEnterAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v2, :cond_0

    .line 1791
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-object v2, v2, Llenovo/widget/PopupWindow;->mAlphaEnterAnimation:Landroid/view/animation/AlphaAnimation;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1792
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mAlphaView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$1300(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-object v3, v3, Llenovo/widget/PopupWindow;->mAlphaEnterAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1793
    iget-object v2, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    iget-object v2, v2, Llenovo/widget/PopupWindow;->mAlphaEnterAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 1797
    .end local v0    # "durationTime":I
    .end local v1    # "listChildCount":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1758
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1760
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

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

    .line 1762
    :cond_0
    iget-object v3, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    invoke-virtual {v3}, Llenovo/widget/PopupWindow;->dismiss()V

    .line 1768
    :goto_0
    return v2

    .line 1764
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1765
    iget-object v3, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    invoke-virtual {v3}, Llenovo/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1768
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 1775
    iget-object v0, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Llenovo/widget/PopupWindow$PopupViewContainer;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1780
    :goto_0
    return-void

    .line 1778
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
