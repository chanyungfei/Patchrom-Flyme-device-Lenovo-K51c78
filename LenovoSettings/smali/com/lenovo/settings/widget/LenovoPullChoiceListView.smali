.class public Lcom/lenovo/settings/widget/LenovoPullChoiceListView;
.super Landroid/widget/ListView;
.source "LenovoPullChoiceListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_TEXT_SIZE:I = 0x10

.field private static final MIN_ALPHA:F = 0.5f

.field private static final MIN_TEXT_SIZE:I = 0x8

.field private static final PULL_DOWN_SHOW_RATE:I = 0x5

.field private static final RATIO:I = 0x3

.field private static final STATE_CHOICE:I = 0x1

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_PROCESS:I = 0x2

.field private static final STATE_PULL:I = 0x0

.field private static final STATE_TIPS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LenovoPullChoiceListView"


# instance fields
.field private final DEFAULT_LONG_PRESS_TIMEOUT:I

.field private isLongPress:Z

.field private mChoiceY:I

.field private mCurHeadViewHeight:I

.field private mCurrentTime:J

.field private mEnterYVelocity:I

.field private mFirstItemIndex:I

.field private mForbitPull:Z

.field private mHeadContentHeight:I

.field private mHeadTextView:Landroid/widget/TextView;

.field private mHeadView:Landroid/view/View;

.field private mInitialTime:J

.field private mIsRecored:Z

.field private mIsRefreshable:Z

.field private mIsScrolling:Z

.field private mIsSysCancel:Z

.field private mMaxFlingVelocity:I

.field private mStartX:I

.field private mStartY:I

.field private mState:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;

