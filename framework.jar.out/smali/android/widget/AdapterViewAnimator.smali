.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$SavedState;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_SHOW:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AdapterViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field private mDataHasChanged:Z

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPreviousItemCount:I

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 71
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 76
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 82
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 88
    iput v5, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 93
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 103
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 108
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 114
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 134
    iput-boolean v4, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 139
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    .line 145
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 151
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 152
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 163
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 179
    iput-boolean v4, p0, Landroid/widget/AdapterViewAnimator;->mDataHasChanged:Z

    .line 201
    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 205
    .local v2, "resource":I
    if-lez v2, :cond_0

    .line 206
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 211
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 212
    if-lez v2, :cond_1

    .line 213
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 218
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 220
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    .line 222
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    .line 228
    return-void

    .line 208
    .end local v1    # "flag":Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/AdapterViewAnimator;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AdapterViewAnimator;

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/AdapterViewAnimator;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AdapterViewAnimator;

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousItemCount:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/AdapterViewAnimator;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AdapterViewAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mPreviousItemCount:I

    return p1
.end method

.method static synthetic access$202(Landroid/widget/AdapterViewAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AdapterViewAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mDataHasChanged:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/AdapterViewAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AdapterViewAnimator;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->clearViewMaps()V

    return-void
.end method

.method private addChild(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 682
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v4, v1}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 684
    const-string v1, "AdapterViewAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChild: child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v1, v4, :cond_1

    .line 692
    :cond_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 693
    .local v0, "measureSpec":I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 697
    .end local v0    # "measureSpec":I
    :cond_1
    return-void
.end method

.method private clearViewMaps()V
    .locals 5

    .prologue
    .line 1266
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1267
    .local v1, "index":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v3, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 1268
    .local v3, "viewToRemove":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1269
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1270
    check-cast v2, Landroid/view/ViewGroup;

    .line 1271
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1275
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 1277
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1279
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v3    # "viewToRemove":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1280
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1281
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 428
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 429
    .local v1, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 433
    .end local v1    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initViewAnimator()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 235
    return-void
.end method

.method private measureChildren()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 801
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v3

    .line 802
    .local v3, "count":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 803
    .local v2, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int v1, v5, v6

    .line 805
    .local v1, "childHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 806
    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 807
    .local v0, "child":Landroid/view/View;
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 805
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 810
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .locals 5
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    .line 328
    const-string v1, "AdapterViewAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayedChild: whichChild = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mWhichChild = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",window size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",animate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mViewsMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mPreviousViews = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 335
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 336
    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 341
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 343
    .local v0, "hasFocus":Z
    :goto_2
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 344
    if-eqz v0, :cond_1

    .line 346
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    .line 349
    .end local v0    # "hasFocus":Z
    :cond_1
    return-void

    .line 336
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 337
    :cond_3
    if-gez p1, :cond_0

    .line 338
    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v0, v2

    .line 341
    goto :goto_2
.end method


# virtual methods
.method public advance()V
    .locals 0

    .prologue
    .line 1238
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 1239
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 359
    return-void
.end method

.method cancelHandleClick()V
    .locals 2

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 709
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 712
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 713
    return-void
.end method

.method checkForAndHandleDataChanged()V
    .locals 2

    .prologue
    .line 857
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 858
    .local v0, "dataChanged":Z
    if-eqz v0, :cond_0

    .line 859
    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    .line 907
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setDataChanged(Z)Z

    .line 908
    return-void
.end method

.method configureViewAnimator(II)V
    .locals 1
    .param p1, "numVisibleViews"    # I
    .param p2, "activeOffset"    # I

    .prologue
    .line 271
    add-int/lit8 v0, p1, -0x1

    if-le p2, v0, :cond_0

    .line 274
    :cond_0
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 275
    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 276
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 278
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 281
    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 438
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_0

    .line 439
    move-object v1, v0

    .line 442
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1189
    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .locals 0

    .prologue
    .line 1248
    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1095
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1005
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 304
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 305
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 306
    return-object v0

    .line 304
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 310
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 311
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    return-object v0

    .line 310
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDisplayedChild()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 492
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    goto :goto_0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1180
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 3
    .param p1, "relativeIndex"    # I

    .prologue
    .line 397
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_0

    .line 398
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 399
    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 403
    .end local v0    # "i":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getWindowSize()I
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 417
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_0

    .line 418
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v0, v1

    .line 423
    .end local v0    # "adapterCount":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 705
    return-void
.end method

.method modulo(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .prologue
    .line 383
    if-lez p2, :cond_0

    .line 384
    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1252
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1253
    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1254
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1258
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1259
    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1260
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 912
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    .line 914
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v2

    .line 915
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 916
    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 918
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 919
    .local v3, "childRight":I
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 921
    .local v1, "childBottom":I
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 915
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x1000000

    const/4 v9, -0x1

    const/high16 v10, -0x80000000

    const/4 v7, 0x0

    .line 814
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 815
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 816
    .local v3, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 817
    .local v5, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 819
    .local v2, "heightSpecMode":I
    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v8, v9, :cond_2

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v8, v9, :cond_2

    const/4 v0, 0x1

    .line 824
    .local v0, "haveChildRefSize":Z
    :goto_0
    if-nez v2, :cond_4

    .line 825
    if-eqz v0, :cond_3

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int v3, v8, v9

    .line 838
    :cond_0
    :goto_1
    if-nez v5, :cond_7

    .line 839
    if-eqz v0, :cond_6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int v6, v7, v8

    .line 852
    :cond_1
    :goto_2
    invoke-virtual {p0, v6, v3}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    .line 853
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    .line 854
    return-void

    .end local v0    # "haveChildRefSize":Z
    :cond_2
    move v0, v7

    .line 819
    goto :goto_0

    .restart local v0    # "haveChildRefSize":Z
    :cond_3
    move v3, v7

    .line 825
    goto :goto_1

    .line 827
    :cond_4
    if-ne v2, v10, :cond_0

    .line 828
    if-eqz v0, :cond_0

    .line 829
    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int v1, v8, v9

    .line 830
    .local v1, "height":I
    if-le v1, v3, :cond_5

    .line 831
    or-int/2addr v3, v11

    goto :goto_1

    .line 833
    :cond_5
    move v3, v1

    goto :goto_1

    .end local v1    # "height":I
    :cond_6
    move v6, v7

    .line 839
    goto :goto_2

    .line 841
    :cond_7
    if-ne v2, v10, :cond_1

    .line 842
    if-eqz v0, :cond_1

    .line 843
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int v4, v7, v8

    .line 844
    .local v4, "width":I
    if-le v4, v6, :cond_8

    .line 845
    or-int/2addr v6, v11

    goto :goto_2

    .line 847
    :cond_8
    move v6, v4

    goto :goto_2
.end method

.method public onRemoteAdapterConnected()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 1196
    const-string v1, "AdapterViewAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteAdapterConnected: mRemoteViewsAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mDeferNotifyDataSetChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eq v1, v2, :cond_2

    .line 1202
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1204
    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 1205
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1206
    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1210
    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    if-le v1, v4, :cond_1

    .line 1211
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 1212
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 1219
    :cond_1
    :goto_0
    return v0

    .line 1215
    :cond_2
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_1

    .line 1216
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1217
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 1231
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 978
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    .line 979
    .local v0, "ss":Landroid/widget/AdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 984
    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 990
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_0

    .line 991
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 995
    :goto_0
    return-void

    .line 993
    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 969
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 970
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 973
    :cond_0
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 727
    .local v0, "action":I
    const/4 v1, 0x0

    .line 728
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 797
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 730
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 732
    .local v3, "v":Landroid/view/View;
    const-string v5, "AdapterViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent touch down: mCurrentWindowStart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurrentWindowEnd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",v = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-eqz v3, :cond_0

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v10}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 739
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    .line 740
    new-instance v5, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v5, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 742
    :cond_1
    iput v9, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 743
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 752
    .end local v3    # "v":Landroid/view/View;
    :pswitch_2
    const-string v5, "AdapterViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent touch up: mCurrentWindowStart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurrentWindowEnd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v5, v9, :cond_3

    .line 758
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 759
    .restart local v3    # "v":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    .line 760
    .local v4, "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_3

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v10}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 762
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 763
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 764
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 766
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 767
    new-instance v5, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v5, p0, v3, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 782
    const/4 v1, 0x1

    .line 786
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_3
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto/16 :goto_0

    .line 790
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 791
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 792
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 794
    :cond_4
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto/16 :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method refreshChildren()V
    .locals 8

    .prologue
    .line 446
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_1

    .line 482
    :cond_0
    return-void

    .line 454
    :cond_1
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .local v2, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v2, v5, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    .line 457
    .local v3, "index":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 459
    .local v0, "adapterCount":I
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v2, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 461
    .local v4, "updatedChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 462
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 472
    :cond_2
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 473
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 475
    .local v1, "fl":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_3

    .line 477
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 478
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 454
    .end local v1    # "fl":Landroid/widget/FrameLayout;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v3, 0x0

    .line 1105
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1109
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 1110
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    .line 1112
    const-string v0, "AdapterViewAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdapter: adapter count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mWhichChild = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 1117
    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 1118
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1119
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    .line 1121
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    .line 1122
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 1123
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, v3}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 1124
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 1090
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 1091
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 323
    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 1029
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    .line 1030
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 1066
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 1067
    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 1053
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1054
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 1079
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 1080
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1138
    const-string v2, "AdapterViewAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteViewsAdapter: intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mRemoteViewsAdapter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mWhichChild = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 1143
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1144
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1146
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1156
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1152
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 1153
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1171
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1175
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 1176
    return-void
