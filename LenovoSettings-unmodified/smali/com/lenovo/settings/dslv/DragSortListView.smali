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

    .line 1672
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2159
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

    .line 1838
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1839
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1841
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1842
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

    .line 1844
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1845
    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1846
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1847
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1844
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1850
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1854
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1856
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1857
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1859
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1867
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1869
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1870
    const/4 v0, -0x2

    .line 1875
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1876
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1877
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    :cond_0
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1882
    :cond_1
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1883
    check-cast v4, Lcom/lenovo/settings/dslv/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/lenovo/settings/dslv/DragSortItemView;->setGravity(I)V

    .line 1891
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1892
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1894
    .local v3, "vis":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1895
    const/4 v3, 0x4

    .line 1898
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1899
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1901
    :cond_4
    return-void

    .line 1872
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1884
    :cond_6
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1885
    check-cast v4, Lcom/lenovo/settings/dslv/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/lenovo/settings/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1530
    .local v0, "firstPos":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1533
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1534
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1535
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1536
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1538
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1540
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
    .line 2034
    const/4 v0, 0x0

    .line 2036
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2038
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2039
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2041
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2042
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2043
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2044
    sub-int/2addr v4, v1

    .line 2045
    sub-int/2addr v3, v1

    .line 2048
    :cond_0
    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2049
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2050
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2053
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2054
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2055
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2073
    :cond_2
    :goto_0
    return v0

    .line 2057
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2058
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2059
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 2060
    :cond_4
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2061
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 2063
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 2066
    :cond_6
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2067
    sub-int/2addr v0, v2

    goto :goto_0

    .line 2068
    :cond_7
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2069
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

    .line 2692
    const/4 v4, 0x0

    .line 2694
    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2695
    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2736
    :goto_0
    return v5

    .line 2698
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2699
    .local v3, "position":I
    move v1, v3

    .line 2700
    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .line 2701
    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    .line 2702
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2701
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2704
    :cond_1
    if-ne v3, v0, :cond_2

    .line 2705
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2707
    :cond_2
    aput v1, p3, v4

    .line 2708
    aput v0, p4, v4

    .line 2709
    add-int/lit8 v4, v4, 0x1

    .line 2710
    move v1, v3

    .line 2711
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 2715
    :cond_3
    if-ne v0, p2, :cond_4

    .line 2720
    move v0, p1

    .line 2722
    :cond_4
    aput v1, p3, v4

    .line 2723
    aput v0, p4, v4

    .line 2724
    add-int/lit8 v4, v4, 0x1

    .line 2726
    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    .line 2727
    aget v6, p3, v5

    if-ne v6, p1, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_5

    .line 2732
    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    .line 2733
    add-int/lit8 v4, v4, -0x1

    :cond_5
    move v5, v4

    .line 2736
    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 1991
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    .line 1992
    .local v1, "isSliding":Z
    :goto_0
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v2, v4, v5

    .line 1993
    .local v2, "maxNonSrcBlankHeight":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 1997
    .local v3, "slideHeight":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_4

    .line 1998
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v4, v5, :cond_2

    .line 1999
    if-eqz v1, :cond_1

    .line 2000
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int v0, v3, v4

    .line 2023
    .local v0, "height":I
    :goto_1
    return v0

    .line 1991
    .end local v0    # "height":I
    .end local v1    # "isSliding":Z
    .end local v2    # "maxNonSrcBlankHeight":I
    .end local v3    # "slideHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2002
    .restart local v1    # "isSliding":Z
    .restart local v2    # "maxNonSrcBlankHeight":I
    .restart local v3    # "slideHeight":I
    :cond_1
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 2004
    .end local v0    # "height":I
    :cond_2
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v4, v5, :cond_3

    .line 2006
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2008
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 2010
    .end local v0    # "height":I
    :cond_4
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v4, :cond_6

    .line 2011
    if-eqz v1, :cond_5

    .line 2012
    add-int v0, p2, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2014
    .end local v0    # "height":I
    :cond_5
    add-int v0, p2, v2

    .restart local v0    # "height":I
    goto :goto_1

    .line 2016
    .end local v0    # "height":I
    :cond_6
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_7

    .line 2018
    add-int v4, p2, v2

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2020
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
    .line 1984
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

    .line 1468
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 1469
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1470
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1471
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1472
    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1770
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1771
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1773
    invoke-virtual {p0, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1775
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1776
    .local v2, "minY":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1779
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1781
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1785
    if-eq v0, v6, :cond_0

    .line 1787
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1791
    :cond_0
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1811
    :cond_1
    :goto_0
    return-void

    .line 1792
    :cond_2
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1796
    if-eq v0, v6, :cond_3

    .line 1798
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1802
    :cond_3
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1804
    :cond_4
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1809
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2387
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2391
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2392
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->invalidate()V

    .line 2394
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1642
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    .line 1643
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1644
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1645
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1647
    :cond_0
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1648
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1649
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->clear()V

    .line 1650
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2302
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2304
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateFloatView()V

    .line 2306
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 2307
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 2309
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2311
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2312
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 2313
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2315
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2316
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->layoutChildren()V

    .line 2319
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2320
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->invalidate()V

    .line 2323
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2324
    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1499
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1500
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1508
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1511
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1515
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1517
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustOnReorder()V

    .line 1518
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1521
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1522
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1526
    :goto_0
    return-void

    .line 1524
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
    .line 742
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 743
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 745
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 748
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 750
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 754
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 756
    .local v1, "childHeight":I
    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 757
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 758
    .local v7, "t":I
    add-int v0, v7, v3

    .line 765
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 766
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 767
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 768
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 769
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 772
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 760
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 761
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1477
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1479
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1480
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1481
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1484
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1486
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustOnReorder()V

    .line 1487
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1488
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 1491
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1492
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1496
    :goto_0
    return-void

    .line 1494
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
    .line 2752
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2753
    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2754
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2755
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2756
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2757
    :cond_1
    const/4 v0, -0x1

    .line 2758
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

    .line 1904
    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return v1

    .line 1908
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1910
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1913
    invoke-direct {p0, p1, v4, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1917
    :cond_2
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1918
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1922
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1923
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1926
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1927
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1928
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1931
    :cond_3
    if-ltz v2, :cond_5

    .line 1932
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1933
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1934
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1944
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1947
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1936
    :cond_4
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1940
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

    .line 1954
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 1980
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1959
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

    .line 1960
    :cond_2
    move-object v0, p2

    .line 1965
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1967
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1968
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1969
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1962
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

    .line 1973
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1975
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1976
    :cond_5
    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1977
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 823
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 829
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
    .line 904
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 905
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 911
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 958
    :goto_0
    return v3

    .line 915
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 919
    .local v2, "divHeight":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 920
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 921
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 925
    .local v4, "itemHeight":I
    move v8, p2

    .line 926
    .local v8, "otop":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 929
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 930
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 931
    add-int v9, p2, v4

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 952
    :cond_2
    :goto_1
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 953
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

    .line 933
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 934
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 935
    goto :goto_1

    .line 936
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 937
    sub-int v8, p2, v5

    goto :goto_1

    .line 943
    :cond_5
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 944
    add-int v8, p2, v5

    goto :goto_1

    .line 945
    :cond_6
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 946
    sub-int v0, v4, v1

    .line 947
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 955
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
    .line 2762
    const/4 v1, 0x0

    .line 2763
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2764
    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    .line 2765
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2766
    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 2767
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2769
    :cond_0
    move v0, v2

    goto :goto_0

    .line 2771
    .end local v2    # "middle":I
    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    .line 2164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 2165
    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2097
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2098
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 2100
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2077
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2078
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2079
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2081
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2083
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

    .line 2086
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2087
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2091
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2092
    return-void

    .line 2089
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
    .line 835
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

    .line 837
    return-void
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    .line 2740
    sub-int v0, p3, p2

    .line 2742
    .local v0, "windowSize":I
    add-int/2addr p0, p1

    .line 2743
    if-ge p0, p2, :cond_1

    .line 2744
    add-int/2addr p0, v0

    .line 2748
    :cond_0
    :goto_0
    return p0

    .line 2745
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2746
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1654
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1655
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastX:I

    .line 1656
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    .line 1658
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    .line 1659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    .line 1660
    if-nez v0, :cond_1

    .line 1661
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastX:I

    .line 1662
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    .line 1664
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mOffsetX:I

    .line 1665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mOffsetY:I

    .line 1666
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2332
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2333
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iget v11, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2334
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2337
    :cond_0
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2338
    .local v2, "floatX":I
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2341
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2342
    .local v7, "padLeft":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2343
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2349
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2350
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2351
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2352
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2354
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2355
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2356
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2358
    :cond_2
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2359
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2360
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2365
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2366
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2367
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2369
    :cond_4
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2370
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2371
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2375
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2376
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2382
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    .line 2383
    return-void

    .line 2344
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

    .line 2345
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2377
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

    .line 2378
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 964
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 965
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 967
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 969
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 971
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 973
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 975
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 976
    .local v5, "edge":I
    move v13, v5

    .line 978
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 980
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 981
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 982
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 984
    :goto_0
    if-ltz v11, :cond_1

    .line 985
    add-int/lit8 v11, v11, -0x1

    .line 986
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 988
    if-nez v11, :cond_7

    .line 989
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1025
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1026
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1028
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1030
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1031
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1032
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1034
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1035
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1038
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 1039
    move v6, v5

    .line 1040
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1046
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

    .line 1047
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1048
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1049
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1052
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1053
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1054
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1055
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

    .line 1072
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

    .line 1073
    move v11, v15

    .line 1074
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1075
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1082
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

    .line 1084
    :cond_3
    const/16 v26, 0x1

    .line 1087
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1092
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1093
    const/16 v26, 0x1

    .line 1096
    :cond_6
    return v26

    .line 993
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 994
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 996
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 1000
    move v13, v5

    goto/16 :goto_0

    .line 1004
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 1005
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 1006
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 1007
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 1008
    goto/16 :goto_1

    .line 1011
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 1012
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1013
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1016
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1020
    move v13, v5

    .line 1021
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1042
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

    .line 1043
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1056
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

    .line 1057
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1058
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1060
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1061
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1062
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

    .line 1067
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

    .line 1068
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1076
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

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1078
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1079
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1815
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1816
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1818
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1819
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1821
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1822
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1824
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1825
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1826
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1453
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1455
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1456
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1457
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 1459
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1460
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1462
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

    .line 776
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 778
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 780
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 781
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 783
    :cond_0
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 784
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 791
    .local v9, "w":I
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 807
    .local v8, "h":I
    const/16 v7, 0xff

    .line 809
    .local v7, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 810
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 811
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 813
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v5, 0xff

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 814
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 815
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 816
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 818
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
    .line 2291
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2292
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2294
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2299
    :goto_0
    return-void

    .line 2298
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method public getDropListener()Lcom/lenovo/settings/dslv/DragSortListView$DropListener;
    .locals 1

    .prologue
    .line 2492
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
    .line 610
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 613
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
    .line 2500
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpdateListener:Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2472
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2116
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2118
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2123
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2126
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2128
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1669
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

    .line 2624
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2625
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2626
    .local v3, "rangeStart":I
    move v2, p2

    .line 2627
    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    .line 2628
    move v3, p2

    .line 2629
    move v2, p1

    .line 2631
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2633
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2634
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2635
    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2636
    .local v4, "runCount":I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    .line 2654
    :cond_1
    return-void

    .line 2642
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2643
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 2644
    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2645
    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2649
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_1

    .line 2650
    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2651
    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2649
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1439
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

    .line 1440
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1442
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1443
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1446
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 2133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2156
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2135
    :pswitch_0
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_CANCEL"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v0, v2, :cond_0

    .line 2137
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->cancelDrag()V

    .line 2139
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2143
    :pswitch_1
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_UP"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v0, v2, :cond_1

    .line 2145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2147
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2151
    :pswitch_2
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_MOVE"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2133
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
    .line 1101
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1103
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1106
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1676
    iget-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1677
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1724
    :cond_0
    :goto_0
    return v1

    .line 1680
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1681
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1685
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 1686
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v3, :cond_2

    .line 1688
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1689
    goto :goto_0

    .line 1691
    :cond_2
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1694
    :cond_3
    const/4 v1, 0x0

    .line 1697
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1699
    const/4 v1, 0x1

    .line 1720
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1721
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1701
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1702
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1703
    const/4 v1, 0x1

    .line 1706
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1712
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1713
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1709
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1715
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1706
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
    .line 2104
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2105
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2106
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2111
    :cond_1
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 2112
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1830
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1831
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateScrollStarts()V

    .line 1832
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

    .line 1591
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1592
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1638
    :cond_0
    :goto_0
    return v2

    .line 1596
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    .line 1597
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1600
    :cond_2
    const/4 v2, 0x0

    .line 1602
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1603
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1605
    if-nez v1, :cond_3

    .line 1606
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1610
    :cond_3
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1611
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1612
    const/4 v2, 0x1

    goto :goto_0

    .line 1618
    :cond_4
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1619
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1620
    const/4 v2, 0x1

    .line 1624
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1626
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1632
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1633
    const/4 v3, 0x1

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1629
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1626
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

    .line 2670
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2672
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2688
    :cond_0
    return-void

    .line 2674
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2675
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2676
    .local v5, "runEnd":[I
    move v3, p1

    .line 2677
    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2678
    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2679
    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 2680
    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    .line 2684
    :cond_2
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2686
    :cond_3
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->removeItem(IF)V

    .line 1383
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1393
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1395
    :cond_0
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 1398
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1399
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1400
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1401
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1402
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1403
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1407
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1408
    iput p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1410
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1411
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1421
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1422
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1427
    :cond_3
    :goto_1
    return-void

    .line 1413
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1416
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1424
    :cond_4
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2028
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2029
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2031
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

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 584
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V

    .line 586
    :cond_0
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 587
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V

    .line 589
    :cond_1
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 590
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setRemoveListener(Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;)V

    .line 592
    :cond_2
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    if-eqz v0, :cond_3

    .line 593
    check-cast p1, Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V

    .line 599
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 600
    return-void

    .line 596
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    goto :goto_1

    .line 580
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2468
    iput-boolean p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 2469
    return-void
.end method

.method public setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    .line 2455
    return-void
.end method

.method public setDragScrollProfile(Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    .prologue
    .line 2566
    if-eqz p1, :cond_0

    .line 2567
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    .line 2569
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1736
    invoke-virtual {p0, p1, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1737
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1750
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1751
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1756
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1757
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1762
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateScrollStarts()V

    .line 1765
    :cond_0
    return-void

    .line 1753
    :cond_1
    iput p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1759
    :cond_2
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/lenovo/settings/dslv/DragSortListView$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DragSortListener;

    .prologue
    .line 2552
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V

    .line 2553
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V

    .line 2554
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setRemoveListener(Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;)V

    .line 2555
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V

    .line 2556
    return-void
.end method

.method public setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    .line 2489
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
    .line 2450
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .line 2451
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
    .line 2514
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    .line 2515
    return-void
.end method

.method public setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpdateListener:Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .line 2497
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

    .line 2191
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2200
    :cond_0
    :goto_0
    return v0

    .line 2195
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2197
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2200
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

    .line 2228
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

    .line 2287
    :cond_1
    :goto_0
    return v2

    .line 2233
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2234
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2237
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2238
    .local v0, "pos":I
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 2239
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 2240
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 2241
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 2244
    iput v6, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 2245
    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    .line 2246
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    .line 2248
    iput-object p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2249
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2251
    iput p4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    .line 2252
    iput p5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    .line 2253
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragStartY:I

    .line 2256
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2257
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2260
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2262
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2263
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v3, :cond_5

    .line 2267
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2272
    :cond_5
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 2281
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->requestLayout()V

    .line 2283
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLiftAnimator:Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;

    if-eqz v3, :cond_1

    .line 2284
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLiftAnimator:Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2274
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2277
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2272
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
    .line 1554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1555
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

    .line 1564
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1565
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1567
    if-eqz p1, :cond_1

    .line 1568
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->removeItem(IF)V

    .line 1577
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1584
    :cond_0
    :goto_1
    return v0

    .line 1570
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1571
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1573
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1584
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1560
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
