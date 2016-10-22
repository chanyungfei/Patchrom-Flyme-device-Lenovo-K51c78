.class public Lcom/lenovo/settings/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragSortListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$DropListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;,
        Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;,
        Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;,
        Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;,
        Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;,
        Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;,
        Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DragSortListView"

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUpdateListener:Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "Recycle"
        }
    .end annotation

    .prologue
    .line 430
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 56
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 66
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 77
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    .line 78
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 103
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    .line 163
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 174
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 181
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 197
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 203
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 215
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 222
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 246
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 254
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lenovo/settings/dslv/DragSortListView$1;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    .line 321
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    .line 327
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 332
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    .line 337
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .line 357
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    .line 364
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 373
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    .line 386
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    .line 396
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 403
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 417
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    .line 426
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1669
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2156
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 432
    const/16 v27, 0x96

    .line 433
    .local v27, "defaultDuration":I
    move/from16 v30, v27

    .line 434
    .local v30, "removeAnimDuration":I
    move/from16 v28, v27

    .line 436
    .local v28, "dropAnimDuration":I
    if-eqz p2, :cond_3

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v12, Lcom/android/settings/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 440
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 443
    const/4 v5, 0x5

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    .line 445
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v5, :cond_0

    .line 446
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    .line 450
    :cond_0
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    .line 451
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 453
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 456
    :cond_1
    const/4 v5, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x7

    const/high16 v15, 0x3f400000    # 0.75f

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 459
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_6

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    .line 461
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 464
    .local v29, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 466
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 469
    const/16 v5, 0x8

    move/from16 v0, v30

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 472
    const/16 v5, 0x9

    move/from16 v0, v28

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 475
    const/16 v5, 0x11

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 478
    .local v34, "useDefault":Z
    if-eqz v34, :cond_2

    .line 479
    const/16 v5, 0xc

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 481
    .local v31, "removeEnabled":Z
    const/4 v5, 0x4

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 483
    .local v8, "removeMode":I
    const/16 v5, 0xb

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 484
    .local v33, "sortEnabled":Z
    const/16 v5, 0xd

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 486
    .local v7, "dragInitMode":I
    const/16 v5, 0xe

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 487
    .local v6, "dragHandleId":I
    const/16 v5, 0xf

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 488
    .local v10, "flingHandleId":I
    const/16 v5, 0x10

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 489
    .local v9, "clickRemoveId":I
    const/4 v5, 0x3

    const/4 v12, -0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 492
    .local v26, "bgColor":I
    new-instance v4, Lcom/lenovo/settings/dslv/DragSortController;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/lenovo/settings/dslv/DragSortController;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;IIIII)V

    .line 495
    .local v4, "controller":Lcom/lenovo/settings/dslv/DragSortController;
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/lenovo/settings/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 496
    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/lenovo/settings/dslv/DragSortController;->setSortEnabled(Z)V

    .line 497
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/lenovo/settings/dslv/DragSortController;->setBackgroundColor(I)V

    .line 499
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .line 500
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 503
    .end local v4    # "controller":Lcom/lenovo/settings/dslv/DragSortController;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v31    # "removeEnabled":Z
    .end local v33    # "sortEnabled":Z
    :cond_2
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 506
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v29    # "frac":F
    .end local v34    # "useDefault":Z
    :cond_3
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    .line 508
    const/high16 v32, 0x3f000000    # 0.5f

    .line 509
    .local v32, "smoothness":F
    if-lez v30, :cond_4

    .line 510
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    .line 513
    :cond_4
    if-lez v28, :cond_5

    .line 514
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    .line 517
    :cond_5
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 521
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lenovo/settings/dslv/DragSortListView$2;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 539
    return-void

    .line 459
    .end local v32    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/settings/dslv/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/settings/dslv/DragSortListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1502(Lcom/lenovo/settings/dslv/DragSortListView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1516(Lcom/lenovo/settings/dslv/DragSortListView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/settings/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$2100(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/settings/dslv/DragSortListView;)Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$2400(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$2502(Lcom/lenovo/settings/dslv/DragSortListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/lenovo/settings/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/lenovo/settings/dslv/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/lenovo/settings/dslv/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/settings/dslv/DragSortListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/settings/dslv/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/settings/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1835
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1836
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1838
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1839
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1841
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1842
    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1843
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1844
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1841
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1847
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1853
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1854
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1856
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1864
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1866
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1867
    const/4 v0, -0x2

    .line 1872
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1873
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1874
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1878
    :cond_0
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1879
    :cond_1
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1880
    check-cast v4, Lcom/lenovo/settings/dslv/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/lenovo/settings/dslv/DragSortItemView;->setGravity(I)V

    .line 1888
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1889
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1891
    .local v3, "vis":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1892
    const/4 v3, 0x4

    .line 1895
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1896
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    :cond_4
    return-void

    .line 1869
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1881
    :cond_6
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1882
    check-cast v4, Lcom/lenovo/settings/dslv/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/lenovo/settings/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1527
    .local v0, "firstPos":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1530
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1531
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1532
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1533
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1535
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1537
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 2031
    const/4 v0, 0x0

    .line 2033
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2035
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2036
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2038
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2039
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2040
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2041
    sub-int/2addr v4, v1

    .line 2042
    sub-int/2addr v3, v1

    .line 2045
    :cond_0
    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2046
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2047
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2050
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2051
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2052
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2070
    :cond_2
    :goto_0
    return v0

    .line 2054
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2055
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2056
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 2057
    :cond_4
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2058
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 2060
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 2063
    :cond_6
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2064
    sub-int/2addr v0, v2

    goto :goto_0

    .line 2065
    :cond_7
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2066
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2689
    const/4 v4, 0x0

    .line 2691
    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2692
    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2733
    :goto_0
    return v5

    .line 2695
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2696
    .local v3, "position":I
    move v1, v3

    .line 2697
    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .line 2698
    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    .line 2699
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2698
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2701
    :cond_1
    if-ne v3, v0, :cond_2

    .line 2702
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2704
    :cond_2
    aput v1, p3, v4

    .line 2705
    aput v0, p4, v4

    .line 2706
    add-int/lit8 v4, v4, 0x1

    .line 2707
    move v1, v3

    .line 2708
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 2712
    :cond_3
    if-ne v0, p2, :cond_4

    .line 2717
    move v0, p1

    .line 2719
    :cond_4
    aput v1, p3, v4

    .line 2720
    aput v0, p4, v4

    .line 2721
    add-int/lit8 v4, v4, 0x1

    .line 2723
    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    .line 2724
    aget v6, p3, v5

    if-ne v6, p1, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_5

    .line 2729
    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    .line 2730
    add-int/lit8 v4, v4, -0x1

    :cond_5
    move v5, v4

    .line 2733
    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 1988
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    .line 1989
    .local v1, "isSliding":Z
    :goto_0
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v2, v4, v5

    .line 1990
    .local v2, "maxNonSrcBlankHeight":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 1994
    .local v3, "slideHeight":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_4

    .line 1995
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v4, v5, :cond_2

    .line 1996
    if-eqz v1, :cond_1

    .line 1997
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int v0, v3, v4

    .line 2020
    .local v0, "height":I
    :goto_1
    return v0

    .line 1988
    .end local v0    # "height":I
    .end local v1    # "isSliding":Z
    .end local v2    # "maxNonSrcBlankHeight":I
    .end local v3    # "slideHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1999
    .restart local v1    # "isSliding":Z
    .restart local v2    # "maxNonSrcBlankHeight":I
    .restart local v3    # "slideHeight":I
    :cond_1
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 2001
    .end local v0    # "height":I
    :cond_2
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v4, v5, :cond_3

    .line 2003
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2005
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 2007
    .end local v0    # "height":I
    :cond_4
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v4, :cond_6

    .line 2008
    if-eqz v1, :cond_5

    .line 2009
    add-int v0, p2, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2011
    .end local v0    # "height":I
    :cond_5
    add-int v0, p2, v2

    .restart local v0    # "height":I
    goto :goto_1

    .line 2013
    .end local v0    # "height":I
    :cond_6
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_7

    .line 2015
    add-int v4, p2, v2

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2017
    .end local v0    # "height":I
    :cond_7
    move v0, p2

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1981
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1465
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 1466
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1467
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1468
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1469
    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1767
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1768
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1770
    invoke-virtual {p0, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1772
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1773
    .local v2, "minY":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1776
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1778
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1782
    if-eq v0, v6, :cond_0

    .line 1784
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1788
    :cond_0
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1808
    :cond_1
    :goto_0
    return-void

    .line 1789
    :cond_2
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1793
    if-eq v0, v6, :cond_3

    .line 1795
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1799
    :cond_3
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1801
    :cond_4
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1806
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2384
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2385
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2388
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2389
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->invalidate()V

    .line 2391
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1639
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    .line 1640
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1641
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1642
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1644
    :cond_0
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1645
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1646
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->clear()V

    .line 1647
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2299
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2301
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateFloatView()V

    .line 2303
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 2304
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 2306
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2308
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2309
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 2310
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2312
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2313
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->layoutChildren()V

    .line 2316
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2317
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->invalidate()V

    .line 2320
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2321
    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1496
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1497
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1505
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1508
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1512
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1514
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustOnReorder()V

    .line 1515
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1518
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1519
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1523
    :goto_0
    return-void

    .line 1521
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 740
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 742
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 745
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 747
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 751
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 753
    .local v1, "childHeight":I
    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 754
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 755
    .local v7, "t":I
    add-int v0, v7, v3

    .line 762
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 763
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 764
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 765
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 766
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 769
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 757
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 758
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1474
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1476
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1477
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1478
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1481
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1483
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustOnReorder()V

    .line 1484
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1485
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 1488
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1489
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1493
    :goto_0
    return-void

    .line 1491
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    .line 2749
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2750
    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2751
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2753
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2754
    :cond_1
    const/4 v0, -0x1

    .line 2755
    .end local v0    # "i":I
    :cond_2
    return v0
.end method

.method private getChildHeight(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1901
    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1946
    :cond_0
    :goto_0
    return v1

    .line 1905
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1907
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1910
    invoke-direct {p0, p1, v4, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1914
    :cond_2
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1915
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1919
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1920
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1923
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1924
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1925
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1928
    :cond_3
    if-ltz v2, :cond_5

    .line 1929
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1930
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1931
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1941
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1944
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1933
    :cond_4
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1937
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1951
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 1977
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1956
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1957
    :cond_2
    move-object v0, p2

    .line 1962
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1964
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1965
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1966
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1959
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 1970
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1972
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1973
    :cond_5
    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1974
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 820
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 826
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 902
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 908
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 955
    :goto_0
    return v3

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 916
    .local v2, "divHeight":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 917
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 918
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 922
    .local v4, "itemHeight":I
    move v8, p2

    .line 923
    .local v8, "otop":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 926
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 927
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 928
    add-int v9, p2, v4

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 949
    :cond_2
    :goto_1
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 950
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    goto :goto_0

    .line 930
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 931
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 932
    goto :goto_1

    .line 933
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 934
    sub-int v8, p2, v5

    goto :goto_1

    .line 940
    :cond_5
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 941
    add-int v8, p2, v5

    goto :goto_1

    .line 942
    :cond_6
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 943
    sub-int v0, v4, v1

    .line 944
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 952
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    .line 2759
    const/4 v1, 0x0

    .line 2760
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2761
    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    .line 2762
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2763
    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 2764
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2766
    :cond_0
    move v0, v2

    goto :goto_0

    .line 2768
    .end local v2    # "middle":I
    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    .line 2161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 2162
    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2094
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2095
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 2097
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2074
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2075
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2076
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2078
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2080
    :cond_0
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2083
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2084
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2088
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2089
    return-void

    .line 2086
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private printPosData()V
    .locals 3

    .prologue
    .line 832
    const-string v0, "DragSortListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSrcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    .line 2737
    sub-int v0, p3, p2

    .line 2739
    .local v0, "windowSize":I
    add-int/2addr p0, p1

    .line 2740
    if-ge p0, p2, :cond_1

    .line 2741
    add-int/2addr p0, v0

    .line 2745
    :cond_0
    :goto_0
    return p0

    .line 2742
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2743
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1651
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1652
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastX:I

    .line 1653
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    .line 1655
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    .line 1656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    .line 1657
    if-nez v0, :cond_1

    .line 1658
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastX:I

    .line 1659
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    .line 1661
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mOffsetX:I

    .line 1662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mOffsetY:I

    .line 1663
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2329
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2330
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iget v11, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2331
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2334
    :cond_0
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2335
    .local v2, "floatX":I
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2338
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2339
    .local v7, "padLeft":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2340
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2346
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2347
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2348
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2349
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2351
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2352
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2353
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2355
    :cond_2
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2356
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2357
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2362
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2363
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2364
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2366
    :cond_4
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2367
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2368
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2372
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2373
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2379
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    .line 2380
    return-void

    .line 2341
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2342
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2374
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2375
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 961
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 962
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 964
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 966
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 968
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 970
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 972
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 973
    .local v5, "edge":I
    move v13, v5

    .line 975
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 977
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 978
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 979
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 981
    :goto_0
    if-ltz v11, :cond_1

    .line 982
    add-int/lit8 v11, v11, -0x1

    .line 983
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 985
    if-nez v11, :cond_7

    .line 986
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1022
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1023
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1025
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1027
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1028
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1029
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1031
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1032
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1035
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 1036
    move v6, v5

    .line 1037
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1043
    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1044
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1045
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1046
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1049
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1050
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1051
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1052
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    .line 1069
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 1070
    move v11, v15

    .line 1071
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1072
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1079
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1081
    :cond_3
    const/16 v26, 0x1

    .line 1084
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1089
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1090
    const/16 v26, 0x1

    .line 1093
    :cond_6
    return v26

    .line 990
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 991
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 997
    move v13, v5

    goto/16 :goto_0

    .line 1001
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 1002
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 1003
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 1004
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 1005
    goto/16 :goto_1

    .line 1008
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 1009
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1010
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1013
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1017
    move v13, v5

    .line 1018
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1039
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .line 1040
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1053
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 1054
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1055
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1057
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1058
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1059
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1064
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1065
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1073
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1075
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1076
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1812
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1813
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1815
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1816
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1818
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1819
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1821
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1822
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1823
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1450
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1452
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1453
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1454
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 1456
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1457
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 773
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 775
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 777
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 778
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 780
    :cond_0
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 781
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 788
    .local v9, "w":I
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 804
    .local v8, "h":I
    const/16 v7, 0xff

    .line 806
    .local v7, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 807
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 808
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 810
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v5, 0xff

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 811
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 812
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 813
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 815
    .end local v7    # "alpha":I
    .end local v8    # "h":I
    .end local v9    # "w":I
    :cond_2
    return-void
.end method

.method protected doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2288
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2289
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2291
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2296
    :goto_0
    return-void

    .line 2295
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method public getDropListener()Lcom/lenovo/settings/dslv/DragSortListView$DropListener;
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    return-object v0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpdateListener()Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;
    .locals 1

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpdateListener:Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2469
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2113
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2115
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2116
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2120
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2122
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2123
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2125
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1666
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2621
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2622
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2623
    .local v3, "rangeStart":I
    move v2, p2

    .line 2624
    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    .line 2625
    move v3, p2

    .line 2626
    move v2, p1

    .line 2628
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2630
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2631
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2632
    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2633
    .local v4, "runCount":I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    .line 2651
    :cond_1
    return-void

    .line 2639
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2640
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 2641
    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2642
    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2646
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_1

    .line 2647
    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2648
    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2646
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1436
    const-string v1, "DragSortListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveItem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1438
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1439
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1443
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 2130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2153
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2132
    :pswitch_0
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_CANCEL"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v0, v2, :cond_0

    .line 2134
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->cancelDrag()V

    .line 2136
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2140
    :pswitch_1
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_UP"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v0, v2, :cond_1

    .line 2142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2144
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2148
    :pswitch_2
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_MOVE"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1098
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1100
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1103
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1673
    iget-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1674
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1721
    :cond_0
    :goto_0
    return v1

    .line 1677
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1678
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1682
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 1683
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v3, :cond_2

    .line 1685
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1686
    goto :goto_0

    .line 1688
    :cond_2
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1691
    :cond_3
    const/4 v1, 0x0

    .line 1694
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1696
    const/4 v1, 0x1

    .line 1717
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1718
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1698
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1699
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1700
    const/4 v1, 0x1

    .line 1703
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1709
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1710
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1706
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1712
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1703
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2101
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2102
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2104
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2108
    :cond_1
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 2109
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1827
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1828
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateScrollStarts()V

    .line 1829
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1588
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1589
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1635
    :cond_0
    :goto_0
    return v2

    .line 1593
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    .line 1594
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1597
    :cond_2
    const/4 v2, 0x0

    .line 1599
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1600
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1602
    if-nez v1, :cond_3

    .line 1603
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1607
    :cond_3
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1608
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1609
    const/4 v2, 0x1

    goto :goto_0

    .line 1615
    :cond_4
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1616
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1617
    const/4 v2, 0x1

    .line 1621
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1623
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1629
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1630
    const/4 v3, 0x1

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1626
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    .line 2667
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2669
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2685
    :cond_0
    return-void

    .line 2671
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2672
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2673
    .local v5, "runEnd":[I
    move v3, p1

    .line 2674
    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2675
    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2676
    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 2677
    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    .line 2681
    :cond_2
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2683
    :cond_3
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1379
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->removeItem(IF)V

    .line 1380
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1390
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1392
    :cond_0
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1394
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 1395
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1396
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1397
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1398
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1399
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1400
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1405
    iput p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1407
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1408
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1418
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1419
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1424
    :cond_3
    :goto_1
    return-void

    .line 1410
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1413
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1421
    :cond_4
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2025
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2026
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2028
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 576
    if-eqz p1, :cond_4

    .line 577
    new-instance v0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    .line 578
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 580
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 581
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V

    .line 583
    :cond_0
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 584
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V

    .line 586
    :cond_1
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 587
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setRemoveListener(Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;)V

    .line 589
    :cond_2
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    if-eqz v0, :cond_3

    .line 590
    check-cast p1, Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V

    .line 596
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 597
    return-void

    .line 593
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2465
    iput-boolean p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 2466
    return-void
.end method

.method public setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    .prologue
    .line 2451
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    .line 2452
    return-void
.end method

.method public setDragScrollProfile(Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    .prologue
    .line 2563
    if-eqz p1, :cond_0

    .line 2564
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    .line 2566
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1733
    invoke-virtual {p0, p1, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1734
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1747
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1748
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1753
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1754
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1759
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateScrollStarts()V

    .line 1762
    :cond_0
    return-void

    .line 1750
    :cond_1
    iput p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1756
    :cond_2
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/lenovo/settings/dslv/DragSortListView$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DragSortListener;

    .prologue
    .line 2549
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V

    .line 2550
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V

    .line 2551
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setRemoveListener(Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;)V

    .line 2552
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V

    .line 2553
    return-void
.end method

.method public setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    .prologue
    .line 2485
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    .line 2486
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 547
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 548
    return-void
.end method

.method public setFloatViewManager(Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .prologue
    .line 2447
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .line 2448
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 561
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 562
    return-void
.end method

.method public setRemoveListener(Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    .line 2512
    return-void
.end method

.method public setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpdateListener:Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .line 2494
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .line 2188
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2197
    :cond_0
    :goto_0
    return v0

    .line 2192
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2194
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2197
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/settings/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2225
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 2284
    :cond_1
    :goto_0
    return v2

    .line 2230
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2231
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2234
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2235
    .local v0, "pos":I
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 2236
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 2237
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 2238
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 2241
    iput v6, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 2242
    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    .line 2243
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    .line 2245
    iput-object p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2246
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2248
    iput p4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    .line 2249
    iput p5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    .line 2250
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragStartY:I

    .line 2253
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2254
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2257
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2259
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2260
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2263
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v3, :cond_5

    .line 2264
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2269
    :cond_5
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 2278
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->requestLayout()V

    .line 2280
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLiftAnimator:Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;

    if-eqz v3, :cond_1

    .line 2281
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLiftAnimator:Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2271
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2274
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 1551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v0, 0x1

    .line 1561
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1562
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1564
    if-eqz p1, :cond_1

    .line 1565
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->removeItem(IF)V

    .line 1574
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1575
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1581
    :cond_0
    :goto_1
    return v0

    .line 1567
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1568
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1570
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1581
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1557
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
