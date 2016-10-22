.class public Lcom/lenovo/component/slidemenu/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/slidemenu/DrawerLayout$ChildAccessibilityDelegate;,
        Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;,
        Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;,
        Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;,
        Lcom/lenovo/component/slidemenu/DrawerLayout$SimpleDrawerListener;,
        Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;,
        Lcom/lenovo/component/slidemenu/DrawerLayout$EdgeGravity;,
        Lcom/lenovo/component/slidemenu/DrawerLayout$LockMode;,
        Lcom/lenovo/component/slidemenu/DrawerLayout$State;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = 0x70000000

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final MIN_FRAME_COMPUTE_DURATION:J = 0x14L

.field private static final PEEK_DELAY:I = 0xa0

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private currentComputeScrollTime:J

.field private volatile isDrawerDisabled:Z

.field private isFrameRefreshControlEnabled:Z

.field private lastComputeScrollTime:J

.field private final mChildAccessibilityDelegate:Lcom/lenovo/component/slidemenu/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private final mLeftCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

.field private mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mRightCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v8, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    new-instance v2, Lcom/lenovo/component/slidemenu/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/lenovo/component/slidemenu/DrawerLayout$ChildAccessibilityDelegate;-><init>(Lcom/lenovo/component/slidemenu/DrawerLayout;)V

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildAccessibilityDelegate:Lcom/lenovo/component/slidemenu/DrawerLayout$ChildAccessibilityDelegate;

    .line 158
    const/high16 v2, 0x70000000

    iput v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimColor:I

    .line 160
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 168
    iput-boolean v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mFirstLayout:Z

    .line 185
    iput-boolean v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerDisabled:Z

    .line 189
    iput-wide v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->currentComputeScrollTime:J

    .line 193
    iput-wide v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->lastComputeScrollTime:J

    .line 194
    iput-boolean v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->isFrameRefreshControlEnabled:Z

    .line 264
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 265
    .local v0, "density":F
    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mMinDrawerMargin:I

    .line 266
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v1, v2, v0

    .line 268
    .local v1, "minVel":F
    new-instance v2, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;-><init>(Lcom/lenovo/component/slidemenu/DrawerLayout;I)V

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    .line 269
    new-instance v2, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;-><init>(Lcom/lenovo/component/slidemenu/DrawerLayout;I)V

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    .line 271
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v6, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/lenovo/component/slidemenu/ViewDragHelper$Callback;)Lcom/lenovo/component/slidemenu/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    .line 272
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v2, v4}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 273
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v2, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setMinVelocity(F)V

    .line 274
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v2, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->setDragger(Lcom/lenovo/component/slidemenu/ViewDragHelper;)V

    .line 276
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v6, v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/lenovo/component/slidemenu/ViewDragHelper$Callback;)Lcom/lenovo/component/slidemenu/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    .line 277
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 278
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v2, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setMinVelocity(F)V

    .line 279
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v2, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->setDragger(Lcom/lenovo/component/slidemenu/ViewDragHelper;)V

    .line 282
    invoke-virtual {p0, v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 284
    invoke-virtual {p0, v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setImportantForAccessibility(I)V

    .line 286
    new-instance v2, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v2}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 287
    invoke-virtual {p0, v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 288
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->includeChildForAccessibilitiy(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1379
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1380
    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1381
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1385
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1379
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1385
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getComputeScrollSleepDuration()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x14

    .line 908
    const-wide/16 v0, 0x0

    .line 910
    .local v0, "result":J
    iget-wide v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->currentComputeScrollTime:J

    iget-wide v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->lastComputeScrollTime:J

    sub-long/2addr v2, v4

    sub-long v0, v6, v2

    .line 911
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 912
    const-wide/16 v0, 0x14

    .line 915
    :cond_0
    return-wide v0
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    .prologue
    .line 689
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 690
    const-string v0, "LEFT"

    .line 695
    :goto_0
    return-object v0

    .line 692
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 693
    const-string v0, "RIGHT"

    goto :goto_0

    .line 695
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 942
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 943
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 946
    :cond_0
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1340
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1341
    invoke-virtual {p0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 1342
    .local v2, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    iget-boolean v3, v2, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_0

    .line 1343
    const/4 v3, 0x1

    .line 1346
    .end local v2    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :goto_1
    return v3

    .line 1340
    .restart local v2    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1346
    .end local v2    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .prologue
    .line 1374
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static includeChildForAccessibilitiy(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 1490
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnoughTimeAfterLastCompute()Z
    .locals 8

    .prologue
    .line 927
    const/4 v2, 0x1

    .line 929
    .local v2, "result":Z
    iget-wide v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->currentComputeScrollTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->currentComputeScrollTime:J

    .line 938
    :goto_0
    return v2

    .line 932
    :cond_0
    iget-wide v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->currentComputeScrollTime:J

    iput-wide v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->lastComputeScrollTime:J

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->currentComputeScrollTime:J

    .line 934
    iget-wide v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->currentComputeScrollTime:J

    iget-wide v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->lastComputeScrollTime:J

    sub-long v0, v4, v6

    .line 935
    .local v0, "deltaTime":J
    const-wide/16 v4, 0x14

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setAnimationInterpolatorControlEnabled(ZLandroid/content/Context;)V
    .locals 1
    .param p1, "isEnable"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1915
    if-eqz p1, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v0, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->useAlternativeScrollAnimation(Landroid/content/Context;)V

    .line 1917
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v0, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->useAlternativeScrollAnimation(Landroid/content/Context;)V

    .line 1922
    :goto_0
    return-void

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v0, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->useDefaultScrollAnimation(Landroid/content/Context;)V

    .line 1920
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v0, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->useDefaultScrollAnimation(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setFrameRefreshControlEnabled(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 1903
    iput-boolean p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->isFrameRefreshControlEnabled:Z

    .line 1904
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1470
    if-gtz p2, :cond_0

    if-gez p2, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1471
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildAccessibilityDelegate:Lcom/lenovo/component/slidemenu/DrawerLayout$ChildAccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1481
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    return-void

    .line 1478
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 1390
    iget-boolean v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v2, :cond_1

    .line 1391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1392
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1394
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1395
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1396
    invoke-virtual {p0, v10}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1395
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1398
    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1399
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1401
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 636
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1365
    instance-of v0, p1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeDrawer(I)V
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 1265
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1266
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1270
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1271
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 1239
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1243
    :cond_0
    iget-boolean v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1244
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 1245
    .local v0, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    .line 1246
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1255
    .end local v0    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 1256
    return-void

    .line 1248
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1249
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1252
    :cond_2
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    .prologue
    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawers(Z)V

    .line 1159
    return-void
.end method

.method closeDrawers(Z)V
    .locals 9
    .param p1, "peekingOnly"    # Z

    .prologue
    .line 1162
    const/4 v5, 0x0

    .line 1163
    .local v5, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1164
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1165
    invoke-virtual {p0, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1166
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 1168
    .local v4, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v6, v4, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_1

    .line 1164
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1174
    .local v2, "childWidth":I
    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1175
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    neg-int v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1182
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 1178
    :cond_2
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_2

    .line 1185
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    .end local v4    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1186
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1188
    if-eqz v5, :cond_4

    .line 1189
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 1191
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 879
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v0

    .line 880
    .local v0, "childCount":I
    const/4 v3, 0x0

    .line 881
    .local v3, "scrimOpacity":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 882
    invoke-virtual {p0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget v2, v6, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    .line 883
    .local v2, "onscreen":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 885
    .end local v2    # "onscreen":F
    :cond_0
    iput v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimOpacity:F

    .line 887
    iget-boolean v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->isFrameRefreshControlEnabled:Z

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isEnoughTimeAfterLastCompute()Z

    move-result v6

    if-nez v6, :cond_1

    .line 889
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getComputeScrollSleepDuration()J

    move-result-wide v4

    .line 890
    .local v4, "sleepDuration":J
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    .end local v4    # "sleepDuration":J
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v6, v8}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->continueSettling(Z)Z

    move-result v6

    iget-object v7, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v7, v8}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->continueSettling(Z)Z

    move-result v7

    or-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 898
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->postInvalidateOnAnimation()V

    .line 901
    :cond_2
    return-void

    .line 891
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public disableAnimationForNextAction()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1877
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->disableScrollAnimation(I)V

    .line 1878
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->disableScrollAnimation(I)V

    .line 1879
    return-void
.end method

.method protected disableDrawer()V
    .locals 1

    .prologue
    .line 1859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerDisabled:Z

    .line 1860
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 554
    .local v1, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    iget-boolean v3, v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v3, :cond_2

    .line 555
    iput-boolean v4, v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 556
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    invoke-interface {v3, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 562
    :cond_0
    invoke-virtual {p0, v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 564
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 567
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 573
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 575
    .local v2, "rootView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 576
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 580
    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "rootView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 584
    .local v1, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    iget-boolean v2, v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    if-nez v2, :cond_2

    .line 585
    iput-boolean v3, v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 586
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 592
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 593
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 594
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 597
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 600
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 601
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 603
    .end local v0    # "content":Landroid/view/View;
    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 606
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 609
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getHeight()I

    move-result v18

    .line 952
    .local v18, "height":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    .line 953
    .local v17, "drawingContent":Z
    const/4 v13, 0x0

    .local v13, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v14

    .line 955
    .local v14, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 956
    .local v21, "restoreCount":I
    if-eqz v17, :cond_4

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v10

    .line 958
    .local v10, "childCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    .line 959
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 960
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/component/slidemenu/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    .line 958
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 966
    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 967
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    .line 968
    .local v27, "vright":I
    move/from16 v0, v27

    if-le v0, v13, :cond_0

    move/from16 v13, v27

    goto :goto_1

    .line 970
    .end local v27    # "vright":I
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 971
    .local v26, "vleft":I
    move/from16 v0, v26

    if-ge v0, v14, :cond_0

    move/from16 v14, v26

    goto :goto_1

    .line 974
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "vleft":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 976
    .end local v10    # "childCount":I
    .end local v19    # "i":I
    :cond_4
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    .line 977
    .local v22, "result":Z
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 979
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-eqz v17, :cond_6

    .line 980
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    .line 981
    .local v9, "baseAlpha":I
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 982
    .local v20, "imag":I
    shl-int/lit8 v2, v20, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v15, v2, v3

    .line 983
    .local v15, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 985
    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1008
    .end local v9    # "baseAlpha":I
    .end local v15    # "color":I
    .end local v20    # "imag":I
    :cond_5
    :goto_2
    return v22

    .line 986
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 988
    .local v23, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    .line 989
    .local v12, "childRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 990
    .local v16, "drawerPeekDistance":I
    const/4 v2, 0x0

    int-to-float v3, v12

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 992
    .local v8, "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v12, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 996
    .end local v8    # "alpha":F
    .end local v12    # "childRight":I
    .end local v16    # "drawerPeekDistance":I
    .end local v23    # "shadowWidth":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 998
    .restart local v23    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 999
    .local v11, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v2

    sub-int v24, v2, v11

    .line 1000
    .local v24, "showing":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1001
    .restart local v16    # "drawerPeekDistance":I
    const/4 v2, 0x0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1003
    .restart local v8    # "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method protected enableDrawer()V
    .locals 1

    .prologue
    .line 1867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerDisabled:Z

    .line 1868
    return-void
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getLayoutDirection()I

    move-result v5

    invoke-static {p1, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    .line 671
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v3

    .line 672
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 673
    invoke-virtual {p0, v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 674
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    .line 675
    .local v2, "childAbsGravity":I
    and-int/lit8 v5, v2, 0x7

    if-ne v5, v0, :cond_0

    .line 679
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :goto_1
    return-object v1

    .line 672
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v1

    .line 641
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 642
    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 643
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget-boolean v3, v3, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v3, :cond_0

    .line 647
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 641
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1351
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1370
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1356
    instance-of v0, p1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    check-cast p1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 2
    .param p1, "edgeGravity"    # I

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 452
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 453
    iget v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLockModeLeft:I

    .line 457
    :goto_0
    return v1

    .line 454
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 455
    iget v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 457
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 470
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 471
    iget v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLockModeLeft:I

    .line 475
    :goto_0
    return v1

    .line 472
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 473
    iget v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 475
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "edgeGravity"    # I

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 509
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 514
    :goto_0
    return-object v1

    .line 511
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0

    .line 514
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget v0, v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->gravity:I

    .line 631
    .local v0, "gravity":I
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1300
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1301
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    .line 1304
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    return v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget v1, v2, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->gravity:I

    .line 1017
    .local v1, "gravity":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1019
    .local v0, "absGravity":I
    and-int/lit8 v2, v0, 0x7

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1331
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1332
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    .line 1335
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    .line 1316
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    .line 652
    .local v2, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 653
    .local v4, "width":I
    int-to-float v5, v4

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 654
    .local v3, "oldPos":I
    int-to-float v5, v4

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 655
    .local v1, "newPos":I
    sub-int v0, v1, v3

    .line 657
    .local v0, "dx":I
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0    # "dx":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 660
    return-void

    .line 657
    .restart local v0    # "dx":I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 706
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mFirstLayout:Z

    .line 708
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mFirstLayout:Z

    .line 702
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1026
    iget-boolean v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerDisabled:Z

    if-eqz v8, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return v6

    .line 1031
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1034
    .local v0, "action":I
    iget-object v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v8, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    iget-object v9, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v9, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int v2, v8, v9

    .line 1037
    .local v2, "interceptForDrag":Z
    const/4 v3, 0x0

    .line 1039
    .local v3, "interceptForTap":Z
    packed-switch v0, :pswitch_data_0

    .line 1071
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v8, :cond_0

    :cond_3
    move v6, v7

    goto :goto_0

    .line 1041
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1042
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1043
    .local v5, "y":F
    iput v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInitialMotionX:F

    .line 1044
    iput v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInitialMotionY:F

    .line 1045
    iget v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1047
    const/4 v3, 0x1

    .line 1049
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1050
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildrenCanceledTouch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1072
    .end local v0    # "action":I
    .end local v2    # "interceptForDrag":Z
    .end local v3    # "interceptForTap":Z
    .end local v4    # "x":F
    .end local v5    # "y":F
    :catch_0
    move-exception v1

    .line 1073
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1056
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":I
    .restart local v2    # "interceptForDrag":Z
    .restart local v3    # "interceptForTap":Z
    :pswitch_1
    :try_start_1
    iget-object v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1057
    iget-object v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1058
    iget-object v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightCallback:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_1

    .line 1065
    :pswitch_2
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawers(Z)V

    .line 1066
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1067
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildrenCanceledTouch:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1039
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1405
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1407
    const/4 v0, 0x1

    .line 1409
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1414
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1415
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1416
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawers()V

    .line 1419
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1421
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :goto_0
    return v1

    .line 1419
    .restart local v0    # "visibleDrawer":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1421
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 788
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInLayout:Z

    .line 789
    sub-int v17, p4, p2

    .line 790
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v6

    .line 791
    .local v6, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_9

    .line 792
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 794
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 791
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 798
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 800
    .local v13, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 801
    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 805
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 806
    .local v10, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 810
    .local v7, "childHeight":I
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 811
    neg-int v0, v10

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v18, v19

    .line 812
    .local v8, "childLeft":I
    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 818
    .local v14, "newOffset":F
    :goto_2
    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_5

    const/4 v4, 0x1

    .line 820
    .local v4, "changeOffset":Z
    :goto_3
    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0x70

    .line 822
    .local v16, "vgrav":I
    sparse-switch v16, :sswitch_data_0

    .line 825
    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 856
    :goto_4
    if-eqz v4, :cond_3

    .line 857
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 860
    :cond_3
    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    const/4 v15, 0x0

    .line 861
    .local v15, "newVisibility":I
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    .line 862
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 814
    .end local v4    # "changeOffset":Z
    .end local v8    # "childLeft":I
    .end local v14    # "newOffset":F
    .end local v15    # "newVisibility":I
    .end local v16    # "vgrav":I
    :cond_4
    int-to-float v0, v10

    move/from16 v18, v0

    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 815
    .restart local v8    # "childLeft":I
    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14    # "newOffset":F
    goto :goto_2

    .line 818
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 831
    .restart local v4    # "changeOffset":Z
    .restart local v16    # "vgrav":I
    :sswitch_0
    sub-int v11, p5, p3

    .line 832
    .local v11, "height":I
    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 840
    .end local v11    # "height":I
    :sswitch_1
    sub-int v11, p5, p3

    .line 841
    .restart local v11    # "height":I
    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    .line 845
    .local v9, "childTop":I
    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    .line 846
    iget v9, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->topMargin:I

    .line 850
    :cond_6
    :goto_6
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 847
    :cond_7
    add-int v18, v9, v7

    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 848
    iget v0, v13, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_6

    .line 860
    .end local v9    # "childTop":I
    .end local v11    # "height":I
    :cond_8
    const/4 v15, 0x4

    goto :goto_5

    .line 866
    .end local v4    # "changeOffset":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    .end local v14    # "newOffset":F
    .end local v16    # "vgrav":I
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInLayout:Z

    .line 867
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/component/slidemenu/DrawerLayout;->mFirstLayout:Z

    .line 868
    return-void

    .line 822
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 712
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 713
    .local v15, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 714
    .local v11, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 715
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 717
    .local v12, "heightSize":I
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-eq v11, v0, :cond_2

    .line 718
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 723
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 724
    const/high16 v15, 0x40000000    # 2.0f

    .line 729
    :cond_1
    :goto_0
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    .line 730
    const/high16 v11, 0x40000000    # 2.0f

    .line 742
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setMeasuredDimension(II)V

    .line 745
    const/4 v10, 0x0

    .line 746
    .local v10, "foundDrawers":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v4

    .line 747
    .local v4, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v4, :cond_a

    .line 748
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 750
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 747
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 725
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v10    # "foundDrawers":I
    .end local v13    # "i":I
    :cond_3
    if-nez v15, :cond_1

    .line 726
    const/high16 v15, 0x40000000    # 2.0f

    .line 727
    const/16 v16, 0x12c

    goto :goto_0

    .line 732
    :cond_4
    if-nez v11, :cond_2

    .line 733
    const/high16 v11, 0x40000000    # 2.0f

    .line 734
    const/16 v12, 0x12c

    goto :goto_1

    .line 737
    :cond_5
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 754
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childCount":I
    .restart local v10    # "foundDrawers":I
    .restart local v13    # "i":I
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 756
    .local v14, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 758
    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 760
    .local v7, "contentWidthSpec":I
    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 762
    .local v6, "contentHeightSpec":I
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 763
    .end local v6    # "contentHeightSpec":I
    .end local v7    # "contentWidthSpec":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 764
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v17

    and-int/lit8 v5, v17, 0x7

    .line 766
    .local v5, "childGravity":I
    and-int v17, v10, v5

    if-eqz v17, :cond_8

    .line 767
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Child drawer has absolute gravity "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but this "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "DrawerLayout"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " already has a "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "drawer view along that edge"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 771
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v17, v0

    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 774
    .local v9, "drawerWidthSpec":I
    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v14, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v8

    .line 777
    .local v8, "drawerHeightSpec":I
    invoke-virtual {v3, v9, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 779
    .end local v5    # "childGravity":I
    .end local v8    # "drawerHeightSpec":I
    .end local v9    # "drawerWidthSpec":I
    :cond_9
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Child "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 784
    .end local v3    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_a
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1426
    move-object v0, p1

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;

    .line 1427
    .local v0, "ss":Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1429
    iget v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v2, :cond_0

    .line 1430
    iget v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1431
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1432
    invoke-virtual {p0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1436
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_0
    iget v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerLockMode(II)V

    .line 1437
    iget v2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerLockMode(II)V

    .line 1438
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1442
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 1444
    .local v5, "superState":Landroid/os/Parcelable;
    new-instance v4, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;

    invoke-direct {v4, v5}, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1446
    .local v4, "ss":Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1447
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1448
    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1449
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1447
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1453
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 1454
    .local v3, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    iget-boolean v6, v3, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v6, :cond_0

    .line 1455
    iget v6, v3, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->gravity:I

    iput v6, v4, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1461
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_2
    iget v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLockModeLeft:I

    iput v6, v4, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1462
    iget v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLockModeRight:I

    iput v6, v4, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->lockModeRight:I

    .line 1464
    return-object v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1082
    iget-boolean v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerDisabled:Z

    if-eqz v11, :cond_0

    .line 1083
    const/4 v8, 0x0

    .line 1137
    :goto_0
    return v8

    .line 1087
    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v11, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1088
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v11, p1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1090
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1091
    .local v0, "action":I
    const/4 v8, 0x1

    .line 1093
    .local v8, "wantTouchEvents":Z
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1095
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1096
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 1097
    .local v10, "y":F
    iput v9, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInitialMotionX:F

    .line 1098
    iput v10, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInitialMotionY:F

    .line 1099
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1100
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildrenCanceledTouch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1135
    .end local v0    # "action":I
    .end local v8    # "wantTouchEvents":Z
    .end local v9    # "x":F
    .end local v10    # "y":F
    :catch_0
    move-exception v3

    .line 1136
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1137
    const/4 v8, 0x0

    goto :goto_0

    .line 1105
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":I
    .restart local v8    # "wantTouchEvents":Z
    :pswitch_2
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1106
    .restart local v9    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 1107
    .restart local v10    # "y":F
    const/4 v5, 0x1

    .line 1108
    .local v5, "peekingOnly":Z
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    float-to-int v12, v9

    float-to-int v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1109
    .local v7, "touchedView":Landroid/view/View;
    if-eqz v7, :cond_1

    invoke-virtual {p0, v7}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1110
    iget v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInitialMotionX:F

    sub-float v1, v9, v11

    .line 1111
    .local v1, "dx":F
    iget v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInitialMotionY:F

    sub-float v2, v10, v11

    .line 1112
    .local v2, "dy":F
    iget-object v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v11}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->getTouchSlop()I

    move-result v6

    .line 1113
    .local v6, "slop":I
    mul-float v11, v1, v1

    mul-float v12, v2, v2

    add-float/2addr v11, v12

    mul-int v12, v6, v6

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 1115
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v4

    .line 1116
    .local v4, "openDrawer":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1117
    invoke-virtual {p0, v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    const/4 v5, 0x1

    .line 1121
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "openDrawer":Landroid/view/View;
    .end local v6    # "slop":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawers(Z)V

    .line 1122
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_0

    .line 1117
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v4    # "openDrawer":Landroid/view/View;
    .restart local v6    # "slop":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1127
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "openDrawer":Landroid/view/View;
    .end local v5    # "peekingOnly":Z
    .end local v6    # "slop":I
    .end local v7    # "touchedView":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawers(Z)V

    .line 1128
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1129
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mChildrenCanceledTouch:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 1225
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1226
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1230
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1231
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 1199
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1203
    :cond_0
    iget-boolean v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1204
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 1205
    .local v0, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    .line 1206
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1215
    .end local v0    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 1216
    return-void

    .line 1208
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1209
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1211
    :cond_2
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1146
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1148
    iput-boolean p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1149
    if-eqz p1, :cond_0

    .line 1150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawers(Z)V

    .line 1152
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 873
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 875
    :cond_0
    return-void
.end method

.method public setDrawerListener(Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    .line 345
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .prologue
    .line 361
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerLockMode(II)V

    .line 362
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerLockMode(II)V

    .line 363
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 6
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .prologue
    const/4 v5, 0x3

    .line 385
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getLayoutDirection()I

    move-result v4

    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 387
    .local v0, "absGravity":I
    if-ne v0, v5, :cond_3

    .line 388
    iput p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLockModeLeft:I

    .line 392
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 394
    if-ne v0, v5, :cond_4

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    .line 395
    .local v1, "helper":Lcom/lenovo/component/slidemenu/ViewDragHelper;
    :goto_1
    invoke-virtual {v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->cancel()V

    .line 397
    .end local v1    # "helper":Lcom/lenovo/component/slidemenu/ViewDragHelper;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 412
    :cond_2
    :goto_2
    return-void

    .line 389
    :cond_3
    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    .line 390
    iput p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 394
    :cond_4
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    goto :goto_1

    .line 399
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    .line 400
    .local v3, "toOpen":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 401
    invoke-virtual {p0, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 405
    .end local v3    # "toOpen":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 406
    .local v2, "toClose":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 407
    invoke-virtual {p0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 4
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;

    .prologue
    .line 433
    invoke-virtual {p0, p2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drawer with appropriate layout_gravity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    iget v0, v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->gravity:I

    .line 438
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerLockMode(II)V

    .line 439
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 325
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 306
    .local v0, "absGravity":I
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 307
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 308
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 310
    :cond_0
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 311
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 312
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 314
    :cond_1
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 491
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 492
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 494
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 613
    .local v0, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    iget v1, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    iput p2, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setEfficiencyControlEnabled(ZLandroid/content/Context;)V
    .locals 0
    .param p1, "isEnable"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1890
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setFrameRefreshControlEnabled(Z)V

    .line 1891
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setAnimationInterpolatorControlEnabled(ZLandroid/content/Context;)V

    .line 1892
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mScrimColor:I

    .line 334
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 335
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 7
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 522
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mLeftDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v4}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->getViewDragState()I

    move-result v0

    .line 523
    .local v0, "leftState":I
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mRightDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v4}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->getViewDragState()I

    move-result v2

    .line 526
    .local v2, "rightState":I
    if-eq v0, v5, :cond_0

    if-ne v2, v5, :cond_3

    .line 527
    :cond_0
    const/4 v3, 0x1

    .line 534
    .local v3, "state":I
    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 535
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 536
    .local v1, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    iget v4, v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    .line 537
    invoke-virtual {p0, p3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 543
    .end local v1    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_1
    :goto_1
    iget v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mDrawerState:I

    if-eq v3, v4, :cond_2

    .line 544
    iput v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mDrawerState:I

    .line 546
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    if-eqz v4, :cond_2

    .line 547
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout;->mListener:Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;

    invoke-interface {v4, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 550
    :cond_2
    return-void

    .line 528
    .end local v3    # "state":I
    :cond_3
    if-eq v0, v6, :cond_4

    if-ne v2, v6, :cond_5

    .line 529
    :cond_4
    const/4 v3, 0x2

    .restart local v3    # "state":I
    goto :goto_0

    .line 531
    .end local v3    # "state":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "state":I
    goto :goto_0

    .line 538
    .restart local v1    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_6
    iget v4, v1, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 539
    invoke-virtual {p0, p3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1
.end method
