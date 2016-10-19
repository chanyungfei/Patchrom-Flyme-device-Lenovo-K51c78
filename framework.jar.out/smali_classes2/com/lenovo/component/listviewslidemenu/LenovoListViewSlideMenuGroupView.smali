.class public Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;
.super Landroid/view/ViewGroup;
.source "LenovoListViewSlideMenuGroupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final SLIDE_STATE_IDLE:I = 0x0

.field public static final SLIDE_STATE_SCROLLING:I = 0x1

.field public static final SLIDE_STATE_SETTING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LenovoSlideSectionGroupView"


# instance fields
.field private bAutoScrollState:Z

.field private bEnterLeftScroll:Z

.field private bEnterLockState:Z

.field private bForceAbort:Z

.field private bInitViews:Z

.field private bScrollBack:Z

.field private bScrollEnter:Z

.field private mAutoScrollThresholdLeft:I

.field private mAutoScrollThresholdRight:I

.field private mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

.field private final mContentSectionIdex:I

.field private mContext:Landroid/content/Context;

.field private mEnterXVelocity:I

.field private mHideLeftSlideMenu:Z

.field private mHideRightSlideMenu:Z

.field private mMaxFlingVelocity:I

.field private mMaxScrollThresholdLeft:I

.field private mMaxScrollThresholdRight:I

.field private mMaxSectionCount:I

.field private mOriginalPositionX:I

.field private mPosition:I

.field private mScrollTime:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSlidemenuItemContainerLeft:Landroid/view/ViewGroup;

.field private mSlidemenuItemContainerLeftIcon:Landroid/widget/ImageView;

.field private mSlidemenuItemContainerLeftText:Landroid/widget/TextView;

.field private mSlidemenuItemContainerRight:Landroid/view/ViewGroup;

.field private mSlidemenuItemContainerRightIcon:Landroid/widget/ImageView;

.field private mSlidemenuItemContainerRightText:Landroid/widget/TextView;

.field private mTouchSlop:I