.field private refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRefreshable:Z

    .line 88
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mEnterYVelocity:I

    .line 92
    iput-boolean v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->isLongPress:Z

    .line 93
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->DEFAULT_LONG_PRESS_TIMEOUT:I

    .line 96
    iput-boolean v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mForbitPull:Z

    .line 97
    iput-boolean v2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsSysCancel:Z

    .line 99
    iput v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurHeadViewHeight:I

    .line 107
    invoke-direct {p0, p1}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->init(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-boolean v2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRefreshable:Z

    .line 88
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mEnterYVelocity:I

    .line 92
    iput-boolean v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->isLongPress:Z

    .line 93
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->DEFAULT_LONG_PRESS_TIMEOUT:I

    .line 96
    iput-boolean v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mForbitPull:Z

    .line 97
    iput-boolean v2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsSysCancel:Z

    .line 99
    iput v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurHeadViewHeight:I

    .line 117
    invoke-direct {p0, p1}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    .prologue
    .line 27
    iget v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/widget/LenovoPullChoiceListView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    .prologue
    .line 27
    iget v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/widget/LenovoPullChoiceListView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->onRefresh()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 339
    iget v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 345
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;->enterChoice()V

    goto :goto_0

    .line 350
    :pswitch_1
    iput v2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mChoiceY:I

    .line 354
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;->enterPull()V

    goto :goto_0

    .line 360
    :pswitch_2
    iput v2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mChoiceY:I

    .line 361
    iget v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    invoke-direct {p0, v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    .line 362
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;->enterProcess()V

    goto :goto_0

    .line 368
    :pswitch_3
    iput v2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mChoiceY:I

    .line 369
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 370
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 371
    invoke-direct {p0, v2}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    goto :goto_0

    .line 375
    :pswitch_4
    iput v2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mChoiceY:I

    .line 376
    iget v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    invoke-direct {p0, v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    .line 377
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVibrator:Landroid/os/Vibrator;

    .line 126
    invoke-virtual {p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    .line 128
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 130
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 131
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mMaxFlingVelocity:I

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mTouchSlop:I

    .line 133
    invoke-virtual {p0, p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 135
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setOverScrollMode(I)V

    .line 136
    return-void
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;->onRefresh()V

    .line 403
    :cond_0
    return-void
.end method

.method private recoveryToBack(I)V
    .locals 7
    .param p1, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 441
    const-wide v2, 0x4072c00000000000L    # 300.0

    int-to-double v4, p1

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 442
    .local v0, "duration":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v6

    const/4 v3, 0x1

    aput v6, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 443
    .local v1, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 444
    if-lez v0, :cond_0

    int-to-long v2, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 445
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 446
    new-instance v2, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$1;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$1;-><init>(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    new-instance v2, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;-><init>(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 491
    return-void

    .line 444
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 329
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 332
    :cond_0
    return-void
.end method

.method private setHeaderViewHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 428
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 429
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    if-nez p1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 436
    :cond_0
    iput p1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurHeadViewHeight:I

    .line 437
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadView:Landroid/view/View;

    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    .line 423
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 424
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 425
    return-void
.end method

.method public onRefreshComplete()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 396
    invoke-direct {p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    .line 397
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 144
    iput p2, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mFirstItemIndex:I

    .line 145
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mForbitPull:Z

    if-eqz v13, :cond_1

    .line 158
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 323
    :goto_0
    return v13

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRefreshable:Z

    if-eqz v13, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_2

    .line 165
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 323
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto :goto_0

    .line 171
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurrentTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mInitialTime:J

    .line 172
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->isLongPress:Z

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartY:I

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartX:I

    .line 175
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mFirstItemIndex:I

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRecored:Z

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 177
    const-string v13, "LenovoPullChoiceListView"

    const-string v14, "Pull begin!!!"

    invoke-static {v13, v14}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    .line 180
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRecored:Z

    goto :goto_1

    .line 188
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsSysCancel:Z

    if-nez v13, :cond_4

    .line 189
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsSysCancel:Z

    goto :goto_1

    .line 192
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->isLongPress:Z

    .line 193
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRecored:Z

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsScrolling:Z

    if-eqz v13, :cond_8

    .line 194
    :cond_5
    const-string v13, "LenovoPullChoiceListView"

    const-string v14, "pull finish or cancel!"

    invoke-static {v13, v14}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    if-nez v13, :cond_6

    .line 196
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurHeadViewHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->recoveryToBack(I)V

    .line 199
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_7

    .line 200
    const-string v13, "LenovoPullChoiceListView"

    const-string v14, "nani!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v13, v14}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurHeadViewHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->recoveryToBack(I)V

    .line 204
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 205
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    .line 207
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurHeadViewHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->recoveryToBack(I)V

    .line 210
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRecored:Z

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 217
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRecored:Z

    if-eqz v13, :cond_3

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v9, v13

    .line 219
    .local v9, "tempY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartX:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v5, v13

    .line 220
    .local v5, "mDistanceX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartY:I

    sub-int v6, v9, v13

    .line 222
    .local v6, "mDistanceY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_a

    .line 223
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    if-le v6, v13, :cond_9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mTouchSlop:I

    if-le v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->isLongPress:Z

    if-nez v13, :cond_9

    .line 226
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setAlpha(F)V

    .line 229
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    .line 231
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsSysCancel:Z

    .line 232
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 233
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    or-int/lit8 v13, v13, 0x3

    invoke-virtual {v2, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_1

    .line 238
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurrentTime:J

    .line 239
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurrentTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mInitialTime:J

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .line 240
    .local v10, "time_out":J
    const-wide/16 v14, 0x1f4

    cmp-long v13, v10, v14

    if-lez v13, :cond_3

    .line 241
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->isLongPress:Z

    .line 242
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mCurrentTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mInitialTime:J

    goto/16 :goto_1

    .line 245
    .end local v10    # "time_out":J
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    if-nez v13, :cond_14

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_b

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_b
    const/4 v12, 0x0

    .line 251
    .local v12, "v_y":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v13, :cond_c

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mMaxFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v13

    float-to-int v12, v13

    .line 257
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartY:I

    sub-int v13, v9, v13

    div-int/lit8 v13, v13, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    if-lt v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mEnterYVelocity:I

    if-ge v12, v13, :cond_e

    .line 259
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    .line 274
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartY:I

    sub-int v13, v9, v13

    div-int/lit8 v8, v13, 0x3

    .line 275
    .local v8, "nShowHeight":I
    if-gez v8, :cond_10

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setAlpha(F)V

    .line 279
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    goto/16 :goto_1

    .line 261
    .end local v8    # "nShowHeight":I
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartY:I

    sub-int v13, v9, v13

    if-gtz v13, :cond_f

    .line 263
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    goto :goto_2

    .line 265
    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mEnterYVelocity:I

    if-le v12, v13, :cond_d

    .line 266
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    .line 269
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsScrolling:Z

    .line 270
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRecored:Z

    .line 271
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 282
    .restart local v8    # "nShowHeight":I
    :cond_10
    int-to-float v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 284
    .local v4, "fCurrentTextSizeScale":F
    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v7, v13

    .line 286
    .local v7, "nCurrentTextSize":I
    const/16 v13, 0x10

    if-le v7, v13, :cond_11

    const/16 v7, 0x10

    .line 288
    :cond_11
    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v14, v4

    add-float v3, v13, v14

    .line 290
    .local v3, "fAlapha":F
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_12

    const/high16 v3, 0x3f800000    # 1.0f

    .line 291
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/4 v14, 0x2

    int-to-float v15, v7

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 292
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    if-le v8, v13, :cond_13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 295
    const-string v13, "pudding"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "height:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "nCurrentTextSize:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "fAlapha:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_13
    move v13, v8

    .line 292
    goto :goto_3

    .line 302
    .end local v3    # "fAlapha":F
    .end local v4    # "fCurrentTextSizeScale":F
    .end local v7    # "nCurrentTextSize":I
    .end local v8    # "nShowHeight":I
    .end local v12    # "v_y":I
    :cond_14
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 303
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mChoiceY:I

    if-nez v13, :cond_15

    .line 304
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mChoiceY:I

    .line 306
    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mChoiceY:I

    sub-int v14, v9, v14

    div-int/lit8 v14, v14, 0x5

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V

    .line 308
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartY:I

    sub-int v13, v9, v13

    if-gtz v13, :cond_17

    .line 309
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    .line 316
    :cond_16
    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 311
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mStartY:I

    sub-int v13, v9, v13

    div-int/lit8 v13, v13, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I

    if-ge v13, v14, :cond_16

    .line 312
    const-string v13, "LenovoPullChoiceListView"

    const-string v14, "enter pull"

    invoke-static {v13, v14}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V

    goto :goto_4

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPullable(Z)V
    .locals 1
    .param p1, "pullable"    # Z

    .prologue
    .line 335
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mForbitPull:Z

    .line 336
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRefreshSupport(Z)V
    .locals 0
    .param p1, "IsRefreshable"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mIsRefreshable:Z

    .line 392
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    const/16 v3, 0x11

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 406
    iput-object p1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    .line 407
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 410
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 411
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 413
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 414
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 416
    iget-object v1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 417
    return-void
.end method

.method public setonRefreshListener(Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;)V
    .locals 0
    .param p1, "refreshListener"    # Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->refreshListener:Lcom/lenovo/settings/widget/LenovoPullChoiceListView$OnRefreshListener;

    .line 388
    return-void
.end method
