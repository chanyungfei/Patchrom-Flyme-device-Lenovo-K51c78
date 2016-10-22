.class abstract Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# static fields
.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private final mBarGap:F

.field private final mBarSize:F

.field private final mBarThickness:F

.field private final mMiddleArrowSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private final mSpin:Z

.field private final mTopBottomArrowSize:F

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 68
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->getToggleColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    const v1, 0x9080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mSize:I

    .line 73
    const v1, 0x908008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarSize:F

    .line 74
    const v1, 0x9080091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mTopBottomArrowSize:F

    .line 75
    const v1, 0x908008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarThickness:F

    .line 76
    const v1, 0x9080090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarGap:F

    .line 77
    iput-boolean v3, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mSpin:Z

    .line 78
    const v1, 0x9080092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mMiddleArrowSize:F

    .line 80
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 82
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    return-void
.end method

.method private getToggleColor(Landroid/content/Context;)I
    .locals 7
    .param p1, "themedContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x907006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 90
    .local v1, "defaultColor":I
    const/4 v4, 0x1

    new-array v0, v4, [I

    const v4, 0x1010429

    aput v4, v0, v6

    .line 91
    .local v0, "attrs":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 92
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 93
    .local v2, "result":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return v2
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .prologue
    .line 201
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 111
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->isLayoutRtl()Z

    move-result v8

    .line 113
    .local v8, "isRtl":Z
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarSize:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mTopBottomArrowSize:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mProgress:F

    invoke-static {v13, v14, v15}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->lerp(FFF)F

    move-result v4

    .line 114
    .local v4, "arrowSize":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarSize:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mMiddleArrowSize:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mProgress:F

    invoke-static {v13, v14, v15}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->lerp(FFF)F

    move-result v10

    .line 116
    .local v10, "middleBarSize":F
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarThickness:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mProgress:F

    invoke-static {v13, v14, v15}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->lerp(FFF)F

    move-result v9

    .line 118
    .local v9, "middleBarCut":F
    const/4 v13, 0x0

    sget v14, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mProgress:F

    invoke-static {v13, v14, v15}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->lerp(FFF)F

    move-result v11

    .line 121
    .local v11, "rotation":F
    if-eqz v8, :cond_1

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-eqz v8, :cond_2

    const/high16 v13, 0x43340000    # 180.0f

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mProgress:F

    invoke-static {v14, v13, v15}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->lerp(FFF)F

    move-result v7

    .line 122
    .local v7, "canvasRotate":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarGap:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mBarThickness:F

    add-float/2addr v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mProgress:F

    invoke-static {v13, v14, v15}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->lerp(FFF)F

    move-result v12

    .line 123
    .local v12, "topBottomBarOffset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 125
    neg-float v13, v10

    const/high16 v14, 0x40000000    # 2.0f

    div-float v2, v13, v14

    .line 127
    .local v2, "arrowEdge":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    add-float v14, v2, v9

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    sub-float v14, v10, v9

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 130
    float-to-double v14, v4

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v5, v14

    .line 131
    .local v5, "arrowWidth":F
    float-to-double v14, v4

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v3, v14

    .line 134
    .local v3, "arrowHeight":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v5, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v14, v12

    invoke-virtual {v13, v2, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v14, v3

    invoke-virtual {v13, v5, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mSpin:Z

    if-eqz v13, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mVerticalMirror:Z

    xor-int/2addr v13, v8

    if-eqz v13, :cond_3

    const/4 v13, -0x1

    :goto_2
    int-to-float v13, v13

    mul-float/2addr v13, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 151
    :cond_0
    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 155
    return-void

    .line 121
    .end local v2    # "arrowEdge":F
    .end local v3    # "arrowHeight":F
    .end local v5    # "arrowWidth":F
    .end local v7    # "canvasRotate":F
    .end local v12    # "topBottomBarOffset":F
    :cond_1
    const/high16 v13, -0x3ccc0000    # -180.0f

    move v14, v13

    goto/16 :goto_0

    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 147
    .restart local v2    # "arrowEdge":F
    .restart local v3    # "arrowHeight":F
    .restart local v5    # "arrowWidth":F
    .restart local v7    # "canvasRotate":F
    .restart local v12    # "topBottomBarOffset":F
    :cond_3
    const/4 v13, 0x1

    goto :goto_2

    .line 148
    :cond_4
    if-eqz v8, :cond_0

    .line 149
    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_3
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, -0x3

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mProgress:F

    return v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method abstract isLayoutRtl()Z
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 160
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 171
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 193
    iput p1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mProgress:F

    .line 194
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->invalidateSelf()V

    .line 195
    return-void
.end method

.method protected setVerticalMirror(Z)V
    .locals 0
    .param p1, "verticalMirror"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/lenovo/component/slidemenu/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 106
    return-void
.end method