.field private mVelocityScrollThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScrollTime:I

    .line 38
    const/16 v0, 0x258

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mEnterXVelocity:I

    .line 72
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideLeftSlideMenu:Z

    .line 73
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideRightSlideMenu:Z

    .line 78
    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mContentSectionIdex:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mPosition:I

    .line 83
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScrollTime:I

    .line 38
    const/16 v0, 0x258

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mEnterXVelocity:I

    .line 72
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideLeftSlideMenu:Z

    .line 73
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideRightSlideMenu:Z

    .line 78
    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mContentSectionIdex:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mPosition:I

    .line 90
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScrollTime:I

    .line 38
    const/16 v0, 0x258

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mEnterXVelocity:I

    .line 72
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideLeftSlideMenu:Z

    .line 73
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideRightSlideMenu:Z

    .line 78
    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mContentSectionIdex:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mPosition:I

    .line 96
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->init()V

    .line 98
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 116
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScroller:Landroid/widget/Scroller;

    .line 118
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 119
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mTouchSlop:I

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxFlingVelocity:I

    .line 124
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 127
    iget-boolean v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bInitViews:Z

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildCount()I

    move-result v0

    .line 129
    .local v0, "childCount":I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxSectionCount:I

    .line 130
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 131
    invoke-virtual {p0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    const v2, 0x90c0053

    invoke-virtual {p0, v2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeft:Landroid/view/ViewGroup;

    .line 135
    iget-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeft:Landroid/view/ViewGroup;

    const v3, 0x90c0054

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeftText:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeft:Landroid/view/ViewGroup;

    const v3, 0x90c0055

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeftIcon:Landroid/widget/ImageView;

    .line 137
    const v2, 0x90c0056

    invoke-virtual {p0, v2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRight:Landroid/view/ViewGroup;

    .line 138
    iget-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRight:Landroid/view/ViewGroup;

    const v3, 0x90c0057

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRightText:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRight:Landroid/view/ViewGroup;

    const v3, 0x90c0058

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRightIcon:Landroid/widget/ImageView;

    .line 140
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bInitViews:Z

    .line 142
    .end local v0    # "childCount":I
    .end local v1    # "position":I
    :cond_1
    return-void
.end method

.method private scorllEnter(Z)V
    .locals 6
    .param p1, "bEnterLeft"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getScrollX()I

    move-result v1

    .line 181
    .local v1, "startX":I
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bScrollEnter:Z

    .line 182
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bAutoScrollState:Z

    .line 184
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    invoke-interface {v0, p0, v3}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;->onSlideStateChanged(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;I)V

    .line 188
    :cond_0
    if-eqz p1, :cond_2

    .line 189
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bEnterLeftScroll:Z

    .line 190
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxScrollThresholdLeft:I

    sub-int/2addr v3, v1

    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScrollTime:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 198
    :goto_0
    sget-boolean v0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "LenovoSlideSectionGroupView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####scorllEnter(), bAutoScrollState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bAutoScrollState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->invalidate()V

    .line 202
    return-void

    .line 193
    :cond_2
    iput-boolean v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bEnterLeftScroll:Z

    .line 194
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxScrollThresholdRight:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScrollTime:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private scrollBack()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getScrollX()I

    move-result v1

    .line 163
    .local v1, "startX":I
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bScrollBack:Z

    .line 164
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bAutoScrollState:Z

    .line 166
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    invoke-interface {v0, p0, v3}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;->onSlideStateChanged(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScroller:Landroid/widget/Scroller;

    neg-int v3, v1

    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScrollTime:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 172
    sget-boolean v0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "LenovoSlideSectionGroupView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####scrollBack(), bAutoScrollState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bAutoScrollState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->invalidate()V

    .line 176
    return-void
.end method


# virtual methods
.method public cancelScroll()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bScrollEnter:Z

    .line 272
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->scrollBack()V

    .line 273
    return-void
.end method

.method public final computeScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->scrollTo(II)V

    .line 208
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->postInvalidate()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bScrollEnter:Z

    if-eqz v0, :cond_2

    .line 212
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bAutoScrollState:Z

    .line 213
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;->onSlideStateChanged(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;I)V

    goto :goto_0

    .line 216
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bScrollBack:Z

    if-eqz v0, :cond_0

    .line 217
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bScrollBack:Z

    .line 218
    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bAutoScrollState:Z

    .line 219
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    invoke-interface {v0, p0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;->onSlideStateChanged(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;I)V

    goto :goto_0
.end method

.method public getSlideMenuLeftSideIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeftIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSlideMenuLeftSideText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeftText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSlideMenuLeftSideViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeft:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSlideMenuRightSideIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRightIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSlideMenuRightSideText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRightText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSlideMenuRightSideViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRight:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTouchMenu(II)Landroid/view/View;
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildCount()I

    move-result v0

    .line 277
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 278
    .local v1, "childView":Landroid/view/View;
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 280
    .local v3, "view_coords":[I
    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxSectionCount:I

    if-ge v0, v5, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v4

    .line 284
    :cond_1
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 285
    invoke-virtual {p0, v2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 287
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 288
    aget v5, v3, v7

    if-lt p1, v5, :cond_3

    aget v5, v3, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p1, v5, :cond_3

    aget v5, v3, v8

    if-lt p2, v5, :cond_3

    aget v5, v3, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p2, v5, :cond_3

    .line 293
    sget-boolean v4, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 294
    const-string v4, "LenovoSlideSectionGroupView"

    const-string v5, "####left_section"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v4, v1

    .line 296
    goto :goto_0

    .line 284
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 104
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->initViews()V

    .line 105
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 307
    const/4 v7, 0x0

    .line 308
    .local v7, "viewWidth":I
    const/4 v5, 0x0

    .line 309
    .local v5, "viewLeft":I
    const/4 v6, 0x0

    .line 310
    .local v6, "viewRight":I
    const/4 v4, 0x0

    .line 311
    .local v4, "menuWidthRight":I
    const/4 v3, 0x0

    .line 312
    .local v3, "menuWidthLeft":I
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildCount()I

    move-result v0

    .line 313
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 315
    .local v1, "childView":Landroid/view/View;
    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxSectionCount:I

    if-ge v0, v8, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 320
    invoke-virtual {p0, v2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    .line 322
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 323
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 324
    const-string v8, "LenovoSlideSectionGroupView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "####index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", viewWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_2
    if-nez v2, :cond_4

    .line 327
    const/4 v8, 0x0

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mOriginalPositionX:I

    .line 328
    const/4 v8, 0x0

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mVelocityScrollThreshold:I

    .line 329
    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mOriginalPositionX:I

    .line 330
    const/4 v8, 0x0

    add-int v9, v5, v7

    sub-int v10, p5, p3

    invoke-virtual {v1, v5, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 331
    add-int/2addr v5, v7

    .line 319
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    :cond_4
    const/4 v8, 0x2

    if-ne v2, v8, :cond_5

    .line 333
    add-int/2addr v4, v7

    .line 334
    const/4 v8, 0x0

    add-int v9, v5, v7

    sub-int v10, p5, p3

    invoke-virtual {v1, v5, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 335
    add-int/2addr v5, v7

    goto :goto_2

    .line 336
    :cond_5
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 337
    add-int/2addr v3, v7

    .line 338
    sub-int v8, v6, v7

    const/4 v9, 0x0

    sub-int v10, p5, p3

    invoke-virtual {v1, v8, v9, v6, v10}, Landroid/view/View;->layout(IIII)V

    .line 339
    sub-int/2addr v6, v7

    goto :goto_2

    .line 345
    :cond_6
    div-int/lit8 v8, v4, 0x2

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mAutoScrollThresholdRight:I

    .line 346
    iput v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxScrollThresholdRight:I

    .line 348
    neg-int v8, v3

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mAutoScrollThresholdLeft:I

    .line 349
    neg-int v8, v3

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxScrollThresholdLeft:I

    .line 350
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 351
    const-string v8, "zyw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>>>>menuWidthLeft="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", menuWidthRight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 358
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 359
    const-string v8, "LenovoSlideSectionGroupView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "####:getChildCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    const/4 v2, 0x0

    .line 365
    .local v2, "content_section":Landroid/view/View;
    const/4 v6, 0x0

    .line 366
    .local v6, "viewHeight":I
    const/4 v7, 0x0

    .line 367
    .local v7, "width":I
    const/4 v3, 0x0

    .line 368
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildCount()I

    move-result v0

    .line 370
    .local v0, "childCount":I
    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxSectionCount:I

    if-ge v0, v8, :cond_1

    .line 415
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-virtual {p0, v11}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 375
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 376
    const-string v8, "zyw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>>>>onMeasure, widthMeasureSpec="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", heightMeasureSpec="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_2
    if-eqz v2, :cond_3

    .line 381
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 384
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 385
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 386
    const-string v8, "LenovoSlideSectionGroupView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "####width:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_4
    if-eqz v2, :cond_5

    .line 389
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 392
    :cond_5
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "childView":Landroid/view/View;
    const/4 v4, 0x1

    .local v4, "index":I
    :goto_1
    if-ge v4, v0, :cond_7

    .line 396
    invoke-virtual {p0, v4}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_6

    .line 398
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 399
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/view/View;->measure(II)V

    .line 405
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 395
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 408
    :cond_7
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v8, :cond_8

    .line 409
    const-string v8, "zyw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>>>>onMeasure, width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", viewHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_8
    invoke-static {v7, p1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->resolveSize(II)I

    move-result v8

    invoke-static {v6, p2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->resolveSize(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public registerSlideSectionListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    .line 113
    return-void
.end method

.method public resetState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    sget-boolean v0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "LenovoSlideSectionGroupView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####resetState, bAutoScrollState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bAutoScrollState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bScrollEnter:Z

    .line 150
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bScrollBack:Z

    .line 151
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bAutoScrollState:Z

    .line 152
    iput-boolean v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->bEnterLockState:Z

    .line 154
    invoke-virtual {p0, v3, v3}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->scrollTo(II)V

    .line 155
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mCallback:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;

    invoke-interface {v0, p0, v3}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;->onSlideStateChanged(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;I)V

    .line 158
    :cond_1
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxSectionCount:I

    if-ne v0, v1, :cond_0

    .line 419
    invoke-virtual {p0, v3}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->removeViewAt(I)V

    .line 422
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v3, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 424
    return-void
.end method

.method public setDebugLog(Z)V
    .locals 0
    .param p1, "isTrue"    # Z

    .prologue
    .line 476
    sput-boolean p1, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    .line 477
    return-void
.end method

.method public setHideLeftSlideMenu(Z)V
    .locals 2
    .param p1, "isTrue"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideLeftSlideMenu:Z

    .line 428
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideLeftSlideMenu:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeft:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerLeft:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHideRightSlideMenu(Z)V
    .locals 2
    .param p1, "isTrue"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideRightSlideMenu:Z

    .line 438
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mHideRightSlideMenu:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRight:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mSlidemenuItemContainerRight:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public touchCancelScroll(II)V
    .locals 7
    .param p1, "v_x"    # I
    .param p2, "v_y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getScrollX()I

    move-result v2

    .line 242
    .local v2, "scrollX":I
    const/4 v0, 0x0

    .line 243
    .local v0, "bEnter":Z
    const/4 v1, 0x0

    .line 245
    .local v1, "bLeft":Z
    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mAutoScrollThresholdRight:I

    if-gt v2, v5, :cond_0

    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mAutoScrollThresholdLeft:I

    if-ge v2, v5, :cond_4

    .line 246
    :cond_0
    const/4 v0, 0x1

    .line 247
    if-gez v2, :cond_3

    move v1, v3

    .line 258
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 259
    const-string v3, "zyw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>bLeft="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scrollX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_2
    if-eqz v0, :cond_8

    .line 264
    invoke-direct {p0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->scorllEnter(Z)V

    .line 268
    :goto_1
    return-void

    :cond_3
    move v1, v4

    .line 247
    goto :goto_0

    .line 248
    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mVelocityScrollThreshold:I

    if-lt v5, v6, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mEnterXVelocity:I

    if-lt v5, v6, :cond_1

    .line 252
    if-lez p1, :cond_5

    if-ltz v2, :cond_6

    :cond_5
    if-gez p1, :cond_1

    if-lez v2, :cond_1

    .line 254
    :cond_6
    const/4 v0, 0x1

    .line 255
    if-lez p1, :cond_7

    move v1, v3

    :goto_2
    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_2

    .line 266
    :cond_8
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->scrollBack()V

    goto :goto_1
.end method

.method public touchScroll(I)V
    .locals 2
    .param p1, "distance_x"    # I

    .prologue
    .line 231
    neg-int v0, p1

    .line 232
    .local v0, "cur_scroll":I
    iget v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxScrollThresholdLeft:I

    if-ge v0, v1, :cond_1

    .line 233
    iget v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxScrollThresholdLeft:I

    .line 237
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->setScrollX(I)V

    .line 238
    return-void

    .line 234
    :cond_1
    iget v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxScrollThresholdRight:I

    if-le v0, v1, :cond_0

    .line 235
    iget v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->mMaxScrollThresholdRight:I

    goto :goto_0
.end method
