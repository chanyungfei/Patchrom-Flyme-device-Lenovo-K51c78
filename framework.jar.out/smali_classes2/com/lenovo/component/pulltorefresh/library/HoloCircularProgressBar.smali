.class public Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;
.super Landroid/view/View;
.source "HoloCircularProgressBar.java"


# static fields
.field private static final INSTANCE_STATE_MARKER_PROGRESS:Ljava/lang/String; = "marker_progress"

.field private static final INSTANCE_STATE_MARKER_VISIBLE:Ljava/lang/String; = "marker_visible"

.field private static final INSTANCE_STATE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_STATE_PROGRESS_BACKGROUND_COLOR:Ljava/lang/String; = "progress_background_color"

.field private static final INSTANCE_STATE_PROGRESS_COLOR:Ljava/lang/String; = "progress_color"

.field private static final INSTANCE_STATE_SAVEDSTATE:Ljava/lang/String; = "saved_state"

.field private static final INSTANCE_STATE_THUMB_VISIBLE:Ljava/lang/String; = "thumb_visible"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundColorPaint:Landroid/graphics/Paint;

.field private final mCircleBounds:Landroid/graphics/RectF;

.field private mCircleStrokeWidth:I

.field private mGravity:I

.field private mHorizontalInset:I

.field private mIsInitializing:Z

.field private mIsMarkerEnabled:Z

.field private mIsThumbEnabled:Z

.field private mMarkerColorPaint:Landroid/graphics/Paint;

.field private mMarkerProgress:F

.field private mOverrdraw:Z

.field private mProgress:F

.field private mProgressBackgroundColor:I

.field private mProgressColor:I

.field private mProgressColorPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private final mSquareRect:Landroid/graphics/RectF;

.field private mThumbColorPaint:Landroid/graphics/Paint;

.field private mThumbPosX:F

.field private mThumbPosY:F

.field private mThumbRadius:I

.field private mTranslationOffsetX:F

.field private mTranslationOffsetY:F

