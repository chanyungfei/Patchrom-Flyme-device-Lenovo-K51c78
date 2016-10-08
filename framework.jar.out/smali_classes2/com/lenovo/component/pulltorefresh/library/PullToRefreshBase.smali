.class public abstract Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/lenovo/component/pulltorefresh/library/IPullToRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/lenovo/component/pulltorefresh/library/IPullToRefresh",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z


# instance fields
.field private mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

.field private mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field private mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 79
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    .line 80
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 86
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 87
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 90
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 95
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 79
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    .line 80
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 86
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 87
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 90
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 95
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 79
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    .line 80
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 86
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 87
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 90
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 95
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 122
    iput-object p2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 79
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    .line 80
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 86
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 87
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 90
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 95
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 128
    iput-object p2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 129
    iput-object p3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;IJJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 1057
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1058
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1061
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    return-void
.end method

.method private callRefreshListener()V
    .locals 2

    .prologue
    .line 1066
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)V

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1222
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1228
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    .line 1224
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    .line 1234
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1239
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    .line 1236
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v9, 0xc

    const/16 v8, 0x9

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1079
    sget-object v3, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1085
    invoke-virtual {p0, v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    .line 1089
    :goto_0
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setGravity(I)V

    .line 1091
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1092
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mTouchSlop:I

    .line 1095
    sget-object v3, Lcom/lenovo/internal/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1097
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1098
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1101
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1102
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 1108
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1109
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1112
    sget-object v3, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    .line 1113
    sget-object v3, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    .line 1118
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1119
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1120
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1121
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1134
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 1137
    :cond_3
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1138
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1144
    :cond_4
    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1148
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    .line 1149
    return-void

    .line 1081
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    .line 1123
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_5
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1124
    const-string v3, "ptrAdapterViewBackground"

    const-string v4, "ptrRefreshableViewBackground"

    invoke-static {v3, v4}, Lcom/lenovo/component/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1126
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1127
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1079
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 1152
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1160
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1154
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    goto :goto_0

    .line 1156
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    goto :goto_0

    .line 1158
    :pswitch_3
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private pullEvent()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1175
    sget-object v5, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1182
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    .line 1183
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 1187
    .local v2, "lastMotionValue":F
    :goto_0
    sget-object v5, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1194
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1195
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1199
    .local v1, "itemDimension":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1201
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1202
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1203
    .local v4, "scale":F
    sget-object v5, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 1209
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    .line 1213
    :goto_2
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v6, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1214
    sget-object v5, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 1219
    .end local v4    # "scale":F
    :cond_0
    :goto_3
    return-void

    .line 1177
    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_0
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    .line 1178
    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 1179
    .restart local v2    # "lastMotionValue":F
    goto :goto_0

    .line 1189
    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1190
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .line 1191
    .restart local v1    # "itemDimension":I
    goto :goto_1

    .line 1205
    .restart local v4    # "scale":F
    :pswitch_2
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    goto :goto_2

    .line 1215
    :cond_1
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v6, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1216
    sget-object v5, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    goto :goto_3

    .line 1175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1187
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1203
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .locals 8
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 1250
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1251
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1255
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1260
    :cond_0
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1266
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1270
    .local v2, "oldScrollValue":I
    :goto_0
    if-eq v2, p1, :cond_2

    .line 1271
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1273
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1275
    :cond_1
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;IIJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    .line 1277
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1278
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1283
    :cond_2
    :goto_1
    return-void

    .line 1262
    .end local v2    # "oldScrollValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result v2

    .line 1263
    .restart local v2    # "oldScrollValue":I
    goto :goto_0

    .line 1280
    :cond_3
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final smoothScrollToAndBack(I)V
    .locals 7
    .param p1, "y"    # I

    .prologue
    .line 1286
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$3;-><init>(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1293
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 136
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-string v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void

    .line 144
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 579
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 580
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 587
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 588
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 591
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    .line 593
    .local v0, "layout":Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 594
    return-object v0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/lenovo/component/pulltorefresh/library/LoadingLayoutProxy;
    .locals 2
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 602
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/lenovo/component/pulltorefresh/library/LoadingLayoutProxy;-><init>()V

    .line 604
    .local v0, "proxy":Lcom/lenovo/component/pulltorefresh/library/LoadingLayoutProxy;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;)V

    .line 607
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;)V

    .line 611
    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 150
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V

    .line 158
    :goto_0
    return v0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .locals 1

    .prologue
    .line 631
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 632
    return-void
.end method

