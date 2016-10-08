.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$TextColorHelper;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = #android:layout@number_picker#t

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static SELECTOR_MIDDLE_ITEM_INDEX:I = 0x0

.field private static SELECTOR_WHEEL_ITEM_COUNT:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentOrientation:I

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

.field private mTextHeight:I

.field private mTextOffset:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x3

    sput v0, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 126
    sget v0, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 213
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 2268
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 594
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:^attr-private@numberPickerStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 617
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 633
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 318
    const-wide/16 v22, 0x12c

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 323
    new-instance v21, Landroid/util/SparseArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 330
    sget v21, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 351
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 354
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextOffset:I

    .line 355
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextHeight:I

    .line 456
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mScrollState:I

    .line 507
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    .line 638
    .local v18, "orientation":I
    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 639
    const/16 v21, 0x3

    sput v21, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 640
    sget v21, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v21, v21, 0x2

    sput v21, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 641
    sget v21, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 650
    .end local v18    # "orientation":I
    :cond_0
    :goto_0
    sget-object v21, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 652
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v21, 0x1

    const v22, #android:layout@number_picker#t

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 655
    .local v15, "layoutResId":I
    const v21, #android:layout@number_picker#t

    move/from16 v0, v21

    if-eq v15, v0, :cond_2

    const/16 v21, 0x1

    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 657
    const/16 v21, 0xa

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 660
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 662
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 664
    const/16 v21, 0x1

    const/high16 v22, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 667
    .local v13, "defSelectionDividerHeight":I
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v7, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 670
    const/16 v21, 0x1

    const/high16 v22, 0x42400000    # 48.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v12, v0

    .line 673
    .local v12, "defSelectionDividerDistance":I
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v7, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 676
    const/16 v21, 0x5

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 679
    const/16 v21, 0x6

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 681
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 683
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "minHeight > maxHeight"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 642
    .end local v7    # "attributesArray":Landroid/content/res/TypedArray;
    .end local v12    # "defSelectionDividerDistance":I
    .end local v13    # "defSelectionDividerHeight":I
    .end local v15    # "layoutResId":I
    .restart local v18    # "orientation":I
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 643
    const/16 v21, 0x5

    sput v21, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 644
    sget v21, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v21, v21, 0x2

    sput v21, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 645
    sget v21, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    goto/16 :goto_0

    .line 655
    .end local v18    # "orientation":I
    .restart local v7    # "attributesArray":Landroid/content/res/TypedArray;
    .restart local v15    # "layoutResId":I
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 686
    .restart local v12    # "defSelectionDividerDistance":I
    .restart local v13    # "defSelectionDividerHeight":I
    :cond_3
    const/16 v21, 0x7

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 689
    const/16 v21, 0x8

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 693
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "minWidth > maxWidth"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 696
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 698
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 701
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 704
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v8, v0, [I

    const/16 v21, 0x0

    const v22, #android:attr@colorAccent#t

    aput v22, v8, v21

    .line 705
    .local v8, "attrsArray":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 706
    .local v20, "typedArray":Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    const v22, -0xbe4a0e

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 707
    .local v6, "accentColor":I
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 708
    new-instance v21, Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Landroid/widget/NumberPicker$TextColorHelper;-><init>(Landroid/widget/NumberPicker;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    .line 711
    new-instance v21, Landroid/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 718
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 722
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v14, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 724
    new-instance v16, Landroid/widget/NumberPicker$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 736
    .local v16, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v17, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 750
    .local v17, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    const v21, #android:id@increment#t

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 759
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    const v21, #android:id@decrement#t

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 768
    :goto_5
    const v21, #android:id@numberpicker_input#t

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const-string v22, "/system/fonts/Roboto-Light.ttf"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mFocusColor:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 794
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/NumberPicker$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v24 .. v25}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 823
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 824
    .local v11, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 825
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 826
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v21

    div-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTextSize()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextSize:I

    .line 831
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 832
    .local v19, "paint":Landroid/graphics/Paint;
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 833
    sget-object v21, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 834
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 837
    .local v10, "colors":Landroid/content/res/ColorStateList;
    sget-object v21, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 838
    .local v9, "color":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 839
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 842
    new-instance v21, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-direct/range {v21 .. v24}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 843
    new-instance v21, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    new-instance v23, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v24, 0x40200000    # 2.5f

    invoke-direct/range {v23 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v21 .. v23}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 845
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v21

    if-nez v21, :cond_6

    .line 849
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 853
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mCurrentOrientation:I

    .line 854
    return-void

    .line 696
    .end local v6    # "accentColor":I
    .end local v8    # "attrsArray":[I
    .end local v9    # "color":I
    .end local v10    # "colors":Landroid/content/res/ColorStateList;
    .end local v11    # "configuration":Landroid/view/ViewConfiguration;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v17    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v19    # "paint":Landroid/graphics/Paint;
    .end local v20    # "typedArray":Landroid/content/res/TypedArray;
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 718
    .restart local v6    # "accentColor":I
    .restart local v8    # "attrsArray":[I
    .restart local v20    # "typedArray":Landroid/content/res/TypedArray;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 755
    .restart local v14    # "inflater":Landroid/view/LayoutInflater;
    .restart local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v17    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_9
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4

    .line 764
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_5
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100()[C
    .locals 1

    .prologue
    .line 106
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1780(Landroid/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$2180(Landroid/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$3100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$TextColorHelper;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$6200(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$7100(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 106
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$7400(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1924
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1925
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1926
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1927
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1929
    :cond_0
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1930
    if-eqz p1, :cond_1

    .line 1931
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1935
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1943
    :goto_1
    return-void

    .line 1933
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1937
    :cond_2
    if-eqz p1, :cond_3

    .line 1938
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1940
    :cond_3
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2071
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 2072
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2071
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2074
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 2075
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 2076
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 2078
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 2079
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 2080
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2087
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2088
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2089
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2103
    :goto_0
    return-void

    .line 2092
    :cond_0
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 2093
    :cond_1
    const-string v2, ""

    .line 2102
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2095
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2096
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 2097
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 2098
    goto :goto_1

    .line 2099
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2389
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2390
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2391
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2392
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2393
    if-lez v4, :cond_2

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2395
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2396
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2397
    const/4 v1, 0x1

    .line 2399
    :cond_1
    return v1

    .line 2393
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 2027
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2029
    if-lez p1, :cond_0

    .line 2030
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2035
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2036
    return-void

    .line 2032
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2106
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 3019
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2221
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2223
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2247
    :goto_0
    return v1

    .line 2228
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2230
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2231
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2232
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 2228
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2241
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 2224
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 2247
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 2242
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2042
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 2043
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 2047
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 2044
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 2045
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1406
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1407
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1408
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1409
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1410
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1413
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2055
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2056
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2058
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 2059
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 2060
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 2062
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 2063
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 2064
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1987
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1991
    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1992
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 1947
    iget-object v8, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1948
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v1, v8, Landroid/content/res/Configuration;->fontScale:F

    .line 1949
    .local v1, "fontScal":F
    cmpl-float v8, v1, v7

    if-lez v8, :cond_0

    move v1, v7

    .line 1950
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1951
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1952
    .local v3, "selectorIndices":[I
    array-length v7, v3

    iget v8, p0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v8, v8

    div-float/2addr v8, v1

    float-to-int v8, v8

    mul-int v6, v7, v8

    .line 1953
    .local v6, "totalTextHeight":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1954
    .local v2, "numberPadding":I
    iget v7, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v8, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    int-to-float v5, v7

    .line 1955
    .local v5, "totalTextGapHeight":F
    array-length v7, v3

    int-to-float v4, v7

    .line 1956
    .local v4, "textGapCount":F
    div-float v7, v5, v4

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1957
    iget v7, p0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    float-to-int v7, v7

    iget v8, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1960
    iget-object v7, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBaseline()I

    move-result v7

    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getTop()I

    move-result v8

    add-int v0, v7, v8

    .line 1961
    .local v0, "editTextTextPosition":I
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sget v8, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int/2addr v7, v8

    sub-int v7, v0, v7

    iput v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1963
    iget v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v7, p0, Landroid/widget/NumberPicker;->mTextOffset:I

    .line 1964
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sget v8, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    iput v7, p0, Landroid/widget/NumberPicker;->mTextHeight:I

    .line 1981
    .end local v1    # "fontScal":F
    .end local v2    # "numberPadding":I
    :goto_0
    iget v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v7, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1982
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1983
    return-void

    .line 1967
    .end local v0    # "editTextTextPosition":I
    .end local v3    # "selectorIndices":[I
    .end local v4    # "textGapCount":F
    .end local v5    # "totalTextGapHeight":F
    .end local v6    # "totalTextHeight":I
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1968
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1969
    .restart local v3    # "selectorIndices":[I
    array-length v7, v3

    iget v8, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v6, v7, v8

    .line 1970
    .restart local v6    # "totalTextHeight":I
    iget v7, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v8, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    int-to-float v5, v7

    .line 1971
    .restart local v5    # "totalTextGapHeight":F
    array-length v7, v3

    int-to-float v4, v7

    .line 1972
    .restart local v4    # "textGapCount":F
    div-float v7, v5, v4

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1973
    iget v7, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v8, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1976
    iget-object v7, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBaseline()I

    move-result v7

    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getTop()I

    move-result v8

    add-int v0, v7, v8

    .line 1977
    .restart local v0    # "editTextTextPosition":I
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sget v8, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int/2addr v7, v8

    sub-int v7, v0, v7

    iput v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    goto :goto_0
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1876
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1877
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1878
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1879
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1880
    sget v4, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int v4, v1, v4

    add-int v2, v0, v4

    .line 1881
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1882
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1884
    :cond_0
    aput v2, v3, v1

    .line 1885
    aget v4, v3, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1879
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1887
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1834
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1845
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1837
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1838
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1839
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1847
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1843
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1845
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1839
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 11
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 916
    invoke-virtual {p1, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 919
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    .line 920
    .local v5, "scrollerFinalY":I
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 921
    .local v4, "scrollerCurrY":I
    invoke-virtual {p1}, Landroid/widget/Scroller;->getStartY()I

    move-result v6

    .line 922
    .local v6, "scrollerStartY":I
    if-ge v5, v6, :cond_4

    move v2, v7

    .line 923
    .local v2, "increment":Z
    :goto_0
    if-eqz v2, :cond_0

    if-gt v4, v6, :cond_1

    if-lt v4, v5, :cond_1

    :cond_0
    if-nez v2, :cond_2

    if-gt v4, v5, :cond_1

    if-ge v4, v6, :cond_2

    .line 926
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 929
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v9

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v10

    sub-int v0, v9, v10

    .line 930
    .local v0, "amountToScroll":I
    iget v9, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v9, v0

    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v9, v10

    .line 931
    .local v1, "futureScrollOffset":I
    iget v9, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v3, v9, v1

    .line 932
    .local v3, "overshootAdjustment":I
    if-eqz v3, :cond_6

    .line 933
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v10, v10, 0x2

    if-le v9, v10, :cond_3

    .line 934
    if-lez v3, :cond_5

    .line 935
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v9

    .line 940
    :cond_3
    :goto_1
    add-int/2addr v0, v3

    .line 941
    invoke-virtual {p0, v8, v0}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 944
    :goto_2
    return v7

    .end local v0    # "amountToScroll":I
    .end local v1    # "futureScrollOffset":I
    .end local v2    # "increment":Z
    .end local v3    # "overshootAdjustment":I
    :cond_4
    move v2, v8

    .line 922
    goto :goto_0

    .line 937
    .restart local v0    # "amountToScroll":I
    .restart local v1    # "futureScrollOffset":I
    .restart local v2    # "increment":Z
    .restart local v3    # "overshootAdjustment":I
    :cond_5
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v9

    goto :goto_1

    :cond_6
    move v7, v8

    .line 944
    goto :goto_2
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 2150
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 2153
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 2014
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 2021
    :cond_0
    :goto_0
    return-void

    .line 2017
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 2018
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1998
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1999
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2000
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 2002
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 2008
    :cond_1
    :goto_0
    return-void

    .line 2004
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2005
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 2184
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2185
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 2189
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2190
    return-void

    .line 2187
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 2161
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2162
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2166
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$800(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2167
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2168
    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2255
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2256
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 2260
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$902(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2261
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$1002(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2262
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2263
    return-void

    .line 2258
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 2205
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2208
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2209
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2211
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2212
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2214
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2215
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 2196
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2199
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2177
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1863
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1864
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1865
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1867
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1896
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1914
    :goto_0
    return-void

    .line 1900
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1901
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1906
    :goto_1
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1907
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1908
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1909
    if-eqz p2, :cond_1

    .line 1910
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 1912
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1913
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1903
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1904
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1392
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1393
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1394
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1395
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1397
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1398
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1400
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1419
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    const/4 v4, 0x0

    .line 1423
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1424
    const/4 v3, 0x0

    .line 1425
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1426
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1427
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1428
    move v3, v1

    .line 1425
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1431
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1432
    .local v5, "numberOfDigits":I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1433
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1434
    add-int/lit8 v5, v5, 0x1

    .line 1435
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1437
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1447
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1448
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1449
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1450
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1454
    :goto_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1439
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1440
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1441
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1442
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1443
    float-to-int v4, v6

    .line 1440
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1452
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 2135
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2137
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2138
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2139
    const/4 v1, 0x1

    .line 2142
    :goto_1
    return v1

    .line 2135
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 2142
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2110
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2111
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2113
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 2119
    :goto_0
    return-void

    .line 2116
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2117
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1195
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1196
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1198
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1202
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1203
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1204
    .local v0, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1205
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1207
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1208
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1209
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1210
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1212
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1289
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1284
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1146
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1147
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1190
    :goto_0
    return v4

    .line 1149
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1152
    .local v1, "eventY":I
    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1153
    const/4 v2, 0x3

    .line 1159
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1160
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1162
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1190
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1154
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1155
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1157
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1164
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1166
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1167
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1171
    :pswitch_2
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1173
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1176
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1178
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1179
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1184
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1186
    iput v5, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 1097
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1098
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1129
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 1101
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1105
    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1110
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1112
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 1113
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1114
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1115
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1116
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 1110
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 1116
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 1122
    :pswitch_1
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 1123
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 1098
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1086
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1092
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1089
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1086
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1135
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1141
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1138
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1817
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1818
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1823
    :goto_0
    return-object v0

    .line 1820
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1821
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1823
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1635
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1561
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1294
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1630
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1514
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1467
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2546
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2548
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentOrientation:I

    if-eq v1, v2, :cond_4

    .line 2549
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2550
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2552
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2553
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2556
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2557
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 2558
    const/4 v1, 0x3

    sput v1, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 2562
    :cond_2
    :goto_0
    sget v1, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 2563
    sget v1, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 2564
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9080040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 2565
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2566
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2567
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2570
    .end local v0    # "str":Ljava/lang/String;
    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentOrientation:I

    .line 2572
    :cond_4
    return-void

    .line 2559
    :cond_5
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2560
    const/4 v1, 0x5

    sput v1, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1640
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1641
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1642
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1646
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 1647
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1728
    :cond_0
    :goto_0
    return-void

    .line 1650
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v10

    .line 1651
    .local v10, "showSelectorWheel":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v15, v0

    .line 1652
    .local v15, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1655
    .local v16, "y":F
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 1657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    sget-object v18, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1662
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    sget-object v18, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mBottom:I

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1671
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1672
    .local v9, "selectorIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_c

    .line 1673
    aget v8, v9, v5

    .line 1674
    .local v8, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1681
    .local v7, "scrollSelectorValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1682
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sub-float v12, v17, v18

    .line 1683
    .local v12, "tmpScal":F
    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v18, v18, v12

    add-float v11, v17, v18

    .line 1684
    .local v11, "sizeScal":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1686
    const/high16 v17, 0x3f400000    # 0.75f

    cmpl-float v17, v12, v17

    if-lez v17, :cond_b

    .line 1687
    const/high16 v17, 0x3f400000    # 0.75f

    sub-float v17, v12, v17

    const/high16 v18, 0x40800000    # 4.0f

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 1688
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-le v6, v0, :cond_a

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v6, v17, -0x1

    .line 1693
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    move-object/from16 v18, v0

    aget v18, v18, v6

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 1701
    .end local v6    # "index":I
    .end local v11    # "sizeScal":F
    .end local v12    # "tmpScal":F
    :cond_5
    :goto_4
    if-eqz v7, :cond_8

    if-eqz v10, :cond_6

    sget v17, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_7

    :cond_6
    sget v17, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getVisibility()I

    move-result v17

    if-eqz v17, :cond_8

    .line 1704
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v7, v15, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1706
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    .line 1672
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1650
    .end local v5    # "i":I
    .end local v7    # "scrollSelectorValue":Ljava/lang/String;
    .end local v8    # "selectorIndex":I
    .end local v9    # "selectorIndices":[I
    .end local v10    # "showSelectorWheel":Z
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1690
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v7    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v8    # "selectorIndex":I
    .restart local v9    # "selectorIndices":[I
    .restart local v10    # "showSelectorWheel":Z
    .restart local v11    # "sizeScal":F
    .restart local v12    # "tmpScal":F
    .restart local v15    # "x":F
    .restart local v16    # "y":F
    :cond_a
    if-gez v6, :cond_4

    .line 1691
    const/4 v6, 0x0

    goto :goto_3

    .line 1695
    .end local v6    # "index":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v18, -0x979798

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 1710
    .end local v7    # "scrollSelectorValue":Ljava/lang/String;
    .end local v8    # "selectorIndex":I
    .end local v11    # "sizeScal":F
    .end local v12    # "tmpScal":F
    :cond_c
    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 1712
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1713
    .local v14, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    move/from16 v17, v0

    add-int v4, v14, v17

    .line 1714
    .local v4, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v14, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1718
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1719
    .local v3, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    move/from16 v17, v0

    sub-int v13, v3, v17

    .line 1720
    .local v13, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1724
    .end local v3    # "bottomOfBottomDivider":I
    .end local v4    # "bottomOfTopDivider":I
    .end local v13    # "topOfBottomDivider":I
    .end local v14    # "topOfTopDivider":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->isFocused()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1725
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1808
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1809
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1810
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1811
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1812
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1813
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 949
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 997
    :goto_0
    return v1

    .line 952
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 953
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 997
    goto :goto_0

    .line 955
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 956
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 959
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 960
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 962
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 963
    iget v3, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 964
    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 974
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 975
    iget-object v3, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 976
    iget-object v3, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 977
    iget-object v3, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 978
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 967
    :cond_3
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 968
    iget v3, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 969
    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 979
    :cond_4
    iget-object v3, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 980
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 981
    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 982
    :cond_5
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 983
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 984
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 986
    :cond_6
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 987
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 988
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 991
    :cond_7
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 992
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 858
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 859
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 863
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 866
    .local v6, "msrdHght":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 867
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 868
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 869
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 870
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 871
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 872
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 874
    if-eqz p1, :cond_0

    .line 878
    iget-object v8, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 879
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 881
    :cond_2
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 882
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 884
    iget v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 891
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 892
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 905
    :goto_0
    return-void

    .line 896
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 897
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 898
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 900
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 902
    .local v3, "widthSize":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 904
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1002
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 1003
    :cond_0
    const/4 v10, 0x0

    .line 1080
    :goto_0
    return v10

    .line 1005
    :cond_1
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 1006
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1008
    :cond_2
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1010
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1080
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 1012
    :pswitch_0
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-nez v10, :cond_3

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1016
    .local v1, "currentMoveY":F
    iget v10, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 1017
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 1018
    .local v2, "deltaDownY":I
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 1019
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1020
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1027
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 1023
    :cond_5
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 1024
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1025
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_2

    .line 1030
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 1031
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 1032
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1033
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1036
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    iget-object v10, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1037
    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    mul-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1042
    :goto_3
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 1043
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_7

    .line 1044
    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->fling(I)V

    .line 1045
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1076
    :goto_4
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 1077
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 1039
    .end local v7    # "initialVelocity":I
    :cond_6
    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto :goto_3

    .line 1047
    .restart local v7    # "initialVelocity":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 1048
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1049
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 1050
    .local v4, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_b

    .line 1051
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_8

    .line 1052
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 1053
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    .line 1074
    :goto_5
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_4

    .line 1055
    :cond_8
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    sget v11, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int v8, v10, v11

    .line 1057
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_9

    .line 1058
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1059
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_5

    .line 1061
    :cond_9
    if-gez v8, :cond_a

    .line 1062
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1063
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_5

    .line 1068
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_5

    .line 1072
    .end local v8    # "selectorIndexOffset":I
    :cond_b
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_5

    .line 1010
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1370
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1374
    :goto_0
    return v0

    .line 1371
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1372
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1374
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1379
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_1

    .line 1380
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    .line 1385
    :cond_0
    :goto_0
    return v0

    .line 1381
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1383
    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    .line 1230
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1231
    .local v0, "selectorIndices":[I
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_1

    if-lez p2, :cond_1

    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v3, v4, :cond_1

    .line 1233
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_2

    if-gez p2, :cond_2

    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v3, v4, :cond_2

    .line 1238
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1241
    :cond_2
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v3, p2

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1243
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    add-int/lit8 v3, v3, -0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 1244
    .local v2, "tmpOffset":I
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    mul-int/2addr v4, v2

    add-int v1, v3, v4

    .line 1249
    .local v1, "selectorTextGapHeightTmp":I
    :cond_3
    :goto_1
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v4

    if-le v3, v1, :cond_4

    .line 1251
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1252
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1253
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    invoke-direct {p0, v3, v5}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1256
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_3

    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v4, v2

    if-gt v3, v4, :cond_3

    .line 1258
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1263
    :cond_4
    :goto_2
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v4

    neg-int v4, v1

    if-ge v3, v4, :cond_0

    .line 1265
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1266
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1267
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    invoke-direct {p0, v3, v5}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1270
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_4

    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    add-int/2addr v4, v2

    if-lt v3, v4, :cond_4

    .line 1272
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1612
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1615
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1616
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1618
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1623
    :goto_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1624
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1625
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1621
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1218
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1219
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1220
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1222
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1223
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1225
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1226
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    .prologue
    .line 1327
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1330
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1331
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1332
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1575
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1591
    :goto_0
    return-void

    .line 1578
    :cond_0
    if-gez p1, :cond_1

    .line 1579
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1581
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1582
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1583
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1585
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1586
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1587
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1588
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1589
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1590
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1585
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1537
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1553
    :goto_0
    return-void

    .line 1540
    :cond_0
    if-gez p1, :cond_1

    .line 1541
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1543
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1544
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1545
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1547
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1548
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1549
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1550
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1551
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1552
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1547
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1505
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1506
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1312
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1313
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1303
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1304
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1365
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1488
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1489
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1490
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1492
    :cond_1
    return-void

    .line 1488
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
