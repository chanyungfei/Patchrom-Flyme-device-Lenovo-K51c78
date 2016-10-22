.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# static fields
.field private static final ESTIMATE_ENABLED:Z = false

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ChartNetworkSeriesView"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mSafeRegion:I

.field private mSecondary:Z

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v9, -0x10000

    const/4 v8, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 72
    iput-boolean v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 73
    iput-boolean v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 74
    iput-boolean v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 90
    sget-object v5, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v5, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 94
    .local v4, "stroke":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 95
    .local v1, "fill":I
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 97
    .local v2, "fillSecondary":I
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 100
    .local v3, "safeRegion":I
    invoke-virtual {p0, v4, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 101
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSafeRegion(I)V

    .line 102
    invoke-virtual {p0, v8}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 107
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    .line 108
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    .line 109
    return-void
.end method

.method private generatePath()V
    .locals 30

    .prologue
    .line 175
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 179
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v24

    .line 187
    .local v24, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v10

    .line 190
    .local v10, "height":I
    const/16 v21, 0x0

    .line 191
    .local v21, "started":Z
    const/4 v14, 0x0

    .line 192
    .local v14, "lastX":F
    int-to-float v15, v10

    .line 193
    .local v15, "lastY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v12

    .line 196
    .local v12, "lastTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 202
    const-wide/16 v22, 0x0

    .line 204
    .local v22, "totalData":J
    const/4 v9, 0x0

    .line 206
    .local v9, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v16

    .line 207
    .local v16, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v4

    .line 208
    .local v4, "end":I
    move/from16 v11, v16

    .local v11, "i":I
    :goto_1
    if-gt v11, v4, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v9}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    .line 211
    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v18, v0

    .line 212
    .local v18, "startTime":J
    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-wide/from16 v26, v0

    add-long v6, v18, v26

    .line 214
    .local v6, "endTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v17

    .line 215
    .local v17, "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    .line 218
    .local v5, "endX":F
    const/16 v25, 0x0

    cmpg-float v25, v5, v25

    if-gez v25, :cond_2

    .line 208
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 223
    :cond_2
    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v26, v0

    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    add-long v22, v22, v26

    .line 225
    move/from16 v20, v15

    .line 226
    .local v20, "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v8

    .line 228
    .local v8, "endY":F
    cmp-long v25, v12, v18

    if-eqz v25, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    move v14, v5

    .line 239
    move v15, v8

    .line 240
    move-wide v12, v6

    goto :goto_2

    .line 244
    .end local v5    # "endX":F
    .end local v6    # "endTime":J
    .end local v8    # "endY":F
    .end local v17    # "startX":F
    .end local v18    # "startTime":J
    .end local v20    # "startY":F
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-gez v25, :cond_5

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v26, v0

    invoke-interface/range {v25 .. v27}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v14

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    int-to-float v0, v10

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    int-to-float v0, v10

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 149
    return-void
.end method

.method public getMaxEstimate()J
    .locals 2

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 10

    .prologue
    .line 314
    iget-boolean v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v1, :cond_1

    iget-wide v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    .line 315
    .local v8, "maxVisible":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 318
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v8, v2, v4

    .line 320
    .end local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v8    # "maxVisible":J
    :cond_0
    return-wide v8

    .line 314
    :cond_1
    iget-wide v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    goto :goto_0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .prologue
    .line 112
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 113
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 114
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 164
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 328
    iget-boolean v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v2, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->generatePath()V

    .line 332
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 334
    .local v1, "save":I
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 335
    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 336
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 339
    .end local v1    # "save":I
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 341
    .local v0, "paintFill":Landroid/graphics/Paint;
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 342
    .restart local v1    # "save":I
    iget v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v2, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 343
    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 344
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 345
    return-void

    .line 339
    .end local v0    # "paintFill":Landroid/graphics/Paint;
    .end local v1    # "save":I
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public setBounds(JJ)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    .line 153
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    .line 154
    return-void
.end method

.method public setChartColor(III)V
    .locals 4
    .param p1, "stroke"    # I
    .param p2, "fill"    # I
    .param p3, "fillSecondary"    # I

    .prologue
    const/4 v3, 0x1

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 139
    return-void

    .line 138
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 302
    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 1
    .param p1, "estimateVisible"    # Z

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 307
    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0
    .param p1, "safeRegion"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    .line 143
    return-void
.end method

.method public setSecondary(Z)V
    .locals 0
    .param p1, "secondary"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 158
    return-void
.end method
