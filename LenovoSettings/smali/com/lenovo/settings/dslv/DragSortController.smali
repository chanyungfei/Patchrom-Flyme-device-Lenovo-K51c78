.class public Lcom/lenovo/settings/dslv/DragSortController;
.super Lcom/lenovo/settings/dslv/ShadowFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field private static final CREATE_SPLITBAR_DISTANCE:I = 0x64

.field public static final FLING_REMOVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "DragSortController"

.field public static final MISS:I = -0x1

.field private static final OFFSET:I = 0x28

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mMid:Landroid/graphics/PointF;

.field private mMode:I

.field private mOldDist:F

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I

.field private mZooming:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 2
    .param p1, "dslv"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/lenovo/settings/dslv/DragSortController;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;III)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;III)V
    .locals 6
    .param p1, "dslv"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I

    .prologue
    .line 117
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/settings/dslv/DragSortController;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;IIII)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;IIII)V
    .locals 7
    .param p1, "dslv"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I

    .prologue
    .line 121
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/settings/dslv/DragSortController;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;IIIII)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;IIIII)V
    .locals 4
    .param p1, "dslv"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I
    .param p6, "flingHandleId"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 39
    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragInitMode:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mSortEnabled:Z

    .line 54
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    .line 55
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    .line 65
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    .line 66
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHitPos:I

    .line 68
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    .line 78
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragging:Z

    .line 80
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingSpeed:F

    .line 94
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mMode:I

    .line 95
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortController;->mZooming:Z

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mOldDist:F

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mMid:Landroid/graphics/PointF;

    .line 584
    new-instance v0, Lcom/lenovo/settings/dslv/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/dslv/DragSortController$1;-><init>(Lcom/lenovo/settings/dslv/DragSortController;)V

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 134
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    .line 135
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 136
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 137
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 138
    invoke-virtual {p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTouchSlop:I

    .line 139
    iput p2, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragHandleId:I

    .line 140
    iput p5, p0, Lcom/lenovo/settings/dslv/DragSortController;->mClickRemoveId:I

    .line 141
    iput p6, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHandleId:I

    .line 142
    invoke-virtual {p0, p4}, Lcom/lenovo/settings/dslv/DragSortController;->setRemoveMode(I)V

    .line 143
    invoke-virtual {p0, p3}, Lcom/lenovo/settings/dslv/DragSortController;->setDragInitMode(I)V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/dslv/DragSortController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortController;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/dslv/DragSortController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortController;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/settings/dslv/DragSortController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortController;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/settings/dslv/DragSortController;)Lcom/lenovo/settings/dslv/DragSortListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/dslv/DragSortController;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortController;

    .prologue
    .line 28
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/settings/dslv/DragSortController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortController;

    .prologue
    .line 28
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mPositionX:I

    return v0
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 354
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 355
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 356
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private distanceY(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 364
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 365
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 366
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 367
    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 411
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 415
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 496
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 497
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 500
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    .line 501
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_1

    .line 502
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortController;->startDrag(III)Z

    .line 505
    :cond_1
    iput-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    .line 506
    iput-boolean v5, p0, Lcom/lenovo/settings/dslv/DragSortController;->mCanDrag:Z

    .line 507
    iput v4, p0, Lcom/lenovo/settings/dslv/DragSortController;->mPositionX:I

    .line 508
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHitPos:I

    .line 510
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_0

    .line 375
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mPositionX:I

    .line 377
    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 552
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 553
    const-string v0, "DragSortController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongPress mHitPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->performHapticFeedback(I)Z

    .line 556
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mCurrX:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortController;->mCurrY:I

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortController;->startDrag(III)Z

    .line 558
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 516
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v6, v7

    .line 547
    :cond_1
    :goto_0
    return v6

    .line 520
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v2, v8

    .line 521
    .local v2, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v4, v8

    .line 522
    .local v4, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 523
    .local v3, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 524
    .local v5, "y2":I
    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemX:I

    sub-int v0, v3, v8

    .line 525
    .local v0, "deltaX":I
    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemY:I

    sub-int v1, v5, v8

    .line 527
    .local v1, "deltaY":I
    iget-boolean v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mCanDrag:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragging:Z

    if-nez v8, :cond_1

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHitPos:I

    if-eq v8, v9, :cond_1

    .line 528
    :cond_3
    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    if-eq v8, v9, :cond_5

    .line 529
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragInitMode:I

    if-ne v7, v6, :cond_4

    sub-int v7, v5, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTouchSlop:I

    if-le v7, v8, :cond_4

    iget-boolean v7, p0, Lcom/lenovo/settings/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v7, :cond_4

    .line 530
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, v7, v0, v1}, Lcom/lenovo/settings/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 531
    :cond_4
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragInitMode:I

    if-eqz v7, :cond_1

    sub-int v7, v3, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTouchSlop:I

    if-le v7, v8, :cond_1

    iget-boolean v7, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v7, :cond_1

    .line 533
    iput-boolean v6, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    .line 534
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v7, v0, v1}, Lcom/lenovo/settings/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 536
    :cond_5
    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHitPos:I

    if-eq v8, v9, :cond_1

    .line 537
    sub-int v8, v3, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTouchSlop:I

    if-le v8, v9, :cond_6

    iget-boolean v8, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v8, :cond_6

    .line 538
    iput-boolean v6, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    .line 539
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v7, v0, v1}, Lcom/lenovo/settings/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 540
    :cond_6
    sub-int v8, v5, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTouchSlop:I

    if-le v8, v9, :cond_1

    .line 542
    iput-boolean v7, p0, Lcom/lenovo/settings/dslv/DragSortController;->mCanDrag:Z

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 582
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 569
    const-string v0, "DragSortController"

    const-string v1, "onSingleTapUp..."

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 571
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mClickRemoveHitPos:I

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->removeItem(I)V

    .line 575
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/lenovo/settings/dslv/DragSortListView;->isDragEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/lenovo/settings/dslv/DragSortListView;->listViewIntercepted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_0
    const/4 v2, 0x0

    .line 348
    :goto_0
    return v2

    .line 263
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 264
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mDragging:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    :cond_2
    const-string v2, "DragSortController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v10, v2, 0xff

    .line 271
    .local v10, "action":I
    packed-switch v10, :pswitch_data_0

    .line 345
    :cond_3
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mZooming:Z

    if-eqz v2, :cond_9

    .line 346
    const/4 v2, 0x1

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mCurrX:I

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mCurrY:I

    goto :goto_1

    .line 279
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v2, :cond_4

    .line 280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mPositionX:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortController;->mPositionX:I

    move/from16 v18, v0

    .line 281
    .local v18, "x":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getWidth()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 282
    .local v16, "removePoint":I
    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 288
    .end local v16    # "removePoint":I
    .end local v18    # "x":I
    :cond_4
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    .line 289
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mDragging:Z

    .line 290
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMode:I

    .line 292
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mZooming:Z

    if-eqz v2, :cond_3

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mZooming:Z

    goto :goto_1

    .line 280
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mPositionX:I

    neg-int v0, v2

    move/from16 v18, v0

    goto :goto_2

    .line 300
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 302
    .local v14, "pointerCount":I
    const/4 v2, 0x2

    if-ne v14, v2, :cond_6

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lenovo/settings/dslv/DragSortController;->distanceY(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mOldDist:F

    .line 304
    const-string v2, "DragSortController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two pointer oldDist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/settings/dslv/DragSortController;->mOldDist:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMid:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/lenovo/settings/dslv/DragSortController;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 307
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMode:I

    goto/16 :goto_1

    .line 309
    :cond_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMode:I

    goto/16 :goto_1

    .line 314
    .end local v14    # "pointerCount":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lenovo/settings/dslv/DragSortController;->distanceY(Landroid/view/MotionEvent;)F

    move-result v13

    .line 316
    .local v13, "newDist":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mOldDist:F

    sub-float v2, v13, v2

    float-to-int v11, v2

    .line 317
    .local v11, "gap":I
    const-string v2, "DragSortController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two pointer moved gap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/16 v2, 0x28

    if-le v11, v2, :cond_7

    .line 321
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mZooming:Z

    .line 324
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mZooming:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x64

    if-le v11, v2, :cond_3

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMid:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMid:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 327
    .local v12, "middle":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/lenovo/settings/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 328
    .local v15, "pos":I
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 329
    const-string v2, "DragSortController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two pointer middle pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getUpdateListener()Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    move-result-object v17

    .line 331
    .local v17, "updateListener":Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;
    if-eqz v17, :cond_8

    .line 332
    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v15, v2}, Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;->updateData(II)V

    .line 335
    :cond_8
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMode:I

    goto/16 :goto_1

    .line 341
    .end local v11    # "gap":I
    .end local v12    # "middle":Landroid/view/MotionEvent;
    .end local v13    # "newDist":F
    .end local v15    # "pos":I
    .end local v17    # "updateListener":Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;
    :pswitch_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/settings/dslv/DragSortController;->mMode:I

    goto/16 :goto_1

    .line 348
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mClickRemoveId:I

    .line 229
    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragHandleId:I

    .line 209
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragInitMode:I

    .line 158
    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mFlingHandleId:I

    .line 219
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    .line 195
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveMode:I

    .line 182
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mSortEnabled:Z

    .line 169
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    if-nez v1, :cond_0

    .line 245
    or-int/lit8 v0, v0, 0xc

    .line 247
    :cond_0
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    .line 248
    or-int/lit8 v0, v0, 0x1

    .line 249
    or-int/lit8 v0, v0, 0x2

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragging:Z

    .line 253
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDragging:Z

    return v1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 397
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public viewIdHitPosition(IIIII)I
    .locals 13
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "rawTouchX"    # I
    .param p4, "rawTouchY"    # I
    .param p5, "id"    # I

    .prologue
    .line 457
    move v9, p1

    .line 458
    .local v9, "x":I
    move v10, p2

    .line 460
    .local v10, "y":I
    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v11, v9, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->pointToPosition(II)I

    move-result v8

    .line 462
    .local v8, "touchPos":I
    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    .line 463
    .local v5, "numHeaders":I
    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    .line 464
    .local v4, "numFooters":I
    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v1

    .line 468
    .local v1, "count":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    if-lt v8, v5, :cond_2

    sub-int v11, v1, v4

    if-ge v8, v11, :cond_2

    .line 470
    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    iget-object v12, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v12}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int v12, v8, v12

    invoke-virtual {v11, v12}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 471
    .local v3, "item":Landroid/view/View;
    move/from16 v6, p3

    .line 472
    .local v6, "rawX":I
    move/from16 v7, p4

    .line 474
    .local v7, "rawY":I
    if-nez p5, :cond_1

    move-object v2, v3

    .line 475
    .local v2, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_0

    .line 476
    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {v2, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 478
    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-le v6, v11, :cond_0

    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-le v7, v11, :cond_0

    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v6, v11, :cond_0

    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v7, v11, :cond_0

    .line 482
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v11

    iput v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemX:I

    .line 483
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemY:I

    .line 491
    .end local v2    # "dragBox":Landroid/view/View;
    .end local v3    # "item":Landroid/view/View;
    .end local v6    # "rawX":I
    .end local v7    # "rawY":I
    .end local v8    # "touchPos":I
    :cond_0
    :goto_1
    return v8

    .line 474
    .restart local v3    # "item":Landroid/view/View;
    .restart local v6    # "rawX":I
    .restart local v7    # "rawY":I
    .restart local v8    # "touchPos":I
    :cond_1
    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 491
    .end local v3    # "item":Landroid/view/View;
    .end local v6    # "rawX":I
    .end local v7    # "rawY":I
    :cond_2
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 420
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 422
    .local v9, "y":I
    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v10, v8, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->pointToPosition(II)I

    move-result v7

    .line 424
    .local v7, "touchPos":I
    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    .line 425
    .local v4, "numHeaders":I
    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 426
    .local v3, "numFooters":I
    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v0

    .line 430
    .local v0, "count":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_2

    if-lt v7, v4, :cond_2

    sub-int v10, v0, v3

    if-ge v7, v10, :cond_2

    .line 432
    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortController;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v10, v11}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 433
    .local v2, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v5, v10

    .line 434
    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v6, v10

    .line 436
    .local v6, "rawY":I
    if-nez p2, :cond_1

    move-object v1, v2

    .line 437
    .local v1, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    .line 438
    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 440
    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v5, v10, :cond_0

    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v6, v10, :cond_0

    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_0

    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_0

    .line 444
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemX:I

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/lenovo/settings/dslv/DragSortController;->mItemY:I

    .line 453
    .end local v1    # "dragBox":Landroid/view/View;
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    .end local v7    # "touchPos":I
    :cond_0
    :goto_1
    return v7

    .line 436
    .restart local v2    # "item":Landroid/view/View;
    .restart local v5    # "rawX":I
    .restart local v6    # "rawY":I
    .restart local v7    # "touchPos":I
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 453
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :cond_2
    const/4 v7, -0x1

    goto :goto_1
.end method
