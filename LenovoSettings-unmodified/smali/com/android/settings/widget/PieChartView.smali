.class public Lcom/android/settings/widget/PieChartView;
.super Landroid/view/View;
.source "PieChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/PieChartView$Slice;
    }
.end annotation


# static fields
.field private static final FILL_GRADIENT:Z = false

.field public static final LOGD:Z = false

.field public static final TAG:Ljava/lang/String; = "PieChartView"


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field private mOriginAngle:I

.field private mPaintOutline:Landroid/graphics/Paint;

.field private mPathOutline:Landroid/graphics/Path;

.field private mPathSide:Landroid/graphics/Path;

.field private mPathSideOutline:Landroid/graphics/Path;

.field private mSideWidth:I

.field private mSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/widget/PieChartView$Slice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    .line 89
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PieChartView;->setWillNotDraw(Z)V

    .line 97
    return-void
.end method

.method static synthetic access$000(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/settings/widget/PieChartView;->buildFillPaint(ILandroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private static buildFillPaint(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 2
    .param p0, "color"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 102
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    return-object v0
.end method

.method public static darken(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 239
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 240
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 241
    const/4 v1, 0x2

    aget v2, v0, v1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 242
    const/4 v1, 0x1

    aget v2, v0, v1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 243
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method


# virtual methods
.method public addSlice(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "color"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/widget/PieChartView$Slice;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/widget/PieChartView$Slice;-><init>(Lcom/android/settings/widget/PieChartView;JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public generatePath()V
    .locals 26

    .prologue
    .line 143
    const-wide/16 v20, 0x0

    .line 144
    .local v20, "total":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/widget/PieChartView$Slice;

    .line 145
    .local v12, "slice":Lcom/android/settings/widget/PieChartView$Slice;
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 146
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 147
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 148
    iget-wide v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->value:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    .line 149
    goto :goto_0

    .line 151
    .end local v12    # "slice":Lcom/android/settings/widget/PieChartView$Slice;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 156
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-nez v22, :cond_1

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->invalidate()V

    .line 220
    :goto_1
    return-void

    .line 161
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->getWidth()I

    move-result v19

    .line 162
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->getHeight()I

    move-result v8

    .line 164
    .local v8, "height":I
    new-instance v10, Landroid/graphics/RectF;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v8

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 165
    .local v10, "rect":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 166
    .local v11, "rectSide":Landroid/graphics/RectF;
    invoke-virtual {v11, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 173
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/widget/PieChartView;->mOriginAngle:I

    .line 174
    .local v13, "startAngle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/widget/PieChartView$Slice;

    .line 175
    .restart local v12    # "slice":Lcom/android/settings/widget/PieChartView$Slice;
    iget-wide v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->value:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x168

    mul-long v22, v22, v24

    div-long v22, v22, v20

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    .line 176
    .local v17, "sweepAngle":I
    add-int v4, v13, v17

    .line 178
    .local v4, "endAngle":I
    rem-int/lit16 v0, v13, 0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v14, v0

    .line 179
    .local v14, "startAngleMod":F
    rem-int/lit16 v0, v4, 0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v5, v0

    .line 180
    .local v5, "endAngleMod":F
    const/high16 v22, 0x42b40000    # 90.0f

    cmpl-float v22, v14, v22

    if-lez v22, :cond_6

    const/high16 v22, 0x43870000    # 270.0f

    cmpg-float v22, v14, v22

    if-gez v22, :cond_6

    const/16 v16, 0x1

    .line 181
    .local v16, "startSideVisible":Z
    :goto_3
    const/high16 v22, 0x42b40000    # 90.0f

    cmpl-float v22, v5, v22

    if-lez v22, :cond_7

    const/high16 v22, 0x43870000    # 270.0f

    cmpg-float v22, v5, v22

    if-gez v22, :cond_7

    const/4 v7, 0x1

    .line 184
    .local v7, "endSideVisible":Z
    :goto_4
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 186
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    if-nez v16, :cond_2

    if-eqz v7, :cond_3

    .line 191
    :cond_2
    if-eqz v16, :cond_8

    int-to-float v15, v13

    .line 192
    .local v15, "startAngleSide":F
    :goto_5
    if-eqz v7, :cond_9

    int-to-float v6, v4

    .line 193
    .local v6, "endAngleSide":F
    :goto_6
    sub-float v18, v6, v15

    .line 196
    .local v18, "sweepAngleSide":F
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 197
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v15, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 198
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 199
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v11, v15, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 200
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 201
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v6, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 205
    .end local v6    # "endAngleSide":F
    .end local v15    # "startAngleSide":F
    .end local v18    # "sweepAngleSide":F
    :cond_3
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 207
    if-eqz v16, :cond_4

    .line 208
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 210
    :cond_4
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 211
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    add-int v23, v13, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 212
    if-eqz v7, :cond_5

    .line 213
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 216
    :cond_5
    add-int v13, v13, v17

    .line 217
    goto/16 :goto_2

    .line 180
    .end local v7    # "endSideVisible":Z
    .end local v16    # "startSideVisible":Z
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 181
    .restart local v16    # "startSideVisible":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 191
    .restart local v7    # "endSideVisible":Z
    :cond_8
    const/high16 v15, 0x43e10000    # 450.0f

    goto/16 :goto_5

    .line 192
    .restart local v15    # "startAngleSide":F
    :cond_9
    const/high16 v6, 0x43870000    # 270.0f

    goto/16 :goto_6

    .line 219
    .end local v4    # "endAngle":I
    .end local v5    # "endAngleMod":F
    .end local v7    # "endSideVisible":Z
    .end local v12    # "slice":Lcom/android/settings/widget/PieChartView$Slice;
    .end local v14    # "startAngleMod":F
    .end local v15    # "startAngleSide":F
    .end local v16    # "startSideVisible":Z
    .end local v17    # "sweepAngle":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->invalidate()V

    goto/16 :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PieChartView$Slice;

    .line 227
    .local v1, "slice":Lcom/android/settings/widget/PieChartView$Slice;
    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    iget-object v3, v1, Lcom/android/settings/widget/PieChartView$Slice;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 229
    .end local v1    # "slice":Lcom/android/settings/widget/PieChartView$Slice;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PieChartView$Slice;

    .line 232
    .restart local v1    # "slice":Lcom/android/settings/widget/PieChartView$Slice;
    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    iget-object v3, v1, Lcom/android/settings/widget/PieChartView$Slice;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 235
    .end local v1    # "slice":Lcom/android/settings/widget/PieChartView$Slice;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 236
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 129
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 131
    .local v1, "centerY":F
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 132
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    const v3, 0x3f2a3d71    # 0.665f

    const v4, 0x3f733333    # 0.95f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 133
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x3de00000    # -40.0f

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->generatePath()V

    .line 136
    return-void
.end method

.method public removeAllSlices()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    return-void
.end method

.method public setOriginAngle(I)V
    .locals 0
    .param p1, "originAngle"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/settings/widget/PieChartView;->mOriginAngle:I

    .line 116
    return-void
.end method