.field private mVerticalInset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 221
    const v0, 0x901003f

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    .line 80
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mSquareRect:Landroid/graphics/RectF;

    .line 85
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    .line 90
    const/16 v1, 0xa

    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    .line 97
    iput v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mGravity:I

    .line 103
    iput v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mHorizontalInset:I

    .line 109
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsInitializing:Z

    .line 114
    iput-boolean v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    .line 119
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsThumbEnabled:Z

    .line 129
    iput v4, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerProgress:F

    .line 134
    iput-boolean v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mOverrdraw:Z

    .line 139
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgress:F

    .line 166
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    .line 187
    const/16 v1, 0x14

    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    .line 203
    iput v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mVerticalInset:I

    .line 236
    sget-object v1, Lcom/lenovo/internal/R$styleable;->HoloCircularProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    .local v0, "attributes":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 241
    const/4 v1, 0x4

    const v2, -0xff0001

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setProgressColor(I)V

    .line 243
    const/4 v1, 0x5

    const v2, -0xff0100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setProgressBackgroundColor(I)V

    .line 246
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setProgress(F)V

    .line 248
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setMarkerProgress(F)V

    .line 251
    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setWheelSize(I)V

    .line 253
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setThumbEnabled(Z)V

    .line 255
    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setMarkerEnabled(Z)V

    .line 258
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    :cond_0
    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    .line 269
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateBackgroundColor()V

    .line 271
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateMarkerColor()V

    .line 273
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateProgressColor()V

    .line 276
    iput-boolean v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsInitializing:Z

    .line 278
    return-void

    .line 263
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private computeInsets(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 576
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mGravity:I

    .line 577
    .local v0, "absoluteGravity":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 578
    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mGravity:I

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 581
    :cond_0
    and-int/lit8 v1, v0, 0x7

    packed-switch v1, :pswitch_data_0

    .line 590
    :pswitch_0
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mHorizontalInset:I

    .line 593
    :goto_0
    and-int/lit8 v1, v0, 0x70

    sparse-switch v1, :sswitch_data_0

    .line 602
    div-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mVerticalInset:I

    .line 605
    :goto_1
    return-void

    .line 583
    :pswitch_1
    iput v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mHorizontalInset:I

    goto :goto_0

    .line 586
    :pswitch_2
    iput p1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mHorizontalInset:I

    goto :goto_0

    .line 595
    :sswitch_0
    iput v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mVerticalInset:I

    goto :goto_1

    .line 598
    :sswitch_1
    iput p2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mVerticalInset:I

    goto :goto_1

    .line 581
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 593
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getCurrentRotation()F
    .locals 2

    .prologue
    .line 613
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgress:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getMarkerRotation()F
    .locals 2

    .prologue
    .line 622
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerProgress:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private updateBackgroundColor()V
    .locals 2

    .prologue
    .line 629
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    .line 630
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 632
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 634
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->invalidate()V

    .line 635
    return-void
.end method

.method private updateMarkerColor()V
    .locals 2

    .prologue
    .line 641
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerColorPaint:Landroid/graphics/Paint;

    .line 642
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 643
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 644
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 646
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->invalidate()V

    .line 647
    return-void
.end method

.method private updateProgressColor()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 653
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    .line 654
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 655
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 656
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 658
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    .line 659
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 660
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 661
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 663
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->invalidate()V

    .line 664
    return-void
.end method


# virtual methods
.method public getCircleStrokeWidth()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    return v0
.end method

.method public getMarkerProgress()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerProgress:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgress:F

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColor:I

    return v0
.end method

.method public isMarkerEnabled()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    return v0
.end method

.method public isThumbEnabled()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsThumbEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v12, 0x42b40000    # 90.0f

    const-wide v10, 0x3ff6666666666666L    # 1.4

    .line 286
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mTranslationOffsetX:F

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mTranslationOffsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getCurrentRotation()F

    move-result v7

    .line 291
    .local v7, "progressRotation":F
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mOverrdraw:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    sub-float v0, v8, v7

    neg-float v3, v0

    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mOverrdraw:Z

    if-eqz v0, :cond_3

    move v3, v8

    :goto_0
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 301
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getMarkerRotation()F

    move-result v6

    .line 304
    .local v6, "markerRotation":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 305
    sub-float v0, v6, v12

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 306
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosX:F

    float-to-double v0, v0

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    double-to-float v1, v0

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosY:F

    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosX:F

    float-to-double v4, v0

    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v8, v0

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    double-to-float v3, v4

    iget v4, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosY:F

    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerColorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 311
    .end local v6    # "markerRotation":F
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->isThumbEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 314
    sub-float v0, v7, v12

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 316
    const/high16 v0, 0x42340000    # 45.0f

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosX:F

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 317
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mSquareRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosX:F

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 318
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mSquareRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosX:F

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 319
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mSquareRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosY:F

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 320
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mSquareRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosY:F

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 321
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mSquareRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 324
    :cond_2
    return-void

    :cond_3
    move v3, v7

    .line 297
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5, p2}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getDefaultSize(II)I

    move-result v3

    .line 331
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5, p1}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->getDefaultSize(II)I

    move-result v4

    .line 336
    .local v4, "width":I
    if-nez p2, :cond_0

    .line 338
    move v0, v4

    .line 339
    .local v0, "diameter":I
    invoke-direct {p0, v7, v7}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->computeInsets(II)V

    .line 350
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setMeasuredDimension(II)V

    .line 352
    int-to-float v5, v0

    mul-float v2, v5, v8

    .line 356
    .local v2, "halfWidth":F
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->isThumbEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    iget v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbRadius:I

    int-to-float v5, v5

    const v6, 0x3f555555

    mul-float v1, v5, v6

    .line 365
    .local v1, "drawedWith":F
    :goto_1
    sub-float v5, v2, v1

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mRadius:F

    .line 367
    iget-object v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    iget v6, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mRadius:F

    neg-float v6, v6

    iget v7, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mRadius:F

    neg-float v7, v7

    iget v8, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mRadius:F

    iget v9, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mRadius:F

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 369
    iget v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mRadius:F

    float-to-double v6, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosX:F

    .line 370
    iget v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mRadius:F

    float-to-double v6, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mThumbPosY:F

    .line 372
    iget v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mHorizontalInset:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iput v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mTranslationOffsetX:F

    .line 373
    iget v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mVerticalInset:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iput v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mTranslationOffsetY:F

    .line 375
    return-void

    .line 340
    .end local v0    # "diameter":I
    .end local v1    # "drawedWith":F
    .end local v2    # "halfWidth":F
    :cond_0
    if-nez p1, :cond_1

    .line 342
    move v0, v3

    .line 343
    .restart local v0    # "diameter":I
    invoke-direct {p0, v7, v7}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->computeInsets(II)V

    goto :goto_0

    .line 346
    .end local v0    # "diameter":I
    :cond_1
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 347
    .restart local v0    # "diameter":I
    sub-int v5, v4, v0

    sub-int v6, v3, v0

    invoke-direct {p0, v5, v6}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->computeInsets(II)V

    goto :goto_0

    .line 358
    .restart local v2    # "halfWidth":F
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->isMarkerEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 359
    iget v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v5, v5

    const v6, 0x3fb33333    # 1.4f

    mul-float v1, v5, v6

    .restart local v1    # "drawedWith":F
    goto :goto_1

    .line 361
    .end local v1    # "drawedWith":F
    :cond_3
    iget v5, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v1, v5, v6

    .restart local v1    # "drawedWith":F
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 379
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 380
    check-cast v0, Landroid/os/Bundle;

    .line 381
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "progress"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setProgress(F)V

    .line 382
    const-string v3, "marker_progress"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->setMarkerProgress(F)V

    .line 384
    const-string v3, "progress_color"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 385
    .local v2, "progressColor":I
    iget v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColor:I

    if-eq v2, v3, :cond_0

    .line 386
    iput v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColor:I

    .line 387
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateProgressColor()V

    .line 390
    :cond_0
    const-string v3, "progress_background_color"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 392
    .local v1, "progressBackgroundColor":I
    iget v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressBackgroundColor:I

    if-eq v1, v3, :cond_1

    .line 393
    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressBackgroundColor:I

    .line 394
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateBackgroundColor()V

    .line 397
    :cond_1
    const-string v3, "thumb_visible"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsThumbEnabled:Z

    .line 399
    const-string v3, "marker_visible"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    .line 401
    const-string v3, "saved_state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 406
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "progressBackgroundColor":I
    .end local v2    # "progressColor":I
    :goto_0
    return-void

    .line 405
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_state"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    const-string v1, "progress"

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgress:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 413
    const-string v1, "marker_progress"

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerProgress:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 414
    const-string v1, "progress_color"

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string v1, "progress_background_color"

    iget v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string v1, "thumb_visible"

    iget-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsThumbEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    const-string v1, "marker_visible"

    iget-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 418
    return-object v0
