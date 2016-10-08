.class public Landroid/widget/TranslationViewHelper;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TranslationViewHelper$7;,
        Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;,
        Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;,
        Landroid/widget/TranslationViewHelper$TranslationServiceHelper;,
        Landroid/widget/TranslationViewHelper$PopupWindowState;
    }
.end annotation


# static fields
.field private static final CHECK_CONNECTION_SLEEP_DURATION:J = 0x14L

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final ERROR_TYPE_NO_NETWORK:I = 0x0

.field private static final ERROR_TYPE_OTHER:I = 0x1

.field private static final FIXED_X_NOT_SET:I = -0x1

.field private static final PERFROM_TIMER_TASK_NOW:J = 0x0L

.field private static final POPUP_WINDOW_NOT_MOVE:I = -0x1

.field private static final QUERY_TIMEOUT_DURATION:J = 0x1388L

.field private static final TAG:Ljava/lang/String;

.field private static volatile isAlwaysAllowNetworkTraffic:Z


# instance fields
.field private volatile isAllowNetworkTrafficThisTime:Z

.field private mAnchor:Landroid/view/View;

.field private mAnchorLocationOffsetBetweenScreenAndWindow:[I

.field private mContext:Landroid/content/Context;

.field private mCurrentTranslatePopupWindowState:Landroid/widget/TranslationViewHelper$PopupWindowState;

.field private mDismissListenerOuter:Landroid/widget/PopupWindow$OnDismissListener;

.field private mErrorX:I

.field private mErrorY:I

.field private mFixedX:I

.field private mHandler:Landroid/os/Handler;

.field private mParentXMiddle:I

.field private mParentYBottom:I

.field private mParentYTop:I

.field private mPendingX:I

.field private mPendingY:I

.field private mPopupWindowLayout:Landroid/widget/LinearLayout;

.field private mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

.field private mPronunciationStr:Ljava/lang/String;

.field private mPronunciationView:Landroid/widget/TextView;

.field private mResultX:I

.field private mResultY:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectHandleHeight:I

.field private mStatusBarHeight:I

.field private mTimer:Ljava/util/Timer;

.field private mTranslateErrorView:Landroid/widget/LinearLayout;

.field private mTranslatePendingView:Landroid/widget/LinearLayout;

.field private mTranslatePopupWindow:Landroid/widget/PopupWindow;

.field private mTranslateResultView:Landroid/widget/LinearLayout;

.field private mTranslationJSONHelper:Landroid/widget/TranslationJSONHelper;

.field private mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

.field private mTranslationStr:Ljava/lang/String;

.field private mTranslationView:Landroid/widget/TextView;

.field private mWordToTranslate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Landroid/widget/TranslationViewHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/TranslationViewHelper;->isAlwaysAllowNetworkTraffic:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TranslationViewHelper;->isAllowNetworkTrafficThisTime:Z

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TranslationViewHelper;->mFixedX:I

    .line 261
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;

    .line 263
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mHandler:Landroid/os/Handler;

    .line 272
    iput-object p1, p0, Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;

    .line 273
    new-instance v0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    invoke-direct {v0, p0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;-><init>(Landroid/widget/TranslationViewHelper;)V

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    .line 275
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->setScreenSize()V

    .line 276
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/TranslationViewHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->resetTimer()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TranslationViewHelper;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mDismissListenerOuter:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/TranslationViewHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mPendingX:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/TranslationViewHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mPendingY:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/TranslationViewHelper;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TranslationViewHelper;->showTranslatePending(II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/TranslationViewHelper;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/TranslationViewHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mErrorX:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/TranslationViewHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mErrorY:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/TranslationViewHelper;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TranslationViewHelper;->showTranslateError(II)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/TranslationViewHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->showTranslateResult()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TranslationViewHelper;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Landroid/widget/TranslationViewHelper;->isAlwaysAllowNetworkTraffic:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 46
    sput-boolean p0, Landroid/widget/TranslationViewHelper;->isAlwaysAllowNetworkTraffic:Z

    return p0
.end method

.method static synthetic access$2200(Landroid/widget/TranslationViewHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TranslationViewHelper;->onTranslationResultReturned(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TranslationViewHelper;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TranslationViewHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TranslationViewHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/TranslationViewHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/widget/TranslationViewHelper;->isAllowNetworkTrafficThisTime:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/TranslationViewHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->startTranslationQuery()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/TranslationViewHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mWordToTranslate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TranslationViewHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->startQueryTimeoutThread()V

    return-void
.end method

.method private calculateErrorCoordinate(III)V
    .locals 9
    .param p1, "parentXMiddle"    # I
    .param p2, "parentYTop"    # I
    .param p3, "parentYBottom"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 558
    iget-object v5, p0, Landroid/widget/TranslationViewHelper;->mTranslateErrorView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Landroid/widget/TranslationViewHelper;->getMeasuredViewSize(Landroid/view/View;)[I

    move-result-object v4

    .line 559
    .local v4, "errorWindowSize":[I
    const/4 v5, 0x3

    new-array v2, v5, [I

    aput p1, v2, v7

    aput p2, v2, v8

    const/4 v5, 0x2

    aput p3, v2, v5

    .line 560
    .local v2, "anchor":[I
    invoke-direct {p0, v2, v4}, Landroid/widget/TranslationViewHelper;->whereShallMeShow([I[I)[I

    move-result-object v3

    .line 562
    .local v3, "errorWindowCoordinate":[I
    const/4 v0, 0x0

    .local v0, "ERROR_X":I
    const/4 v1, 0x1

    .line 563
    .local v1, "ERROR_Y":I
    iget v5, p0, Landroid/widget/TranslationViewHelper;->mFixedX:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    aget v5, v3, v7

    :goto_0
    iput v5, p0, Landroid/widget/TranslationViewHelper;->mErrorX:I

    .line 564
    aget v5, v3, v8

    iput v5, p0, Landroid/widget/TranslationViewHelper;->mErrorY:I

    .line 565
    return-void

    .line 563
    :cond_0
    iget v5, p0, Landroid/widget/TranslationViewHelper;->mFixedX:I

    goto :goto_0
.end method

.method private calculateOffsetBetweenInScreenAndInWindow(Landroid/view/View;)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 355
    new-array v2, v4, [I

    .line 356
    .local v2, "anchorLocationInWindow":[I
    new-array v3, v4, [I

    .line 357
    .local v3, "anchorLocationOnScreen":[I
    new-array v4, v4, [I

    iput-object v4, p0, Landroid/widget/TranslationViewHelper;->mAnchorLocationOffsetBetweenScreenAndWindow:[I

    .line 359
    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 361
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 363
    const/4 v0, 0x0

    .local v0, "COORDINATE_X":I
    const/4 v1, 0x1

    .line 364
    .local v1, "COORDINATE_Y":I
    iget-object v4, p0, Landroid/widget/TranslationViewHelper;->mAnchorLocationOffsetBetweenScreenAndWindow:[I

    aget v5, v3, v7

    aget v6, v2, v7

    sub-int/2addr v5, v6

    aput v5, v4, v7

    .line 366
    iget-object v4, p0, Landroid/widget/TranslationViewHelper;->mAnchorLocationOffsetBetweenScreenAndWindow:[I

    aget v5, v3, v8

    aget v6, v2, v8

    sub-int/2addr v5, v6

    aput v5, v4, v8

    .line 369
    .end local v0    # "COORDINATE_X":I
    .end local v1    # "COORDINATE_Y":I
    :cond_0
    return-void
.end method

.method private calculatePendingCoordinate(III)V
    .locals 9
    .param p1, "parentXMiddle"    # I
    .param p2, "parentYTop"    # I
    .param p3, "parentYBottom"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 581
    iget-object v5, p0, Landroid/widget/TranslationViewHelper;->mTranslatePendingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Landroid/widget/TranslationViewHelper;->getMeasuredViewSize(Landroid/view/View;)[I

    move-result-object v4

    .line 582
    .local v4, "pendingWindowSize":[I
    const/4 v5, 0x3

    new-array v2, v5, [I

    aput p1, v2, v7

    aput p2, v2, v8

    const/4 v5, 0x2

    aput p3, v2, v5

    .line 583
    .local v2, "anchor":[I
    invoke-direct {p0, v2, v4}, Landroid/widget/TranslationViewHelper;->whereShallMeShow([I[I)[I

    move-result-object v3

    .line 585
    .local v3, "pendingWindowCoordinate":[I
    const/4 v0, 0x0

    .local v0, "PENDING_X":I
    const/4 v1, 0x1

    .line 586
    .local v1, "PENDING_Y":I
    iget v5, p0, Landroid/widget/TranslationViewHelper;->mFixedX:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    aget v5, v3, v7

    :goto_0
    iput v5, p0, Landroid/widget/TranslationViewHelper;->mPendingX:I

    .line 587
    aget v5, v3, v8

    iput v5, p0, Landroid/widget/TranslationViewHelper;->mPendingY:I

    .line 588
    return-void

    .line 586
    :cond_0
    iget v5, p0, Landroid/widget/TranslationViewHelper;->mFixedX:I

    goto :goto_0
.end method

.method private calculateResultCoordinate(III)V
    .locals 9
    .param p1, "parentXMiddle"    # I
    .param p2, "parentYTop"    # I
    .param p3, "parentYBottom"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 604
    iget-object v5, p0, Landroid/widget/TranslationViewHelper;->mTranslateResultView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Landroid/widget/TranslationViewHelper;->getMeasuredViewSize(Landroid/view/View;)[I

    move-result-object v4

    .line 605
    .local v4, "resultWindowSize":[I
    const/4 v5, 0x3

    new-array v2, v5, [I

    aput p1, v2, v7

    aput p2, v2, v8

    const/4 v5, 0x2

    aput p3, v2, v5

    .line 606
    .local v2, "anchor":[I
    invoke-direct {p0, v2, v4}, Landroid/widget/TranslationViewHelper;->whereShallMeShow([I[I)[I

    move-result-object v3

    .line 608
    .local v3, "resultWindowCoordinate":[I
    const/4 v0, 0x0

    .local v0, "RESULT_X":I
    const/4 v1, 0x1

    .line 609
    .local v1, "RESULT_Y":I
    iget v5, p0, Landroid/widget/TranslationViewHelper;->mFixedX:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    aget v5, v3, v7

    :goto_0
    iput v5, p0, Landroid/widget/TranslationViewHelper;->mResultX:I

    .line 610
    aget v5, v3, v8

    iput v5, p0, Landroid/widget/TranslationViewHelper;->mResultY:I

    .line 611
    return-void

    .line 609
    :cond_0
    iget v5, p0, Landroid/widget/TranslationViewHelper;->mFixedX:I

    goto :goto_0
.end method

.method private getDimensionPixelSize(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 639
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getMeasuredViewSize(Landroid/view/View;)[I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x80000000

    .line 624
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 626
    .local v1, "result":[I
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 627
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 630
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TranslationViewHelper;->mPopupWindowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v3, v1, v2

    .line 631
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    aput v3, v1, v2

    .line 632
    return-object v1
.end method

.method private getShowErrorViewTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 943
    new-instance v0, Landroid/widget/TranslationViewHelper$5;

    invoke-direct {v0, p0}, Landroid/widget/TranslationViewHelper$5;-><init>(Landroid/widget/TranslationViewHelper;)V

    .line 959
    .local v0, "result":Ljava/util/TimerTask;
    return-object v0
.end method

.method private getShowResultViewTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 967
    new-instance v0, Landroid/widget/TranslationViewHelper$6;

    invoke-direct {v0, p0}, Landroid/widget/TranslationViewHelper$6;-><init>(Landroid/widget/TranslationViewHelper;)V

    .line 983
    .local v0, "task":Ljava/util/TimerTask;
    return-object v0
.end method

.method private onTranslationResultReturned(Ljava/lang/String;)V
    .locals 6
    .param p1, "resultJSONStr"    # Ljava/lang/String;

    .prologue
    .line 886
    if-eqz p1, :cond_1

    .line 887
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mTranslationJSONHelper:Landroid/widget/TranslationJSONHelper;

    if-nez v2, :cond_0

    .line 888
    new-instance v2, Landroid/widget/TranslationJSONHelper;

    invoke-direct {v2}, Landroid/widget/TranslationJSONHelper;-><init>()V

    iput-object v2, p0, Landroid/widget/TranslationViewHelper;->mTranslationJSONHelper:Landroid/widget/TranslationJSONHelper;

    .line 891
    :cond_0
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mTranslationJSONHelper:Landroid/widget/TranslationJSONHelper;

    iget-object v3, p0, Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Landroid/widget/TranslationJSONHelper;->extract(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 892
    .local v0, "isExtractSuccess":Z
    const/4 v1, 0x0

    .line 893
    .local v1, "timerTask":Ljava/util/TimerTask;
    if-eqz v0, :cond_2

    .line 894
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mTranslationJSONHelper:Landroid/widget/TranslationJSONHelper;

    invoke-virtual {v2}, Landroid/widget/TranslationJSONHelper;->getPronunciationResult()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TranslationViewHelper;->mPronunciationStr:Ljava/lang/String;

    .line 895
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mTranslationJSONHelper:Landroid/widget/TranslationJSONHelper;

    invoke-virtual {v2}, Landroid/widget/TranslationJSONHelper;->getNonPronunciationResult()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TranslationViewHelper;->mTranslationStr:Ljava/lang/String;

    .line 897
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->getShowResultViewTimerTask()Ljava/util/TimerTask;

    move-result-object v1

    .line 902
    :goto_0
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->resetTimer()V

    .line 903
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 905
    .end local v0    # "isExtractSuccess":Z
    .end local v1    # "timerTask":Ljava/util/TimerTask;
    :cond_1
    return-void

    .line 899
    .restart local v0    # "isExtractSuccess":Z
    .restart local v1    # "timerTask":Ljava/util/TimerTask;
    :cond_2
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;

    move-result-object v1

    goto :goto_0
.end method

.method private prepareTranslatePopupWindow(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "translationMenuView"    # Landroid/widget/LinearLayout;

    .prologue
    .line 747
    iput-object p1, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    .line 750
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/widget/TranslationViewHelper$2;

    invoke-direct {v1, p0}, Landroid/widget/TranslationViewHelper$2;-><init>(Landroid/widget/TranslationViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 766
    iput-object p2, p0, Landroid/widget/TranslationViewHelper;->mPopupWindowLayout:Landroid/widget/LinearLayout;

    .line 767
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPopupWindowLayout:Landroid/widget/LinearLayout;

    const v1, 0x90c006f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePendingView:Landroid/widget/LinearLayout;

    .line 768
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPopupWindowLayout:Landroid/widget/LinearLayout;

    const v1, 0x90c006e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslateErrorView:Landroid/widget/LinearLayout;

    .line 769
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPopupWindowLayout:Landroid/widget/LinearLayout;

    const v1, 0x90c006a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslateResultView:Landroid/widget/LinearLayout;

    .line 770
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPopupWindowLayout:Landroid/widget/LinearLayout;

    const v1, 0x90c006b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mPronunciationView:Landroid/widget/TextView;

    .line 771
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPopupWindowLayout:Landroid/widget/LinearLayout;

    const v1, 0x90c006c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationView:Landroid/widget/TextView;

    .line 772
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 773
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->prepareTranslateResultView()V

    .line 774
    return-void
.end method

.method private prepareTranslateResultView()V
    .locals 4

    .prologue
    .line 781
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 782
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mTranslateResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mTranslateResultView:Landroid/widget/LinearLayout;

    const v3, 0x90c006d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 784
    .local v0, "jumpToTranslateAppView":Landroid/view/View;
    new-instance v2, Landroid/widget/TranslationViewHelper$3;

    invoke-direct {v2, p0}, Landroid/widget/TranslationViewHelper$3;-><init>(Landroid/widget/TranslationViewHelper;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    return-void
.end method

.method private resetTimer()V
    .locals 3

    .prologue
    .line 922
    :try_start_0
    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 923
    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 924
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;

    .line 928
    sget-object v1, Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;

    const-string v2, "Translation : resetTimer : Exception has been thrown. check the later log for more information."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setScreenSize()V
    .locals 4

    .prologue
    .line 733
    iget-object v2, p0, Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 734
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 735
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 736
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/widget/TranslationViewHelper;->mScreenWidth:I

    .line 737
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/widget/TranslationViewHelper;->mScreenHeight:I

    .line 738
    return-void
.end method

.method private showTranslateError(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v2, 0x8

    .line 818
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPopupWindowLayout:Landroid/widget/LinearLayout;

    const v1, 0x90c006e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/TranslationViewHelper$4;

    invoke-direct {v1, p0}, Landroid/widget/TranslationViewHelper$4;-><init>(Landroid/widget/TranslationViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePendingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslateErrorView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslateResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 830
    invoke-virtual {p0}, Landroid/widget/TranslationViewHelper;->isTranslatePopupWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->updatePopupWindowPosition()V

    .line 838
    :goto_0
    sget-object v0, Landroid/widget/TranslationViewHelper$PopupWindowState;->Error:Landroid/widget/TranslationViewHelper$PopupWindowState;

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mCurrentTranslatePopupWindowState:Landroid/widget/TranslationViewHelper$PopupWindowState;

    .line 839
    return-void

    .line 835
    :cond_0
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->updatePopupWindowPosition()V

    goto :goto_0
.end method

.method private showTranslatePending(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v2, 0x8

    .line 800
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePendingView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslateErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslateResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 803
    invoke-virtual {p0}, Landroid/widget/TranslationViewHelper;->isTranslatePopupWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->updatePopupWindowPosition()V

    .line 811
    :goto_0
    sget-object v0, Landroid/widget/TranslationViewHelper$PopupWindowState;->Pending:Landroid/widget/TranslationViewHelper$PopupWindowState;

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mCurrentTranslatePopupWindowState:Landroid/widget/TranslationViewHelper$PopupWindowState;

    .line 812
    return-void

    .line 808
    :cond_0
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->updatePopupWindowPosition()V

    goto :goto_0
.end method

.method private showTranslateResult()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 845
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->resetTimer()V

    .line 847
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPronunciationStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mPronunciationStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPronunciationView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPronunciationView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mPronunciationStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    :goto_0
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mTranslationStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mTranslationStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    :goto_1
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePendingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslateErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslateResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 867
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mParentXMiddle:I

    iget v1, p0, Landroid/widget/TranslationViewHelper;->mParentYTop:I

    iget v2, p0, Landroid/widget/TranslationViewHelper;->mParentYBottom:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationViewHelper;->calculateResultCoordinate(III)V

    .line 868
    invoke-virtual {p0}, Landroid/widget/TranslationViewHelper;->isTranslatePopupWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->updatePopupWindowPosition()V

    .line 876
    :goto_2
    sget-object v0, Landroid/widget/TranslationViewHelper$PopupWindowState;->Result:Landroid/widget/TranslationViewHelper$PopupWindowState;

    iput-object v0, p0, Landroid/widget/TranslationViewHelper;->mCurrentTranslatePopupWindowState:Landroid/widget/TranslationViewHelper$PopupWindowState;

    .line 877
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPronunciationView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPronunciationView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 859
    :cond_1
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 873
    :cond_2
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->updatePopupWindowPosition()V

    goto :goto_2
.end method

.method private startQueryTimeoutThread()V
    .locals 4

    .prologue
    .line 913
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->resetTimer()V

    .line 914
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;

    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 915
    return-void
.end method

.method private startTranslationQuery()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->connectToService()V

    .line 440
    new-instance v0, Landroid/widget/TranslationViewHelper$1;

    invoke-direct {v0, p0}, Landroid/widget/TranslationViewHelper$1;-><init>(Landroid/widget/TranslationViewHelper;)V

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$1;->start()V

    .line 542
    return-void
.end method

.method private updatePopupWindowPosition()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

    invoke-interface {v0}, Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;->onUpdate()V

    .line 1183
    :cond_0
    return-void
.end method

.method private whereShallMeShow([I[I)[I
    .locals 22
    .param p1, "anchor"    # [I
    .param p2, "size"    # [I

    .prologue
    .line 660
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 661
    .local v11, "result":[I
    const/4 v6, 0x0

    .local v6, "RESULT_X":I
    const/4 v7, 0x1

    .line 662
    .local v7, "RESULT_Y":I
    const/4 v3, 0x0

    .local v3, "ANCHOR_MIDDLE_X":I
    const/4 v4, 0x1

    .local v4, "ANCHOR_TOP_Y":I
    const/4 v2, 0x2

    .line 663
    .local v2, "ANCHOR_BOTTOM_Y":I
    const/4 v9, 0x0

    .local v9, "SIZE_WIDTH":I
    const/4 v8, 0x1

    .line 665
    .local v8, "SIZE_HEIGHT":I
    const/4 v10, 0x0

    .line 668
    .local v10, "isResultGot":Z
    const/16 v18, 0x0

    aget v18, p1, v18

    const/16 v19, 0x0

    aget v19, p2, v19

    div-int/lit8 v19, v19, 0x2

    sub-int v13, v18, v19

    .line 669
    .local v13, "xLeft":I
    const/16 v18, 0x0

    aget v18, p1, v18

    const/16 v19, 0x0

    aget v19, p2, v19

    div-int/lit8 v19, v19, 0x2

    add-int v14, v18, v19

    .line 671
    .local v14, "xRight":I
    const/16 v18, 0x0

    aget v18, p2, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationViewHelper;->mScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 672
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v11, v18

    .line 691
    :goto_0
    if-nez v10, :cond_0

    .line 692
    const/4 v5, 0x0

    .line 695
    .local v5, "MARGIN_TOP_IN_PIXEL":I
    const/16 v18, 0x1

    aget v18, p1, v18

    const/16 v19, 0x1

    aget v19, p2, v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationViewHelper;->mStatusBarHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int/lit8 v17, v18, 0x0

    .line 696
    .local v17, "yTop":I
    if-ltz v17, :cond_0

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationViewHelper;->mStatusBarHeight:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 699
    .local v15, "y":I
    const/16 v18, 0x1

    aput v15, v11, v18

    .line 700
    const/4 v10, 0x1

    .line 705
    .end local v5    # "MARGIN_TOP_IN_PIXEL":I
    .end local v15    # "y":I
    .end local v17    # "yTop":I
    :cond_0
    if-nez v10, :cond_1

    .line 707
    const/16 v18, 0x2

    aget v18, p1, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationViewHelper;->mSelectHandleHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, p2, v19

    add-int v16, v18, v19

    .line 708
    .local v16, "yBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationViewHelper;->mScreenHeight:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 710
    const/16 v18, 0x1

    aget v18, p2, v18

    sub-int v15, v16, v18

    .line 711
    .restart local v15    # "y":I
    const/16 v18, 0x1

    aput v15, v11, v18

    .line 712
    const/4 v10, 0x1

    .line 717
    .end local v15    # "y":I
    .end local v16    # "yBottom":I
    :cond_1
    if-nez v10, :cond_2

    .line 723
    :cond_2
    const/16 v18, 0x0

    aget v19, v11, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationViewHelper;->mAnchorLocationOffsetBetweenScreenAndWindow:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-int v19, v19, v20

    aput v19, v11, v18

    .line 724
    const/16 v18, 0x1

    aget v19, v11, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationViewHelper;->mAnchorLocationOffsetBetweenScreenAndWindow:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-int v19, v19, v20

    aput v19, v11, v18

    .line 726
    return-object v11

    .line 675
    :cond_3
    if-gez v13, :cond_4

    .line 677
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v11, v18

    goto :goto_0

    .line 678
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationViewHelper;->mScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_5

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationViewHelper;->mScreenWidth:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, p2, v19

    sub-int v12, v18, v19

    .line 681
    .local v12, "x":I
    const/16 v18, 0x0

    aput v12, v11, v18

    goto/16 :goto_0

    .line 684
    .end local v12    # "x":I
    :cond_5
    const/16 v18, 0x0

    aput v13, v11, v18

    goto/16 :goto_0
.end method


# virtual methods
.method public dismissTranslatePopupWindow()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 413
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->disconnectService()V

    .line 417
    :cond_0
    return-void
.end method

.method public isTranslatePopupWindowShowing()Z
    .locals 2

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const/4 v0, 0x1

    .line 429
    :cond_0
    return v0
.end method

.method public setFixedPopupWindowX(I)V
    .locals 0
    .param p1, "fixedX"    # I

    .prologue
    .line 286
    iput p1, p0, Landroid/widget/TranslationViewHelper;->mFixedX:I

    .line 287
    return-void
.end method

.method public setTranslationPopupWindowDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 293
    iput-object p1, p0, Landroid/widget/TranslationViewHelper;->mDismissListenerOuter:Landroid/widget/PopupWindow$OnDismissListener;

    .line 294
    return-void
.end method

.method public showTranslatePopupWindow(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View;IIIILandroid/widget/TranslationViewHelper$OnPositionUpdateListener;)V
    .locals 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "translationMenuView"    # Landroid/widget/LinearLayout;
    .param p3, "wordToTranslate"    # Ljava/lang/String;
    .param p4, "anchor"    # Landroid/view/View;
    .param p5, "parentXMiddle"    # I
    .param p6, "parentYTop"    # I
    .param p7, "parentYBottom"    # I
    .param p8, "selectHandleHeight"    # I
    .param p9, "positionUpdateListener"    # Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

    .prologue
    .line 320
    iput-object p9, p0, Landroid/widget/TranslationViewHelper;->mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

    .line 324
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mWordToTranslate:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mWordToTranslate:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, p5, p6, p7}, Landroid/widget/TranslationViewHelper;->updateTranslatePopupWindowPosition(III)V

    .line 349
    :goto_0
    return-void

    .line 331
    :cond_0
    iput-object p3, p0, Landroid/widget/TranslationViewHelper;->mWordToTranslate:Ljava/lang/String;

    .line 332
    iput-object p4, p0, Landroid/widget/TranslationViewHelper;->mAnchor:Landroid/view/View;

    .line 333
    iput p5, p0, Landroid/widget/TranslationViewHelper;->mParentXMiddle:I

    .line 334
    iput p6, p0, Landroid/widget/TranslationViewHelper;->mParentYTop:I

    .line 335
    iput p7, p0, Landroid/widget/TranslationViewHelper;->mParentYBottom:I

    .line 336
    iput p8, p0, Landroid/widget/TranslationViewHelper;->mSelectHandleHeight:I

    .line 337
    const v0, 0x1050011

    invoke-direct {p0, v0}, Landroid/widget/TranslationViewHelper;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationViewHelper;->mStatusBarHeight:I

    .line 339
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 340
    invoke-direct {p0, p1, p2}, Landroid/widget/TranslationViewHelper;->prepareTranslatePopupWindow(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    .line 343
    :cond_1
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mAnchor:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/TranslationViewHelper;->calculateOffsetBetweenInScreenAndInWindow(Landroid/view/View;)V

    .line 344
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mParentXMiddle:I

    iget v1, p0, Landroid/widget/TranslationViewHelper;->mParentYTop:I

    iget v2, p0, Landroid/widget/TranslationViewHelper;->mParentYBottom:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationViewHelper;->calculatePendingCoordinate(III)V

    .line 345
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mParentXMiddle:I

    iget v1, p0, Landroid/widget/TranslationViewHelper;->mParentYTop:I

    iget v2, p0, Landroid/widget/TranslationViewHelper;->mParentYBottom:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationViewHelper;->calculateErrorCoordinate(III)V

    .line 347
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mPendingX:I

    iget v1, p0, Landroid/widget/TranslationViewHelper;->mPendingY:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationViewHelper;->showTranslatePending(II)V

    .line 348
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->startTranslationQuery()V

    goto :goto_0
.end method

.method public updateTranslatePopupWindowPosition(III)V
    .locals 3
    .param p1, "parentXMiddle"    # I
    .param p2, "parentYTop"    # I
    .param p3, "parentYBottom"    # I

    .prologue
    .line 383
    iput p1, p0, Landroid/widget/TranslationViewHelper;->mParentXMiddle:I

    .line 384
    iput p2, p0, Landroid/widget/TranslationViewHelper;->mParentYTop:I

    .line 385
    iput p3, p0, Landroid/widget/TranslationViewHelper;->mParentYBottom:I

    .line 386
    iget-object v0, p0, Landroid/widget/TranslationViewHelper;->mAnchor:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/TranslationViewHelper;->calculateOffsetBetweenInScreenAndInWindow(Landroid/view/View;)V

    .line 388
    sget-object v0, Landroid/widget/TranslationViewHelper$7;->$SwitchMap$android$widget$TranslationViewHelper$PopupWindowState:[I

    iget-object v1, p0, Landroid/widget/TranslationViewHelper;->mCurrentTranslatePopupWindowState:Landroid/widget/TranslationViewHelper$PopupWindowState;

    invoke-virtual {v1}, Landroid/widget/TranslationViewHelper$PopupWindowState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 403
    :goto_0
    return-void

    .line 390
    :pswitch_0
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mParentXMiddle:I

    iget v1, p0, Landroid/widget/TranslationViewHelper;->mParentYTop:I

    iget v2, p0, Landroid/widget/TranslationViewHelper;->mParentYBottom:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationViewHelper;->calculatePendingCoordinate(III)V

    .line 391
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mPendingX:I

    iget v1, p0, Landroid/widget/TranslationViewHelper;->mPendingY:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationViewHelper;->showTranslatePending(II)V

    goto :goto_0

    .line 394
    :pswitch_1
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mParentXMiddle:I

    iget v1, p0, Landroid/widget/TranslationViewHelper;->mParentYTop:I

    iget v2, p0, Landroid/widget/TranslationViewHelper;->mParentYBottom:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TranslationViewHelper;->calculateErrorCoordinate(III)V

    .line 395
    iget v0, p0, Landroid/widget/TranslationViewHelper;->mErrorX:I

    iget v1, p0, Landroid/widget/TranslationViewHelper;->mErrorY:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TranslationViewHelper;->showTranslateError(II)V

    goto :goto_0

    .line 398
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper;->showTranslateResult()V

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