.end method

.method public showNext()V
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 373
    return-void
.end method

.method showOnly(IZ)V
    .locals 34
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v4

    .line 508
    .local v4, "adapterCount":I
    if-eqz v4, :cond_0

    .line 511
    const-string v5, "AdapterViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "showOnly start: childIndex = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mCurrentWindowStart = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mCurrentWindowEnd = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mWhichChild = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",animate = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",window size = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mActiveOffset = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",childCount = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mViewsMap = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mPreviousViews = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",this = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_3

    .line 520
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v30, v0

    .line 525
    .local v30, "viewToRemove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->clearAnimation()V

    .line 527
    move-object/from16 v0, v30

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object/from16 v28, v30

    .line 528
    check-cast v28, Landroid/view/ViewGroup;

    .line 529
    .local v28, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 533
    .end local v28    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    .line 519
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 537
    .end local v30    # "viewToRemove":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 538
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v22, p1, v5

    .line 539
    .local v22, "newWindowStartUnbounded":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v5

    add-int v5, v5, v22

    add-int/lit8 v20, v5, -0x1

    .line 540
    .local v20, "newWindowEndUnbounded":I
    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 541
    .local v21, "newWindowStart":I
    add-int/lit8 v5, v4, -0x1

    move/from16 v0, v20

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 554
    .local v19, "newWindowEnd":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v5, :cond_4

    .line 555
    move/from16 v21, v22

    .line 556
    move/from16 v19, v20

    .line 558
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v26

    .line 559
    .local v26, "rangeStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v25

    .line 561
    .local v25, "rangeEnd":I
    const/16 v31, 0x0

    .line 562
    .local v31, "wrap":Z
    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 563
    const/16 v31, 0x1

    .line 570
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 571
    .local v17, "index":Ljava/lang/Integer;
    const/16 v27, 0x0

    .line 572
    .local v27, "remove":Z
    if-nez v31, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-lt v5, v0, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v25

    if-le v5, v0, :cond_9

    .line 573
    :cond_7
    const/16 v27, 0x1

    .line 584
    :cond_8
    :goto_3
    if-eqz v27, :cond_6

    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v24, v0

    .line 586
    .local v24, "previousView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v23, v0

    .line 588
    .local v23, "oldRelativeIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_2

    .line 574
    .end local v23    # "oldRelativeIndex":I
    .end local v24    # "previousView":Landroid/view/View;
    :cond_9
    if-eqz v31, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v25

    if-le v5, v0, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-ge v5, v0, :cond_8

    .line 575
    const/16 v27, 0x1

    goto :goto_3

    .line 605
    .end local v17    # "index":Ljava/lang/Integer;
    .end local v27    # "remove":Z
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mDataHasChanged:Z

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v0, v21

    if-ne v0, v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v19

    if-ne v0, v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    move/from16 v0, v22

    if-eq v0, v5, :cond_11

    .line 608
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mDataHasChanged:Z

    .line 610
    move/from16 v14, v21

    :goto_4
    move/from16 v0, v19

    if-gt v14, v0, :cond_10

    .line 612
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v17

    .line 614
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 615
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v23, v0

    .line 619
    .restart local v23    # "oldRelativeIndex":I
    :goto_5
    sub-int v8, v14, v22

    .line 624
    .local v8, "newRelativeIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const/16 v16, 0x1

    .line 632
    .local v16, "inOldRange":Z
    :goto_6
    if-eqz v16, :cond_e

    .line 633
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v29, v0

    .line 634
    .local v29, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v8, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 635
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 636
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v29

    move/from16 v3, p2

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 659
    .end local v29    # "view":Landroid/view/View;
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v5, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 610
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 617
    .end local v8    # "newRelativeIndex":I
    .end local v16    # "inOldRange":Z
    .end local v23    # "oldRelativeIndex":I
    :cond_c
    const/16 v23, -0x1

    .restart local v23    # "oldRelativeIndex":I
    goto :goto_5

    .line 624
    .restart local v8    # "newRelativeIndex":I
    :cond_d
    const/16 v16, 0x0

    goto :goto_6

    .line 641
    .restart local v16    # "inOldRange":Z
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v9

    .line 642
    .local v9, "adapterPosition":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v5, v9, v6, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 643
    .local v18, "newView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v9}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v10

    .line 647
    .local v10, "itemId":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v7

    .line 650
    .local v7, "fl":Landroid/widget/FrameLayout;
    if-eqz v18, :cond_f

    .line 651
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 653
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    new-instance v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 656
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 657
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v8, v7, v1}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_7

    .line 661
    .end local v7    # "fl":Landroid/widget/FrameLayout;
    .end local v8    # "newRelativeIndex":I
    .end local v9    # "adapterPosition":I
    .end local v10    # "itemId":J
    .end local v16    # "inOldRange":Z
    .end local v17    # "index":I
    .end local v18    # "newView":Landroid/view/View;
    .end local v23    # "oldRelativeIndex":I
    :cond_10
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 662
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 663
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 664
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v5, :cond_11

    .line 665
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v13

    .line 666
    .local v13, "adapterStart":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v12

    .line 667
    .local v12, "adapterEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v5, v13, v12}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 670
    .end local v12    # "adapterEnd":I
    .end local v13    # "adapterStart":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    .line 673
    const-string v5, "AdapterViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "showOnly end: childIndex = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mCurrentWindowStart = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mCurrentWindowEnd = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",window size = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mActiveOffset = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",childCount = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mPreviousViews = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v32, ",mViewsMap = "

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public showPrevious()V
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 380
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 700
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 701
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    const/4 v0, -0x1

    .line 294
    if-ne p1, v0, :cond_1

    .line 295
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    if-ne p2, v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
