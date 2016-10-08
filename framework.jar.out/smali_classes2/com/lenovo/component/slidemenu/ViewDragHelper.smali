.class public Lcom/lenovo/component/slidemenu/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field private static final DISABLE_SCROLL_ANIMATION:I = -0x1

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field private static final ENABLE_SCROLL_ANIMATION:I = 0x0

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private volatile mDisableScrollAnimationCount:I

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/lenovo/component/slidemenu/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    .line 152
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    .line 346
    new-instance v2, Lcom/lenovo/component/slidemenu/ViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper$2;-><init>(Lcom/lenovo/component/slidemenu/ViewDragHelper;)V

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 387
    if-nez p2, :cond_0

    .line 388
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_0
    if-nez p3, :cond_1

    .line 391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_1
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 395
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    .line 397
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 398
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 399
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeSize:I

    .line 401
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    .line 402
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMaxVelocity:F

    .line 403
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMinVelocity:F

    .line 404
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/lenovo/component/slidemenu/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 405
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1246
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1247
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1249
    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return v2

    .line 1255
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1256
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    .line 1259
    :cond_2
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1273
    if-nez p1, :cond_1

    move v2, v3

    .line 1286
    :cond_0
    :goto_0
    return v2

    .line 1276
    :cond_1
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 1277
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 1279
    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1280
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_2
    move v0, v3

    .line 1276
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    .line 1277
    goto :goto_2

    .line 1281
    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 1282
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1283
    :cond_5
    if-eqz v1, :cond_6

    .line 1284
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    .line 1286
    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 695
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 696
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 698
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 697
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 698
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 678
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 679
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 681
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 680
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 681
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 798
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 809
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 802
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 803
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 804
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 805
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 806
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 807
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 808
    iput v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 812
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 816
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 817
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 818
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 819
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 820
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 821
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 822
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 646
    if-nez p1, :cond_0

    .line 647
    const/4 v6, 0x0

    .line 664
    :goto_0
    return v6

    .line 650
    :cond_0
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 651
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 652
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 653
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    invoke-direct {p0, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 657
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 658
    if-lez p2, :cond_1

    .line 659
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 664
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 661
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 662
    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .prologue
    .line 612
    iget v13, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    if-nez v13, :cond_3

    .line 614
    iget v13, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMinVelocity:F

    float-to-int v13, v13

    iget v14, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMaxVelocity:F

    float-to-int v14, v14

    move/from16 v0, p4

    invoke-direct {p0, v0, v13, v14}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 615
    iget v13, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMinVelocity:F

    float-to-int v13, v13

    iget v14, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMaxVelocity:F

    float-to-int v14, v14

    move/from16 v0, p5

    invoke-direct {p0, v0, v13, v14}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 616
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 617
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 618
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 619
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 620
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 621
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 623
    .local v6, "addedDistance":I
    if-eqz p4, :cond_1

    int-to-float v13, v4

    int-to-float v14, v7

    div-float v10, v13, v14

    .line 625
    .local v10, "xweight":F
    :goto_0
    if-eqz p5, :cond_2

    int-to-float v13, v5

    int-to-float v14, v7

    div-float v12, v13, v14

    .line 628
    .local v12, "yweight":F
    :goto_1
    iget-object v13, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v13

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v13}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->computeAxisDuration(III)I

    move-result v9

    .line 629
    .local v9, "xduration":I
    iget-object v13, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v13

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v13}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->computeAxisDuration(III)I

    move-result v11

    .line 631
    .local v11, "yduration":I
    int-to-float v13, v9

    mul-float/2addr v13, v10

    int-to-float v14, v11

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    float-to-int v8, v13

    .line 642
    .end local v2    # "absDx":I
    .end local v3    # "absDy":I
    .end local v4    # "absXVel":I
    .end local v5    # "absYVel":I
    .end local v6    # "addedDistance":I
    .end local v7    # "addedVel":I
    .end local v9    # "xduration":I
    .end local v10    # "xweight":F
    .end local v11    # "yduration":I
    .end local v12    # "yweight":F
    .local v8, "result":I
    :cond_0
    :goto_2
    return v8

    .line 623
    .end local v8    # "result":I
    .restart local v2    # "absDx":I
    .restart local v3    # "absDy":I
    .restart local v4    # "absXVel":I
    .restart local v5    # "absYVel":I
    .restart local v6    # "addedDistance":I
    .restart local v7    # "addedVel":I
    :cond_1
    int-to-float v13, v2

    int-to-float v14, v6

    div-float v10, v13, v14

    goto :goto_0

    .line 625
    .restart local v10    # "xweight":F
    :cond_2
    int-to-float v13, v3

    int-to-float v14, v6

    div-float v12, v13, v14

    goto :goto_1

    .line 633
    .end local v2    # "absDx":I
    .end local v3    # "absDy":I
    .end local v4    # "absXVel":I
    .end local v5    # "absYVel":I
    .end local v6    # "addedDistance":I
    .end local v7    # "addedVel":I
    .end local v10    # "xweight":F
    :cond_3
    const/4 v13, -0x1

    iget v14, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    if-ne v13, v14, :cond_4

    .line 634
    const/4 v8, 0x0

    .restart local v8    # "result":I
    goto :goto_2

    .line 636
    .end local v8    # "result":I
    :cond_4
    const/4 v8, 0x0

    .line 637
    .restart local v8    # "result":I
    iget v13, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    if-lez v13, :cond_0

    .line 638
    iget v13, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    add-int/lit8 v13, v13, -0x1

    iput v13, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    goto :goto_2
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/lenovo/component/slidemenu/ViewDragHelper$Callback;)Lcom/lenovo/component/slidemenu/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    .prologue
    .line 373
    invoke-static {p0, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;)Lcom/lenovo/component/slidemenu/ViewDragHelper;

    move-result-object v0

    .line 374
    .local v0, "helper":Lcom/lenovo/component/slidemenu/ViewDragHelper;
    iget v1, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    .line 375
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;)Lcom/lenovo/component/slidemenu/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    .prologue
    .line 360
    new-instance v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 787
    iput-boolean v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mReleaseInProgress:Z

    .line 788
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 789
    iput-boolean v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mReleaseInProgress:Z

    .line 791
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 793
    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setDragState(I)V

    .line 795
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 702
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 703
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 704
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 1394
    move v2, p1

    .line 1395
    .local v2, "clampedX":I
    move v3, p2

    .line 1396
    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1397
    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1398
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1400
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1402
    :cond_0
    if-eqz p4, :cond_1

    .line 1403
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1404
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1407
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1408
    :cond_2
    sub-int v4, v2, v6

    .line 1409
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1410
    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1413
    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .prologue
    const/4 v9, 0x0

    .line 826
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 827
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 828
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 829
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 830
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 831
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 832
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 833
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 835
    .local v1, "edl":[I
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 836
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 837
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 838
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 839
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 840
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 841
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 842
    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 845
    :cond_1
    iput-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    .line 846
    iput-object v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    .line 847
    iput-object v5, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    .line 848
    iput-object v6, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    .line 849
    iput-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 850
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 851
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 853
    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    const/4 v0, 0x0

    .line 590
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 591
    .local v10, "startLeft":I
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 592
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 593
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 595
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 597
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 598
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setDragState(I)V

    .line 606
    :goto_0
    return v0

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 603
    .local v9, "duration":I
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 605
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setDragState(I)V

    .line 606
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1468
    const/4 v0, 0x0

    .line 1470
    .local v0, "result":I
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 1471
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1472
    :cond_1
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1473
    :cond_2
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1475
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1383
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1384
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1387
    .local v0, "xvel":F
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1390
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1391
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1225
    const/4 v0, 0x0

    .line 1226
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    or-int/lit8 v0, v0, 0x1

    .line 1229
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    or-int/lit8 v0, v0, 0x4

    .line 1232
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1233
    or-int/lit8 v0, v0, 0x2

    .line 1235
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1236
    or-int/lit8 v0, v0, 0x8

    .line 1239
    :cond_3
    if-eqz v0, :cond_4

    .line 1240
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1241
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1243
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 856
    invoke-direct {p0, p3}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 857
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 858
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 859
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 860
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mPointersDown:I

    .line 861
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 865
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 866
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 867
    .local v2, "pointerId":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 868
    .local v3, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 869
    .local v4, "y":F
    iget-object v5, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 870
    iget-object v5, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->cancel()V

    .line 526
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 528
    .local v6, "oldX":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 529
    .local v7, "oldY":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 530
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 531
    .local v2, "newX":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 532
    .local v3, "newY":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 534
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setDragState(I)V

    .line 535
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 936
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v9, p1

    .line 937
    check-cast v9, Landroid/view/ViewGroup;

    .line 938
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 939
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 940
    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 942
    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 945
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 946
    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x1

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v6, v1, v4

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v7, v1, v4

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    const/4 v1, 0x1

    .line 955
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :goto_1
    return v1

    .line 942
    .restart local v2    # "child":Landroid/view/View;
    .restart local v8    # "count":I
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "i":I
    .restart local v11    # "scrollX":I
    .restart local v12    # "scrollY":I
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 955
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v0, p3

    neg-int v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v0, p4

    neg-int v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    .line 512
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->clearMotionHistory()V

    .line 514
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 518
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 479
    iput p2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    .line 480
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setDragState(I)V

    .line 482
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .prologue
    .line 1304
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    .line 1305
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1306
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1307
    const/4 v2, 0x1

    .line 1310
    :goto_1
    return v2

    .line 1305
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1310
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkTouchSlop(II)Z
    .locals 9
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1329
    invoke-virtual {p0, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 1346
    :cond_0
    :goto_0
    return v4

    .line 1333
    :cond_1
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1334
    .local v0, "checkHorizontal":Z
    :goto_1
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v1, v4

    .line 1336
    .local v1, "checkVertical":Z
    :goto_2
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    .line 1337
    .local v2, "dx":F
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    .line 1339
    .local v3, "dy":F
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1340
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_2
    move v0, v5

    .line 1333
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v5

    .line 1334
    goto :goto_2

    .line 1341
    .restart local v1    # "checkVertical":Z
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_4
    if-eqz v0, :cond_5

    .line 1342
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 1343
    :cond_5
    if-eqz v1, :cond_6

    .line 1344
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    .line 1346
    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 743
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_5

    .line 744
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    .line 745
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 746
    .local v2, "x":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 747
    .local v3, "y":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 748
    .local v4, "dx":I
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 750
    .local v5, "dy":I
    if-eqz v4, :cond_0

    .line 751
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 753
    :cond_0
    if-eqz v5, :cond_1

    .line 754
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 757
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 761
    :cond_3
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 764
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 765
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    .line 768
    :cond_4
    if-nez v6, :cond_5

    .line 769
    if-eqz p1, :cond_6

    .line 770
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 777
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_5
    :goto_0
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_7

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 772
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_6
    invoke-virtual {p0, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setDragState(I)V

    goto :goto_0

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_7
    move v0, v7

    .line 777
    goto :goto_1
.end method

.method public disableScrollAnimation(I)V
    .locals 1
    .param p1, "disableCount"    # I

    .prologue
    .line 1502
    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    .line 1503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setScrollAnimationEnabled(Z)V

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1504
    :cond_1
    if-lez p1, :cond_0

    .line 1505
    iput p1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    goto :goto_0
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1456
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1457
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1458
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1459
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1464
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1457
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1464
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 728
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setDragState(I)V

    .line 729
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .prologue
    .line 1359
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v2

    .line 1360
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1361
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1362
    const/4 v2, 0x1

    .line 1365
    :goto_1
    return v2

    .line 1360
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1365
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1379
    invoke-virtual {p0, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 888
    iget v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mPointersDown:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1438
    if-nez p1, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1074
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1075
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 1077
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->cancel()V

    .line 1083
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1084
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1086
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1088
    packed-switch v3, :pswitch_data_0

    .line 1222
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1090
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1091
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1092
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1093
    .local v15, "pointerId":I
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1095
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1100
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1103
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1110
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1111
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1112
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1114
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1120
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1121
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1124
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1127
    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1138
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1140
    .local v12, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1141
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1142
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 1143
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1145
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->dragTo(IIII)V

    .line 1147
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1150
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 1151
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 1152
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1153
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1154
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1155
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 1156
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 1158
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1170
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1164
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1165
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1151
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1176
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1177
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 1179
    const/4 v13, -0x1

    .line 1180
    .local v13, "newActivePointer":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 1181
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    .line 1182
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1183
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1181
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1188
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1189
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1190
    .restart local v18    # "y":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1192
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    .line 1197
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1199
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1202
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1207
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1208
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1210
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1215
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1216
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1218
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 892
    iget v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 893
    iput p1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    .line 894
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 895
    if-nez p1, :cond_0

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 899
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    .line 451
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 414
    iput p1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mMinVelocity:F

    .line 415
    return-void
.end method

.method protected setScrollAnimationEnabled(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 1484
    if-eqz p1, :cond_0

    .line 1485
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    .line 1489
    :goto_0
    return-void

    .line 1487
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDisableScrollAnimationCount:I

    goto :goto_0
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 968
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 970
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->cancel()V

    .line 976
    :cond_0
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 977
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 979
    :cond_1
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 981
    packed-switch v0, :pswitch_data_0

    .line 1064
    :cond_2
    :goto_0
    :pswitch_0
    iget v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_1
    return v11

    .line 983
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 984
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 985
    .local v10, "y":F
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 986
    .local v7, "pointerId":I
    invoke-direct {p0, v9, v10, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 988
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 991
    .local v8, "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_3

    iget v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 992
    invoke-virtual {p0, v8, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 995
    :cond_3
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 996
    .local v4, "edgesTouched":I
    iget v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 997
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    iget v12, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1003
    .end local v4    # "edgesTouched":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1004
    .restart local v7    # "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 1005
    .restart local v9    # "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1007
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1010
    iget v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    if-nez v11, :cond_4

    .line 1011
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 1012
    .restart local v4    # "edgesTouched":I
    iget v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 1013
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    iget v12, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1015
    .end local v4    # "edgesTouched":I
    :cond_4
    iget v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 1017
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1018
    .restart local v8    # "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_2

    .line 1019
    invoke-virtual {p0, v8, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 1027
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1028
    .local v6, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 1029
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1030
    .restart local v7    # "pointerId":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 1031
    .restart local v9    # "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1032
    .restart local v10    # "y":F
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    sub-float v2, v9, v11

    .line 1033
    .local v2, "dx":F
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v3, v10, v11

    .line 1035
    .local v3, "dy":F
    invoke-direct {p0, v2, v3, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1036
    iget v11, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 1047
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v7    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_5
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1041
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v7    # "pointerId":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_6
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1042
    .restart local v8    # "toCapture":Landroid/view/View;
    if-eqz v8, :cond_7

    invoke-direct {p0, v8, v2, v3}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0, v8, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1028
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1052
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "i":I
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1053
    .restart local v7    # "pointerId":I
    invoke-direct {p0, v7}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1059
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1064
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 552
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 553
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    .line 555
    invoke-direct {p0, p2, p3, v1, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 911
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 920
    :goto_0
    return v0

    .line 915
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mCallback:Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    iput p2, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mActivePointerId:I

    .line 917
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 920
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useAlternativeScrollAnimation(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1521
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v3, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1522
    .local v0, "interpolator":Landroid/view/animation/PathInterpolator;
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 1523
    return-void
.end method

.method public useDefaultScrollAnimation(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1532
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Lcom/lenovo/component/slidemenu/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 1533
    return-void
.end method