.method public final getCurrentMode()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 635
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 639
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 643
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 647
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;
    .locals 1
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 178
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/lenovo/component/pulltorefresh/library/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 651
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 655
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 659
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 669
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isScrollingWhileRefreshingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .prologue
    .line 215
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-static {v0}, Lcom/lenovo/component/pulltorefresh/library/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 221
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .locals 1

    .prologue
    .line 226
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 303
    :goto_0
    return v6

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 238
    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 239
    :cond_1
    iput-boolean v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 243
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 244
    goto :goto_0

    .line 247
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 303
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 250
    :pswitch_1
    iget-boolean v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    .line 251
    goto :goto_0

    .line 254
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 260
    .local v4, "x":F
    sget-object v6, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    .line 267
    iget v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 268
    .local v2, "diff":F
    iget v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 271
    .local v3, "oppositeDiff":F
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 273
    .local v0, "absDiff":F
    iget v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 274
    :cond_6
    iget-object v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_7

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 275
    iput v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 276
    iput v4, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 277
    iput-boolean v7, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 278
    iget-object v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v7, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 279
    sget-object v6, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_1

    .line 262
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_2
    iget v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .line 263
    .restart local v2    # "diff":F
    iget v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .line 264
    .restart local v3    # "oppositeDiff":F
    goto :goto_2

    .line 281
    .restart local v0    # "absDiff":F
    :cond_7
    iget-object v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 282
    iput v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 283
    iput v4, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 284
    iput-boolean v7, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 285
    iget-object v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v7, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 286
    sget-object v6, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 294
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 297
    iput-boolean v6, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 260
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 696
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 705
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 712
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 723
    :goto_0
    return-void

    .line 714
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 717
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 2

    .prologue
    .line 308
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 311
    :cond_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 732
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 739
    :cond_1
    if-eqz p1, :cond_3

    .line 740
    iget-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_2

    .line 743
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$1;-><init>(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)V

    .line 750
    .local v0, "listener":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 757
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(ILcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 767
    .end local v0    # "listener":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :goto_0
    return-void

    .line 753
    .restart local v0    # "listener":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(ILcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_0

    .line 761
    .end local v0    # "listener":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_0

    .line 765
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V

    goto :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 774
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 785
    :goto_0
    return-void

    .line 776
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 779
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 792
    iput-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 796
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 797
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 799
    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    .line 800
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 804
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 805
    check-cast v0, Landroid/os/Bundle;

    .line 807
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 808
    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 810
    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 811
    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 814
    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 816
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->mapIntToValue(I)Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v1

    .line 817
    .local v1, "viewState":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;
    sget-object v2, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 818
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 822
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 827
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;
    :goto_0
    return-void

    .line 826
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 831
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 835
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 837
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 838
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 840
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 841
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 842
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 844
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 850
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-string v0, "PullToRefresh"

    const-string v1, "onSizeChanged. W: %d, H: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 856
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 859
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 865
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$2;-><init>(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 871
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 316
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 322
    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 329
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 341
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    .line 344
    goto :goto_0

    .line 331
    :pswitch_1
    iget-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 334
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->pullEvent()V

    move v0, v1

    .line 335
    goto :goto_0

    .line 351
    :pswitch_2
    iget-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 352
    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 354
    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_5

    .line 356
    :cond_4
    sget-object v2, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 357
    goto :goto_0

    .line 361
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 362
    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 363
    goto :goto_0

    .line 368
    :cond_6
    sget-object v2, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 370
    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 10

    .prologue
    .line 878
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 880
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 881
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 882
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 883
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 885
    .local v1, "pBottom":I
    sget-object v5, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 920
    :goto_0
    const-string v5, "PullToRefresh"

    const-string v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setPadding(IIII)V

    .line 923
    return-void

    .line 887
    :pswitch_0
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 888
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 889
    neg-int v2, v0

    .line 894
    :goto_1
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 895
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 896
    neg-int v3, v0

    goto :goto_0

    .line 891
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 898
    :cond_1
    const/4 v3, 0x0

    .line 900
    goto :goto_0

    .line 903
    :pswitch_1
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 904
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 905
    neg-int v4, v0

    .line 910
    :goto_2
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 911
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 912
    neg-int v1, v0

    goto :goto_0

    .line 907
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 914
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final refreshRefreshableViewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 928
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 930
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 932
    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 933
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 934
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 938
    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 939
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 940
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 930
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 1
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 387
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 388
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 392
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 393
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 954
    const-string v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeaderScroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 959
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 961
    iget-boolean v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    .line 962
    if-gez p1, :cond_1

    .line 963
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 982
    :cond_0
    :goto_0
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 990
    :goto_1
    return-void

    .line 964
    :cond_1
    if-lez p1, :cond_2

    .line 965
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 967
    :cond_2
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v5}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 968
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v5}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 984
    :pswitch_0
    invoke-virtual {p0, v4, p1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 987
    :pswitch_1
    invoke-virtual {p0, p1, v4}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 982
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 400
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 408
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 416
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 422
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 423
    return-void
.end method

.method public final setMode(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 427
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 429
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 432
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    .line 434
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    .line 438
    return-void
.end method

.method public final setOnRefreshListener(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    .line 450
    return-void
.end method

.method public final setOnRefreshListener(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 444
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 457
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 458
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 465
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 466
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 474
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 475
    return-void

    .line 474
    :cond_0
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 479
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 480
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 484
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setRefreshing(Z)V

    .line 485
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 489
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 492
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 499
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 507
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 516
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 517
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 524
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 526
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 529
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 530
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 380
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 381
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 534
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 535
    return-void
.end method

.method final varargs setState(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .line 544
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    .line 546
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$lenovo$component$pulltorefresh$library$PullToRefreshBase$State:[I

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 569
    :goto_0
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$State;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 572
    :cond_0
    return-void

    .line 551
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onReset()V

    goto :goto_0

    .line 554
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 557
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 561
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 999
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 1000
    return-void
.end method

.method protected final smoothScrollTo(ILcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1010
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1011
    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 1020
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 1021
    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .line 1030
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1033
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1036
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    :cond_1
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1042
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1044
    :cond_2
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1045
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1053
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v2, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1054
    return-void

    .line 1053
    :cond_4
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method