.end method

.method public setMarkerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    .line 472
    return-void
.end method

.method public setMarkerProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    .line 481
    iput p1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mMarkerProgress:F

    .line 482
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 490
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 495
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mOverrdraw:Z

    .line 496
    iput v1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgress:F

    .line 508
    :goto_1
    iget-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsInitializing:Z

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->invalidate()V

    goto :goto_0

    .line 499
    :cond_2
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mOverrdraw:Z

    .line 505
    :goto_2
    rem-float v0, p1, v1

    iput v0, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgress:F

    goto :goto_1

    .line 502
    :cond_3
    iput-boolean v2, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mOverrdraw:Z

    goto :goto_2
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressBackgroundColor:I

    .line 521
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateMarkerColor()V

    .line 522
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateBackgroundColor()V

    .line 523
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 531
    iput p1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mProgressColor:I

    .line 533
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateProgressColor()V

    .line 534
    return-void
.end method

.method public setThumbEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mIsThumbEnabled:Z

    .line 543
    return-void
.end method

.method public setWheelSize(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 551
    iput p1, p0, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->mCircleStrokeWidth:I

    .line 554
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateBackgroundColor()V

    .line 555
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateMarkerColor()V

    .line 556
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/HoloCircularProgressBar;->updateProgressColor()V

    .line 557
    return-void
.end method
