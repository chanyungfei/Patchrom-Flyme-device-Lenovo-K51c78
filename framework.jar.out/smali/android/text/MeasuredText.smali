.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MeasuredText"

.field private static final localLOGV:Z

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 52
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 59
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 60
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 61
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 62
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 63
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 64
    monitor-exit v3

    .line 72
    :goto_0
    return-object v1

    .line 67
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 72
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    goto :goto_0

    .line 67
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 76
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 77
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 78
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 81
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 86
    :cond_0
    monitor-exit v2

    .line 88
    .end local v0    # "i":I
    :cond_1
    return-object v3

    .line 79
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 24
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 160
    sget-boolean v3, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan] start"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    if-eqz p3, :cond_1

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/text/TextPaint;->getFontMetricsInt([CLandroid/graphics/Paint$FontMetricsInt;II)I

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/MeasuredText;->mPos:I

    .line 169
    .local v5, "p":I
    add-int v3, v5, p2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/MeasuredText;->mPos:I

    .line 171
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v3, :cond_5

    .line 172
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v9, 0x1

    .line 173
    .local v9, "isRtl":Z
    :goto_0
    sget-boolean v3, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v3, :cond_2

    .line 174
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan_1] getTextRunAdvances start"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v3, p1

    move/from16 v6, p2

    move v7, v5

    move/from16 v8, p2

    move v11, v5

    invoke-virtual/range {v3 .. v11}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v22

    .line 177
    .local v22, "ret":F
    sget-boolean v3, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    .line 178
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan_1] getTextRunAdvances end"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v22    # "ret":F
    :cond_3
    :goto_1
    return v22

    .line 172
    .end local v9    # "isRtl":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 183
    :cond_5
    const/16 v23, 0x0

    .line 184
    .local v23, "totalAdvance":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v3, v5

    .line 185
    .local v21, "level":I
    move v12, v5

    .local v12, "q":I
    add-int/lit8 v20, v5, 0x1

    .local v20, "i":I
    add-int v19, v5, p2

    .line 186
    .local v19, "e":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v3, v3, v20

    move/from16 v0, v21

    if-eq v3, v0, :cond_c

    .line 187
    :cond_6
    and-int/lit8 v3, v21, 0x1

    if-eqz v3, :cond_a

    const/4 v9, 0x1

    .line 188
    .restart local v9    # "isRtl":Z
    :goto_3
    sget-boolean v3, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v3, :cond_7

    .line 189
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan_2] getTextRunAdvances start"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v13, v20, v12

    sub-int v15, v20, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v17, v0

    move-object/from16 v10, p1

    move v14, v12

    move/from16 v16, v9

    move/from16 v18, v12

    invoke-virtual/range {v10 .. v18}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3

    add-float v23, v23, v3

    .line 193
    sget-boolean v3, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v3, :cond_8

    .line 194
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan_2] getTextRunAdvances end"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_8
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 203
    sget-boolean v3, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v3, :cond_9

    .line 204
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSapn] end"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move/from16 v22, v23

    .line 206
    goto :goto_1

    .line 187
    .end local v9    # "isRtl":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    .line 199
    .restart local v9    # "isRtl":Z
    :cond_b
    move/from16 v12, v20

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v3, v20

    .line 185
    .end local v9    # "isRtl":Z
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 212
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 213
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 215
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 216
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "MeasuredText"

    const-string v3, "[addStyleRun_Span] start"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 220
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_2

    .line 221
    aget-object v8, p2, v7

    .line 222
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_1

    move-object v0, v8

    .line 223
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 220
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 230
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_2
    if-nez v0, :cond_5

    .line 231
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 243
    .local v10, "wid":F
    :goto_2
    if-eqz p4, :cond_3

    .line 244
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_7

    .line 245
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 246
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 252
    :cond_3
    :goto_3
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_4

    .line 253
    const-string v2, "MeasuredText"

    const-string v3, "[addStyleRun_Span] end"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_4
    return v10

    .line 234
    .end local v10    # "wid":F
    :cond_5
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 236
    .restart local v10    # "wid":F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 237
    .local v9, "w":[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 238
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_4
    if-ge v7, v6, :cond_6

    .line 239
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 238
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 240
    :cond_6
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 248
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_7
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 249
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 5
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 260
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 261
    .local v1, "w":[F
    if-eqz p2, :cond_3

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 264
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 265
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    .line 268
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 278
    :goto_2
    return v2

    .line 271
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 272
    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_4

    .line 273
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 274
    cmpg-float v2, p3, v3

    if-gez v2, :cond_5

    .line 277
    :cond_4
    :goto_4
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 275
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 278
    :cond_6
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 285
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 286
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 99
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 100
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 102
    sub-int v6, p3, p2

    .line 103
    .local v6, "len":I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    .line 104
    const/4 v10, 0x0

    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    .line 106
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1

    .line 107
    :cond_0
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 109
    :cond_1
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_3

    .line 110
    :cond_2
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 112
    :cond_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 114
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_7

    move-object v7, p1

    .line 115
    check-cast v7, Landroid/text/Spanned;

    .line 116
    .local v7, "spanned":Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    .line 119
    .local v8, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_7

    .line 120
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 121
    .local v9, "startInPara":I
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 123
    .local v2, "endInPara":I
    if-gez v9, :cond_4

    const/4 v9, 0x0

    .line 124
    :cond_4
    if-le v2, v6, :cond_5

    move v2, v6

    .line 125
    :cond_5
    move v5, v9

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 126
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 119
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "endInPara":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v7    # "spanned":Landroid/text/Spanned;
    .end local v8    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v9    # "startInPara":I
    :cond_7
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_9

    :cond_8
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 135
    const/4 v10, 0x1

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 136
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 157
    :goto_2
    return-void

    .line 138
    :cond_9
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_b

    .line 139
    :cond_a
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 142
    :cond_b
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_c

    .line 143
    const/4 v1, 0x1

    .line 154
    .local v1, "bidiRequest":I
    :goto_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 155
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_2

    .line 144
    .end local v1    # "bidiRequest":I
    :cond_c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_d

    .line 145
    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 146
    .end local v1    # "bidiRequest":I
    :cond_d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_e

    .line 147
    const/4 v1, 0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 148
    .end local v1    # "bidiRequest":I
    :cond_e
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_f

    .line 149
    const/4 v1, -0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 151
    .end local v1    # "bidiRequest":I
    :cond_f
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 152
    .local v4, "isRtl":Z
    if-eqz v4, :cond_10

    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    :goto_4
    goto :goto_3

    .end local v1    # "bidiRequest":I
    :cond_10
    const/4 v1, 0x1

    goto :goto_4
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 92
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 93
    return-void
.end method
