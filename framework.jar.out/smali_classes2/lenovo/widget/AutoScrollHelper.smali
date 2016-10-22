.class public abstract Llenovo/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/AutoScrollHelper$1;,
        Llenovo/widget/AutoScrollHelper$ClampedScroller;,
        Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Llenovo/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Llenovo/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v3, Llenovo/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v3}, Llenovo/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v3, p0, Llenovo/widget/AutoScrollHelper;->mScroller:Llenovo/widget/AutoScrollHelper$ClampedScroller;

    .line 138
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v3, p0, Llenovo/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 147
    new-array v3, v4, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Llenovo/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 150
    new-array v3, v4, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Llenovo/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 159
    new-array v3, v4, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Llenovo/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 162
    new-array v3, v4, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Llenovo/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 165
    new-array v3, v4, [F

    fill-array-data v3, :array_4

    iput-object v3, p0, Llenovo/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 208
    iput-object p1, p0, Llenovo/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 210
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 211
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const v3, 0x44c4e000    # 1575.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v0, v3

    .line 212
    .local v0, "maxVelocity":I
    const v3, 0x439d8000    # 315.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v2, v3

    .line 213
    .local v2, "minVelocity":I
    int-to-float v3, v0

    int-to-float v4, v0

    invoke-virtual {p0, v3, v4}, Llenovo/widget/AutoScrollHelper;->setMaximumVelocity(FF)Llenovo/widget/AutoScrollHelper;

    .line 214
    int-to-float v3, v2

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Llenovo/widget/AutoScrollHelper;->setMinimumVelocity(FF)Llenovo/widget/AutoScrollHelper;

    .line 216
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Llenovo/widget/AutoScrollHelper;->setEdgeType(I)Llenovo/widget/AutoScrollHelper;

    .line 217
    invoke-virtual {p0, v8, v8}, Llenovo/widget/AutoScrollHelper;->setMaximumEdges(FF)Llenovo/widget/AutoScrollHelper;

    .line 218
    invoke-virtual {p0, v5, v5}, Llenovo/widget/AutoScrollHelper;->setRelativeEdges(FF)Llenovo/widget/AutoScrollHelper;

    .line 219
    invoke-virtual {p0, v7, v7}, Llenovo/widget/AutoScrollHelper;->setRelativeVelocity(FF)Llenovo/widget/AutoScrollHelper;

    .line 220
    sget v3, Llenovo/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v3}, Llenovo/widget/AutoScrollHelper;->setActivationDelay(I)Llenovo/widget/AutoScrollHelper;

    .line 221
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Llenovo/widget/AutoScrollHelper;->setRampUpDuration(I)Llenovo/widget/AutoScrollHelper;

    .line 222
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Llenovo/widget/AutoScrollHelper;->setRampDownDuration(I)Llenovo/widget/AutoScrollHelper;

    .line 223
    return-void

    .line 147
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 150
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 159
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 162
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 165
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static synthetic access$100(Llenovo/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    .line 82
    iget-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mAnimating:Z

    return v0
.end method

.method static synthetic access$102(Llenovo/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Llenovo/widget/AutoScrollHelper;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Llenovo/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    .line 82
    iget-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mNeedsReset:Z

    return v0
.end method

.method static synthetic access$202(Llenovo/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Llenovo/widget/AutoScrollHelper;->mNeedsReset:Z

    return p1
.end method

.method static synthetic access$300(Llenovo/widget/AutoScrollHelper;)Llenovo/widget/AutoScrollHelper$ClampedScroller;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    .line 82
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mScroller:Llenovo/widget/AutoScrollHelper$ClampedScroller;

    return-object v0
.end method

.method static synthetic access$400(Llenovo/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    .line 82
    invoke-direct {p0}, Llenovo/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Llenovo/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    .line 82
    iget-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mNeedsCancel:Z

    return v0
.end method

.method static synthetic access$502(Llenovo/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Llenovo/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p1
.end method

.method static synthetic access$600(Llenovo/widget/AutoScrollHelper;)V
    .locals 0
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    .line 82
    invoke-direct {p0}, Llenovo/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static synthetic access$700(Llenovo/widget/AutoScrollHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    .line 82
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(III)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Llenovo/widget/AutoScrollHelper;->constrain(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Llenovo/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private cancelTargetTouch()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 676
    .local v0, "eventTime":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 678
    .local v8, "cancel":Landroid/view/MotionEvent;
    iget-object v2, p0, Llenovo/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 679
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 680
    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 9
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .prologue
    const/4 v7, 0x0

    .line 537
    iget-object v8, p0, Llenovo/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v3, v8, p1

    .line 538
    .local v3, "relativeEdge":F
    iget-object v8, p0, Llenovo/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v0, v8, p1

    .line 539
    .local v0, "maximumEdge":F
    invoke-direct {p0, v3, p3, v0, p2}, Llenovo/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v6

    .line 540
    .local v6, "value":F
    cmpl-float v8, v6, v7

    if-nez v8, :cond_0

    .line 556
    :goto_0
    return v7

    .line 545
    :cond_0
    iget-object v8, p0, Llenovo/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v4, v8, p1

    .line 546
    .local v4, "relativeVelocity":F
    iget-object v8, p0, Llenovo/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v2, v8, p1

    .line 547
    .local v2, "minimumVelocity":F
    iget-object v8, p0, Llenovo/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v1, v8, p1

    .line 548
    .local v1, "maximumVelocity":F
    mul-float v5, v4, p4

    .line 553
    .local v5, "targetVelocity":F
    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 554
    mul-float v7, v6, v5

    invoke-static {v7, v2, v1}, Llenovo/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    goto :goto_0

    .line 556
    :cond_1
    neg-float v7, v6

    mul-float/2addr v7, v5

    invoke-static {v7, v2, v1}, Llenovo/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    neg-float v7, v7

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 661
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 666
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 663
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 664
    goto :goto_0

    :cond_1
    move p2, p0

    .line 666
    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 651
    if-le p0, p2, :cond_0

    .line 656
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 653
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 654
    goto :goto_0

    :cond_1
    move p2, p0

    .line 656
    goto :goto_0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 622
    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    iget v2, p0, Llenovo/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 629
    :pswitch_0
    cmpg-float v2, p1, p2

    if-gez v2, :cond_0

    .line 630
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 632
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_0

    .line 633
    :cond_2
    iget-boolean v2, p0, Llenovo/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v2, :cond_0

    iget v2, p0, Llenovo/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 635
    goto :goto_0

    .line 640
    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 642
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 7
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    .prologue
    const/4 v5, 0x0

    .line 605
    mul-float v6, p1, p2

    invoke-static {v6, v5, p3}, Llenovo/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 606
    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, Llenovo/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v3

    .line 607
    .local v3, "valueLeading":F
    sub-float v6, p2, p4

    invoke-direct {p0, v6, v0}, Llenovo/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v4

    .line 608
    .local v4, "valueTrailing":F
    sub-float v2, v4, v3

    .line 610
    .local v2, "value":F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_1

    .line 611
    iget-object v5, p0, Llenovo/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v6, v2

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    neg-float v1, v5

    .line 618
    .local v1, "interpolated":F
    :goto_0
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, Llenovo/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v5

    .end local v1    # "interpolated":F
    :cond_0
    return v5

    .line 612
    :cond_1
    cmpl-float v6, v2, v5

    if-lez v6, :cond_0

    .line 613
    iget-object v5, p0, Llenovo/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1    # "interpolated":F
    goto :goto_0
.end method

.method private requestStop()V
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mAnimating:Z

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mScroller:Llenovo/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_0
.end method

.method private shouldAnimate()Z
    .locals 4

    .prologue
    .line 490
    iget-object v1, p0, Llenovo/widget/AutoScrollHelper;->mScroller:Llenovo/widget/AutoScrollHelper$ClampedScroller;

    .line 491
    .local v1, "scroller":Llenovo/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v1}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v2

    .line 492
    .local v2, "verticalDirection":I
    invoke-virtual {v1}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    .line 494
    .local v0, "horizontalDirection":I
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Llenovo/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Llenovo/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startAnimating()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 502
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Llenovo/widget/AutoScrollHelper;Llenovo/widget/AutoScrollHelper$1;)V

    iput-object v0, p0, Llenovo/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 506
    :cond_0
    iput-boolean v4, p0, Llenovo/widget/AutoScrollHelper;->mAnimating:Z

    .line 507
    iput-boolean v4, p0, Llenovo/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 509
    iget-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v0, :cond_1

    iget v0, p0, Llenovo/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v0, :cond_1

    .line 510
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Llenovo/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Llenovo/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 517
    :goto_0
    iput-boolean v4, p0, Llenovo/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 518
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 454
    iget-boolean v5, p0, Llenovo/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v5, :cond_0

    .line 483
    :goto_0
    return v4

    .line 458
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 459
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 483
    :cond_1
    :goto_1
    iget-boolean v5, p0, Llenovo/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Llenovo/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v5, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    .line 461
    :pswitch_0
    iput-boolean v3, p0, Llenovo/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 462
    iput-boolean v4, p0, Llenovo/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 465
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Llenovo/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v4, v5, v6, v7}, Llenovo/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v1

    .line 467
    .local v1, "xTargetVelocity":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Llenovo/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v3, v5, v6, v7}, Llenovo/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    .line 469
    .local v2, "yTargetVelocity":F
    iget-object v5, p0, Llenovo/widget/AutoScrollHelper;->mScroller:Llenovo/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5, v1, v2}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 473
    iget-boolean v5, p0, Llenovo/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Llenovo/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    invoke-direct {p0}, Llenovo/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_1

    .line 479
    .end local v1    # "xTargetVelocity":F
    .end local v2    # "yTargetVelocity":F
    :pswitch_2
    invoke-direct {p0}, Llenovo/widget/AutoScrollHelper;->requestStop()V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 483
    goto :goto_2

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Llenovo/widget/AutoScrollHelper;
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 410
    iput p1, p0, Llenovo/widget/AutoScrollHelper;->mActivationDelay:I

    .line 411
    return-object p0
.end method

.method public setEdgeType(I)Llenovo/widget/AutoScrollHelper;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 352
    iput p1, p0, Llenovo/widget/AutoScrollHelper;->mEdgeType:I

    .line 353
    return-object p0
.end method

.method public setEnabled(Z)Llenovo/widget/AutoScrollHelper;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 233
    iget-boolean v0, p0, Llenovo/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 234
    invoke-direct {p0}, Llenovo/widget/AutoScrollHelper;->requestStop()V

    .line 237
    :cond_0
    iput-boolean p1, p0, Llenovo/widget/AutoScrollHelper;->mEnabled:Z

    .line 238
    return-object p0
.end method

.method public setExclusive(Z)Llenovo/widget/AutoScrollHelper;
    .locals 0
    .param p1, "exclusive"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Llenovo/widget/AutoScrollHelper;->mExclusive:Z

    .line 262
    return-object p0
.end method

.method public setMaximumEdges(FF)Llenovo/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    .line 393
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 394
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 395
    return-object p0
.end method

.method public setMaximumVelocity(FF)Llenovo/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 292
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 293
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 294
    return-object p0
.end method

.method public setMinimumVelocity(FF)Llenovo/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 310
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 311
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 312
    return-object p0
.end method

.method public setRampDownDuration(I)Llenovo/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 440
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mScroller:Llenovo/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 441
    return-object p0
.end method

.method public setRampUpDuration(I)Llenovo/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 425
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mScroller:Llenovo/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 426
    return-object p0
.end method

.method public setRelativeEdges(FF)Llenovo/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    .line 371
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 372
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 373
    return-object p0
.end method

.method public setRelativeVelocity(FF)Llenovo/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 331
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 332
    iget-object v0, p0, Llenovo/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 333
    return-object p0
.end method
