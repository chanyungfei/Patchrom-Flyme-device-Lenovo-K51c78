.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$PackedIntVectorForTest;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static DEBUG_LOG:Z = false

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_NORMAL:[C

.field private static final ELLIPSIS_STRING:Ljava/lang/String;

.field static final ELLIPSIS_TWO_DOTS:[C

.field private static final ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final LAST_SPAN:I = 0x18

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    .line 74
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    .line 76
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    .line 77
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    .line 684
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1904
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 1906
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1908
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 1912
    const-string v0, "Arab"

    sput-object v0, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 1913
    const-string v0, "Hebr"

    sput-object v0, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 1919
    const-string v0, "debug.text"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Parcel;
    .param p1, "x1"    # Landroid/text/Spannable;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;

    .prologue
    .line 1218
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 22
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1228
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v2

    .line 1230
    .local v2, "mt":Landroid/text/MeasuredText;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1231
    .local v6, "len":I
    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    .line 1232
    .local v20, "width":F
    cmpg-float v3, v20, p2

    if-gtz v3, :cond_0

    .line 1286
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .line 1236
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    iget-object v8, v2, Landroid/text/MeasuredText;->mChars:[C

    .line 1238
    .local v8, "buf":[C
    const/4 v9, 0x0

    .line 1239
    .local v9, "commaCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_2

    .line 1240
    aget-char v3, v8, v12

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    .line 1241
    add-int/lit8 v9, v9, 0x1

    .line 1239
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1245
    :cond_2
    add-int/lit8 v17, v9, 0x1

    .line 1247
    .local v17, "remaining":I
    const/4 v14, 0x0

    .line 1248
    .local v14, "ok":I
    const-string v15, ""

    .line 1250
    .local v15, "okFormat":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1251
    .local v19, "w":I
    const/4 v10, 0x0

    .line 1252
    .local v10, "count":I
    iget-object v0, v2, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v21, v0

    .line 1254
    .local v21, "widths":[F
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v18

    .line 1255
    .local v18, "tempMt":Landroid/text/MeasuredText;
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_5

    .line 1256
    move/from16 v0, v19

    int-to-float v3, v0

    aget v4, v21, v12

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v19, v0

    .line 1258
    aget-char v3, v8, v12

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_3

    .line 1259
    add-int/lit8 v10, v10, 0x1

    .line 1264
    add-int/lit8 v17, v17, -0x1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 1265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1271
    .local v11, "format":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v11, v3, v4, v1}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1272
    move-object/from16 v0, v18

    iget v3, v0, Landroid/text/MeasuredText;->mLen:I

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 1274
    .local v13, "moreWid":F
    move/from16 v0, v19

    int-to-float v3, v0

    add-float/2addr v3, v13

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_3

    .line 1275
    add-int/lit8 v14, v12, 0x1

    .line 1276
    move-object v15, v11

    .line 1255
    .end local v11    # "format":Ljava/lang/String;
    .end local v13    # "moreWid":F
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1267
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "format":Ljava/lang/String;
    goto :goto_3

    .line 1280
    .end local v11    # "format":Ljava/lang/String;
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1282
    new-instance v16, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1283
    .local v16, "out":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4, v14}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v16

    goto/16 :goto_0

    .end local v6    # "len":I
    .end local v8    # "buf":[C
    .end local v9    # "commaCount":I
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v14    # "ok":I
    .end local v15    # "okFormat":Ljava/lang/String;
    .end local v16    # "out":Landroid/text/SpannableStringBuilder;
    .end local v17    # "remaining":I
    .end local v18    # "tempMt":Landroid/text/MeasuredText;
    .end local v19    # "w":I
    .end local v20    # "width":F
    .end local v21    # "widths":[F
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v3
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "text"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1403
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1404
    const-string v0, ""

    .line 1440
    :goto_0
    return-object v0

    .line 1407
    :cond_0
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1408
    aget-object v0, p0, v1

    goto :goto_0

    .line 1411
    :cond_1
    const/4 v8, 0x0

    .line 1412
    .local v8, "spanned":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 1413
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 1414
    const/4 v8, 0x1

    .line 1419
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1420
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_2
    array-length v0, p0

    if-ge v6, v0, :cond_4

    .line 1421
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1420
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1412
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1424
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    if-nez v8, :cond_5

    .line 1425
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1428
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1429
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1430
    .local v5, "off":I
    const/4 v6, 0x0

    :goto_3
    array-length v0, p0

    if-ge v6, v0, :cond_7

    .line 1431
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1433
    .local v2, "len":I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 1434
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1437
    :cond_6
    add-int/2addr v5, v2

    .line 1430
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1440
    .end local v2    # "len":I
    :cond_7
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    .prologue
    .line 1026
    if-nez p3, :cond_0

    .line 1027
    const-class p3, Ljava/lang/Object;

    .line 1030
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1032
    .local v3, "spans":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 1033
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1034
    .local v4, "st":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1035
    .local v0, "en":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 1037
    .local v1, "fl":I
    if-ge v4, p1, :cond_1

    .line 1038
    move v4, p1

    .line 1039
    :cond_1
    if-le v0, p2, :cond_2

    .line 1040
    move v0, p2

    .line 1042
    :cond_2
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1032
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1045
    .end local v0    # "en":I
    .end local v1    # "fl":I
    .end local v4    # "st":I
    :cond_3
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1672
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 1690
    :cond_1
    :goto_0
    return v3

    .line 1675
    :cond_2
    const/4 v2, -0x1

    .line 1676
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1677
    .local v1, "length":I
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 1678
    if-lez v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    .line 1681
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v2, v5

    .line 1682
    .local v0, "expectedDelimiterPos":I
    if-eq v0, v1, :cond_1

    .line 1686
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .end local v0    # "expectedDelimiterPos":I
    :cond_5
    move v3, v4

    .line 1690
    goto :goto_0
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1320
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1321
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x590

    if-lt v1, v2, :cond_0

    .line 1322
    const/4 v1, 0x0

    .line 1325
    :goto_1
    return v1

    .line 1320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1325
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 4
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 1330
    move v1, p1

    .local v1, "i":I
    add-int v0, v1, p2

    .local v0, "e":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1331
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_0

    .line 1332
    const/4 v2, 0x0

    .line 1335
    :goto_1
    return v2

    .line 1330
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1335
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 827
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 828
    check-cast v3, Landroid/text/Spanned;

    .line 829
    .local v3, "sp":Landroid/text/Spanned;
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 831
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 832
    aget-object v1, v2, v0

    .line 833
    .local v1, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 841
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v3    # "sp":Landroid/text/Spanned;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 843
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1075
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    .prologue
    .line 1095
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_0

    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 24
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    .prologue
    .line 1120
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .line 1122
    .local v17, "len":I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v4

    .line 1124
    .local v4, "mt":Landroid/text/MeasuredText;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v23

    .line 1126
    .local v23, "width":F
    cmpg-float v6, v23, p2

    if-gtz v6, :cond_1

    .line 1127
    if-eqz p5, :cond_0

    .line 1128
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v6, v7}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    :cond_0
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .line 1136
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 1137
    .local v13, "ellipsiswid":F
    sub-float p2, p2, v13

    .line 1139
    const/4 v15, 0x0

    .line 1140
    .local v15, "left":I
    move/from16 v19, v17

    .line 1141
    .local v19, "right":I
    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-gez v6, :cond_3

    .line 1153
    :goto_1
    if-eqz p5, :cond_2

    .line 1154
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-interface {v0, v15, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1157
    :cond_2
    iget-object v11, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 1158
    .local v11, "buf":[C
    move-object/from16 v0, p0

    instance-of v6, v0, Landroid/text/Spanned;

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v6, v0

    move-object v5, v6

    .line 1160
    .local v5, "sp":Landroid/text/Spanned;
    :goto_2
    sub-int v6, v19, v15

    sub-int v18, v17, v6

    .line 1161
    .local v18, "remaining":I
    if-eqz p4, :cond_c

    .line 1162
    if-lez v18, :cond_9

    .line 1164
    const/4 v12, 0x0

    .local v12, "ellIndex":I
    move/from16 v16, v15

    .end local v15    # "left":I
    .local v16, "left":I
    :goto_3
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v12, v6, :cond_8

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 1165
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "left":I
    .restart local v15    # "left":I
    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v11, v16

    .line 1164
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v15

    .end local v15    # "left":I
    .restart local v16    # "left":I
    goto :goto_3

    .line 1143
    .end local v5    # "sp":Landroid/text/Spanned;
    .end local v11    # "buf":[C
    .end local v12    # "ellIndex":I
    .end local v16    # "left":I
    .end local v18    # "remaining":I
    .restart local v15    # "left":I
    :cond_3
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v6, :cond_4

    .line 1144
    const/4 v6, 0x0

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v4, v0, v6, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v6

    sub-int v19, v17, v6

    goto :goto_1

    .line 1145
    :cond_4
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v6, :cond_5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v6, :cond_6

    .line 1146
    :cond_5
    const/4 v6, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v4, v0, v6, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v15

    goto :goto_1

    .line 1148
    :cond_6
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, p2, v7

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v6

    sub-int v19, v17, v6

    .line 1149
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/text/MeasuredText;->measure(II)F

    move-result v6

    sub-float p2, p2, v6

    .line 1150
    const/4 v6, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v4, v0, v6, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v15

    goto/16 :goto_1

    .line 1158
    .restart local v11    # "buf":[C
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .end local v15    # "left":I
    .restart local v5    # "sp":Landroid/text/Spanned;
    .restart local v12    # "ellIndex":I
    .restart local v16    # "left":I
    .restart local v18    # "remaining":I
    :cond_8
    move/from16 v15, v16

    .line 1169
    .end local v12    # "ellIndex":I
    .end local v16    # "left":I
    .restart local v15    # "left":I
    :cond_9
    move v14, v15

    .local v14, "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v14, v0, :cond_a

    .line 1170
    const v6, 0xfeff

    aput-char v6, v11, v14

    .line 1169
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1172
    :cond_a
    new-instance v20, Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v11, v6, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1173
    .local v20, "s":Ljava/lang/String;
    if-nez v5, :cond_b

    .line 1199
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v20

    goto/16 :goto_0

    .line 1176
    :cond_b
    :try_start_2
    new-instance v9, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1177
    .local v9, "ss":Landroid/text/SpannableString;
    const/4 v6, 0x0

    const-class v8, Ljava/lang/Object;

    const/4 v10, 0x0

    move/from16 v7, v17

    invoke-static/range {v5 .. v10}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1199
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v9

    goto/16 :goto_0

    .line 1181
    .end local v9    # "ss":Landroid/text/SpannableString;
    .end local v14    # "i":I
    .end local v20    # "s":Ljava/lang/String;
    :cond_c
    if-nez v18, :cond_d

    .line 1182
    :try_start_3
    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1199
    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_0

    .line 1185
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_d
    if-nez v5, :cond_e

    .line 1186
    :try_start_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v6

    add-int v6, v6, v18

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1187
    .local v21, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v6, v15}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1188
    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    sub-int v6, v17, v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object p0

    .line 1199
    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_0

    .line 1193
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_e
    :try_start_5
    new-instance v22, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1194
    .local v22, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1195
    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1196
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1199
    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v22

    goto/16 :goto_0

    .end local v5    # "sp":Landroid/text/Spanned;
    .end local v11    # "buf":[C
    .end local v13    # "ellipsiswid":F
    .end local v15    # "left":I
    .end local v18    # "remaining":I
    .end local v19    # "right":I
    .end local v22    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v23    # "width":F
    :catchall_0
    move-exception v6

    invoke-static {v4}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v6
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 503
    if-ne p0, p1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v2

    .line 505
    :cond_1
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 506
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_2

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 507
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 509
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 510
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    goto :goto_0

    .line 509
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4
    move v2, v3

    .line 515
    goto :goto_0
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x5e

    .line 897
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_0

    .line 898
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 901
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 904
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 905
    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 906
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_5

    .line 907
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 908
    .local v1, "next":C
    if-ne v1, v6, :cond_1

    .line 909
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 910
    add-int/lit8 v0, v0, 0x1

    .line 911
    goto :goto_0

    .line 912
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 913
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 914
    .local v3, "which":I
    if-gez v3, :cond_3

    .line 915
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 930
    .end local v1    # "next":C
    .end local v3    # "which":I
    :catch_0
    move-exception v4

    .line 933
    :cond_2
    return-object v2

    .line 918
    .restart local v1    # "next":C
    .restart local v3    # "which":I
    :cond_3
    array-length v4, p1

    if-lt v3, v4, :cond_4

    .line 919
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 923
    :cond_4
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 924
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v0, v4

    .line 925
    goto/16 :goto_0

    .line 928
    .end local v1    # "next":C
    .end local v3    # "which":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static getBidiForTest(I[C[BIZ)I
    .locals 1
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B
    .param p3, "n"    # I
    .param p4, "haveInfo"    # Z

    .prologue
    .line 1830
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v0

    return v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    .line 1576
    if-gez p1, :cond_1

    .line 1577
    const/4 v4, 0x0

    .line 1661
    :cond_0
    :goto_0
    return v4

    .line 1582
    :cond_1
    const/4 v4, 0x0

    .line 1584
    .local v4, "mode":I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_2

    .line 1585
    or-int/lit16 v4, v4, 0x1000

    .line 1587
    :cond_2
    and-int/lit16 v5, p2, 0x6000

    if-eqz v5, :cond_0

    .line 1593
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_3

    .line 1594
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1596
    .local v0, "c":C
    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    .line 1604
    .end local v0    # "c":C
    :cond_3
    move v2, v1

    .line 1605
    .local v2, "j":I
    :goto_2
    if-lez v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    .line 1606
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1593
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1608
    .end local v0    # "c":C
    .restart local v2    # "j":I
    :cond_6
    if-eqz v2, :cond_7

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 1609
    :cond_7
    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1614
    :cond_8
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_9

    .line 1615
    if-eq v1, v2, :cond_0

    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1621
    :cond_9
    if-eq v1, v2, :cond_0

    .line 1627
    :goto_3
    if-lez v2, :cond_a

    .line 1628
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1630
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_d

    if-eq v0, v9, :cond_d

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_d

    .line 1636
    .end local v0    # "c":C
    :cond_a
    if-lez v2, :cond_0

    .line 1637
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1639
    .restart local v0    # "c":C
    if-eq v0, v7, :cond_b

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_b

    const/16 v5, 0x21

    if-ne v0, v5, :cond_0

    .line 1643
    :cond_b
    if-ne v0, v7, :cond_c

    .line 1644
    add-int/lit8 v3, v2, -0x2

    .local v3, "k":I
    :goto_4
    if-ltz v3, :cond_c

    .line 1645
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1647
    if-eq v0, v7, :cond_0

    .line 1651
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1657
    .end local v3    # "k":I
    :cond_c
    or-int/lit16 v4, v4, 0x4000

    goto/16 :goto_0

    .line 1627
    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1644
    .restart local v3    # "k":I
    :cond_e
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    .line 86
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 97
    :goto_0
    return-void

    .line 87
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_1

    .line 88
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    .line 89
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_1
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_2

    .line 90
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_0

    .line 91
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_2
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_3

    .line 92
    check-cast p0, Landroid/text/GetChars;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_0

    .line 94
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_3
    move v2, p1

    .local v2, "i":I
    move v1, p4

    .end local p4    # "destoff":I
    .local v1, "destoff":I
    :goto_1
    if-ge v2, p2, :cond_4

    .line 95
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 94
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4    # "destoff":I
    .restart local v1    # "destoff":I
    goto :goto_1

    :cond_4
    move p4, v1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    goto :goto_0
.end method

.method public static getDirectionsForTest(Landroid/text/Layout$Directions;)[I
    .locals 1
    .param p0, "dir"    # Landroid/text/Layout$Directions;

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    return-object v0
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    .line 1814
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1821
    :goto_0
    return v0

    .line 1817
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1784
    if-eqz p0, :cond_2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1785
    invoke-static {p0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1786
    .local v0, "scriptSubtag":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v1

    .line 1794
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 1788
    .restart local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1794
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_2
    const-string v3, "debug.force_rtl"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static getLayoutDirectionsForTest()Landroid/text/Layout$Directions;
    .locals 1

    .prologue
    .line 1870
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public static getNextTransition(Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 1528
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1529
    .local v0, "len":I
    new-instance v1, Landroid/text/SpanSet;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-direct {v1, v2}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 1530
    .local v1, "mReplacementSpanSpanSet":Landroid/text/SpanSet;, "Landroid/text/SpanSet<Landroid/text/style/ReplacementSpan;>;"
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "str":Ljava/lang/CharSequence;
    invoke-virtual {v1, p0, v3, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1531
    invoke-virtual {v1, v3, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    return v2
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 972
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 974
    .local v4, "len":I
    if-ne p1, v4, :cond_1

    .line 1005
    .end local v4    # "len":I
    :cond_0
    :goto_0
    return v4

    .line 976
    .restart local v4    # "len":I
    :cond_1
    add-int/lit8 v7, v4, -0x1

    if-eq p1, v7, :cond_0

    .line 979
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 981
    .local v0, "c":C
    const v7, 0xd800

    if-lt v0, v7, :cond_4

    const v7, 0xdbff

    if-gt v0, v7, :cond_4

    .line 982
    add-int/lit8 v7, p1, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 984
    .local v1, "c1":C
    const v7, 0xdc00

    if-lt v1, v7, :cond_3

    const v7, 0xdfff

    if-gt v1, v7, :cond_3

    .line 985
    add-int/lit8 p1, p1, 0x2

    .line 992
    .end local v1    # "c1":C
    :goto_1
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    move-object v7, p0

    .line 993
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 996
    .local v5, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_5

    move-object v7, p0

    .line 997
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, "start":I
    move-object v7, p0

    .line 998
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1000
    .local v2, "end":I
    if-ge v6, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1001
    move p1, v2

    .line 996
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 987
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v6    # "start":I
    .restart local v1    # "c1":C
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 989
    .end local v1    # "c1":C
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    move v4, p1

    .line 1005
    goto :goto_0
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 937
    if-nez p1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v6

    .line 939
    :cond_1
    const/4 v7, 0x1

    if-eq p1, v7, :cond_0

    .line 942
    add-int/lit8 v6, p1, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 944
    .local v0, "c":C
    const v6, 0xdc00

    if-lt v0, v6, :cond_4

    const v6, 0xdfff

    if-gt v0, v6, :cond_4

    .line 945
    add-int/lit8 v6, p1, -0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 947
    .local v1, "c1":C
    const v6, 0xd800

    if-lt v1, v6, :cond_3

    const v6, 0xdbff

    if-gt v1, v6, :cond_3

    .line 948
    add-int/lit8 p1, p1, -0x2

    .line 955
    .end local v1    # "c1":C
    :goto_1
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    move-object v6, p0

    .line 956
    check-cast v6, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 959
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_5

    move-object v6, p0

    .line 960
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v6, p0

    .line 961
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 963
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 964
    move p1, v5

    .line 959
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 950
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    .restart local v1    # "c1":C
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 952
    .end local v1    # "c1":C
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    move v6, p1

    .line 968
    goto :goto_0
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 521
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    .line 479
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 481
    .local v1, "len":I
    const/4 v2, 0x0

    .line 482
    .local v2, "start":I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    :cond_0
    move v0, v1

    .line 487
    .local v0, "end":I
    :goto_1
    if-le v0, v2, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_1

    .line 488
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 491
    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method public static hasReplacement(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1517
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1518
    .local v0, "len":I
    new-instance v1, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-direct {v1, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 1519
    .local v1, "mReplacementSpanSpanSet":Landroid/text/SpanSet;, "Landroid/text/SpanSet<Landroid/text/style/ReplacementSpan;>;"
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "str":Ljava/lang/CharSequence;
    invoke-virtual {v1, p0, v2, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1520
    iget v3, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1369
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1370
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1371
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1392
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1369
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1373
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1376
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1379
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1386
    :sswitch_3
    const-string v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1389
    :sswitch_4
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1395
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1371
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 107
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 109
    :goto_0
    return v1

    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v6, -0x1

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 115
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_0

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_0

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_0

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_6

    .line 117
    :cond_0
    const/16 v0, 0x1f4

    .line 118
    .local v0, "INDEX_INCREMENT":I
    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 120
    .local v5, "temp":[C
    :goto_0
    if-ge p2, p3, :cond_5

    .line 121
    add-int/lit16 v4, p2, 0x1f4

    .line 122
    .local v4, "segend":I
    if-le v4, p3, :cond_1

    .line 123
    move v4, p3

    .line 125
    :cond_1
    const/4 v7, 0x0

    invoke-static {p0, p2, v4, v5, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 127
    sub-int v2, v4, p2

    .line 128
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 129
    aget-char v7, v5, v3

    if-ne v7, p1, :cond_3

    .line 130
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 131
    add-int/2addr v3, p2

    .line 146
    .end local v0    # "INDEX_INCREMENT":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    .end local v5    # "temp":[C
    :cond_2
    :goto_2
    return v3

    .line 128
    .restart local v0    # "INDEX_INCREMENT":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "segend":I
    .restart local v5    # "temp":[C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    :cond_4
    move p2, v4

    .line 136
    goto :goto_0

    .line 138
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v3, v6

    .line 139
    goto :goto_2

    .line 142
    .end local v0    # "INDEX_INCREMENT":I
    .end local v5    # "temp":[C
    :cond_6
    move v3, p2

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, p3, :cond_7

    .line 143
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, p1, :cond_2

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v6

    .line 146
    goto :goto_2
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 212
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 217
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 218
    .local v1, "nlen":I
    if-nez v1, :cond_1

    move v2, p2

    .line 239
    :cond_0
    :goto_0
    return v2

    .line 221
    :cond_1
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 224
    .local v0, "c":C
    :goto_1
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 225
    sub-int v3, p3, v1

    if-gt p2, v3, :cond_0

    .line 229
    if-ltz p2, :cond_0

    .line 233
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, p2

    .line 234
    goto :goto_0

    .line 237
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1481
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1482
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1483
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1484
    const/4 v2, 0x0

    .line 1487
    :goto_1
    return v2

    .line 1482
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 467
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGraphic(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 1467
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1468
    .local v0, "gc":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1447
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1448
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1449
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1450
    .local v0, "gc":I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0xe

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    .line 1457
    const/4 v3, 0x1

    .line 1460
    .end local v0    # "gc":I
    :goto_1
    return v3

    .line 1448
    .restart local v0    # "gc":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1460
    .end local v0    # "gc":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isPrintableAscii(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 1494
    const/16 v0, 0x20

    .line 1495
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1496
    .local v1, "asciiLast":I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1503
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1504
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1505
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1506
    const/4 v2, 0x0

    .line 1509
    :goto_1
    return v2

    .line 1504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1509
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isSurrogateChar(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .prologue
    .line 1888
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    .line 1889
    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1890
    .local v1, "prevChar":C
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1891
    .local v0, "currChar":C
    invoke-static {v1, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    .line 1893
    .end local v0    # "currChar":C
    .end local v1    # "prevChar":C
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 298
    .local v0, "delimiter":Ljava/lang/CharSequence;
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .prologue
    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 328
    .local v0, "firstTime":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 329
    .local v3, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 334
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 336
    .end local v3    # "token":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    .prologue
    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 309
    .local v1, "firstTime":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 310
    .local v5, "token":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x0

    .line 315
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    .end local v5    # "token":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 150
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 156
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 157
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 159
    :goto_0
    return v1

    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    .prologue
    const/4 v7, -0x1

    .line 164
    if-gez p3, :cond_1

    move v4, v7

    .line 204
    :cond_0
    :goto_0
    return v4

    .line 166
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt p3, v8, :cond_2

    .line 167
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 169
    :cond_2
    add-int/lit8 v3, p3, 0x1

    .line 171
    .local v3, "end":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 173
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v8, p0, Landroid/text/GetChars;

    if-nez v8, :cond_3

    const-class v8, Ljava/lang/StringBuffer;

    if-eq v1, v8, :cond_3

    const-class v8, Ljava/lang/StringBuilder;

    if-eq v1, v8, :cond_3

    const-class v8, Ljava/lang/String;

    if-ne v1, v8, :cond_8

    .line 175
    :cond_3
    const/16 v0, 0x1f4

    .line 176
    .local v0, "INDEX_INCREMENT":I
    const/16 v8, 0x1f4

    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 178
    .local v6, "temp":[C
    :goto_1
    if-ge p2, v3, :cond_7

    .line 179
    add-int/lit16 v5, v3, -0x1f4

    .line 180
    .local v5, "segstart":I
    if-ge v5, p2, :cond_4

    .line 181
    move v5, p2

    .line 183
    :cond_4
    const/4 v8, 0x0

    invoke-static {p0, v5, v3, v6, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 185
    sub-int v2, v3, v5

    .line 186
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_6

    .line 187
    aget-char v8, v6, v4

    if-ne v8, p1, :cond_5

    .line 188
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 189
    add-int/2addr v4, v5

    goto :goto_0

    .line 186
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 193
    :cond_6
    move v3, v5

    .line 194
    goto :goto_1

    .line 196
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "segstart":I
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v4, v7

    .line 197
    goto :goto_0

    .line 200
    .end local v0    # "INDEX_INCREMENT":I
    .end local v6    # "temp":[C
    :cond_8
    add-int/lit8 v4, v3, -0x1

    .restart local v4    # "i":I
    :goto_3
    if-lt v4, p2, :cond_9

    .line 201
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, p1, :cond_0

    .line 200
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_9
    move v4, v7

    .line 204
    goto :goto_0
.end method

.method public static newDirectionsForTest([I)Landroid/text/Layout$Directions;
    .locals 1
    .param p0, "dir"    # [I

    .prologue
    .line 1854
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, p0}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method

.method static obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 1341
    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1342
    :try_start_0
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1343
    .local v0, "buf":[C
    const/4 v1, 0x0

    sput-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1344
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    .line 1347
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    .line 1349
    :cond_1
    return-object v0

    .line 1344
    .end local v0    # "buf":[C
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1750
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "logContent"    # Ljava/lang/String;

    .prologue
    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TextDebug] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return-void
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1009
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1010
    return-void
.end method

.method static recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    .prologue
    .line 1353
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1359
    :goto_0
    return-void

    .line 1356
    :cond_0
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1357
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1358
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .prologue
    .line 245
    mul-int/lit8 v3, p4, 0x2

    .line 246
    .local v3, "tempLen":I
    if-ge v3, p4, :cond_0

    .line 248
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 250
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 252
    .local v2, "temp":[C
    add-int v4, p1, p4

    const/4 v5, 0x0

    invoke-static {p0, p1, v4, v2, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 253
    add-int v4, p3, p4

    invoke-static {p2, p3, v4, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 255
    const/4 v1, 0x1

    .line 256
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 257
    aget-char v4, v2, v0

    add-int v5, v0, p4

    aget-char v5, v2, v5

    if-eq v4, v5, :cond_2

    .line 258
    const/4 v1, 0x0

    .line 263
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 264
    return v1

    .line 256
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 9
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 1712
    const/4 v0, 0x0

    .line 1713
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 1715
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_2

    .line 1716
    aget-object v5, p0, v3

    .line 1717
    .local v5, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1718
    .local v6, "start":I
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1720
    .local v2, "end":I
    if-ne v6, v2, :cond_1

    .line 1721
    if-nez v0, :cond_0

    .line 1722
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 1723
    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1724
    move v1, v3

    .line 1715
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1727
    :cond_1
    if-eqz v0, :cond_0

    .line 1728
    aput-object v5, v0, v1

    .line 1729
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1734
    .end local v2    # "end":I
    .end local v5    # "span":Ljava/lang/Object;, "TT;"
    .end local v6    # "start":I
    :cond_2
    if-eqz v0, :cond_3

    .line 1735
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 1736
    .local v4, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1739
    .end local v4    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_2
    return-object v4

    :cond_3
    move-object v4, p0

    goto :goto_2
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    .prologue
    .line 852
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 854
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 855
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 857
    .local v4, "where":I
    if-ltz v4, :cond_0

    .line 858
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 854
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    .end local v4    # "where":I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 863
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 864
    .local v2, "start":I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 866
    .local v0, "end":I
    if-ltz v2, :cond_2

    .line 867
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 862
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 871
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_3
    return-object v3
.end method

.method public static setBlocksDataForTest(Landroid/text/DynamicLayout;[I[II)V
    .locals 0
    .param p0, "dl"    # Landroid/text/DynamicLayout;
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    .prologue
    .line 1838
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/DynamicLayout;->setBlocksDataForTest([I[II)V

    .line 1839
    return-void
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 8
    .param p0, "mt"    # Landroid/text/MeasuredText;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    const/4 v6, 0x0

    .line 1293
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1296
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    check-cast p2, Landroid/text/Spanned;

    .end local p2    # "text":Ljava/lang/CharSequence;
    move-object v1, p2

    .line 1297
    .local v1, "sp":Landroid/text/Spanned;
    :goto_0
    sub-int v0, p4, p3

    .line 1298
    .local v0, "len":I
    if-nez v1, :cond_2

    .line 1299
    invoke-virtual {p0, p1, v0, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    .line 1313
    .local v5, "width":F
    :cond_0
    return v5

    .end local v0    # "len":I
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v5    # "width":F
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, v6

    .line 1296
    goto :goto_0

    .line 1301
    .end local p2    # "text":Ljava/lang/CharSequence;
    .restart local v0    # "len":I
    .restart local v1    # "sp":Landroid/text/Spanned;
    :cond_2
    const/4 v5, 0x0

    .line 1303
    .restart local v5    # "width":F
    const/4 v3, 0x0

    .local v3, "spanStart":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 1304
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 1306
    .local v2, "spanEnd":I
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1308
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v4, v1, v7}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1309
    .restart local v4    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sub-int v7, v2, v3

    invoke-virtual {p0, p1, v4, v7, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v7

    add-float/2addr v5, v7

    .line 1303
    move v3, v2

    goto :goto_1
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 370
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 451
    if-nez p0, :cond_1

    .line 452
    const/4 p0, 0x0

    .line 458
    .end local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 453
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_1
    instance-of v0, p0, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    .line 455
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 456
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0

    .line 458
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 275
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 276
    check-cast p0, Ljava/lang/String;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 277
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 278
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_1
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2

    .line 280
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 283
    .local v1, "temp":[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 284
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 285
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .prologue
    .line 1770
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .prologue
    .line 1760
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static updateBlocksForTest(Landroid/text/DynamicLayout;III)V
    .locals 0
    .param p0, "dl"    # Landroid/text/DynamicLayout;
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    .line 1846
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 1847
    return-void
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 632
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    .line 633
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    .line 636
    check-cast v5, Landroid/text/Spanned;

    .line 637
    .local v5, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 644
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_4

    .line 645
    aget-object v1, v2, v0

    .line 646
    .local v1, "o":Ljava/lang/Object;
    aget-object v3, v2, v0

    .line 648
    .local v3, "prop":Ljava/lang/Object;
    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 649
    check-cast v3, Landroid/text/style/CharacterStyle;

    .end local v3    # "prop":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    .line 652
    :cond_0
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_2

    move-object v4, v3

    .line 653
    check-cast v4, Landroid/text/ParcelableSpan;

    .line 654
    .local v4, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v6

    .line 655
    .local v6, "spanTypeId":I
    if-lt v6, v11, :cond_1

    const/16 v7, 0x18

    if-le v6, v7, :cond_3

    .line 656
    :cond_1
    const-string v7, "TextUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "external class \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    .restart local v4    # "ps":Landroid/text/ParcelableSpan;
    .restart local v6    # "spanTypeId":I
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 662
    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_1

    .line 667
    .end local v1    # "o":Ljava/lang/Object;
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_4
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    .end local v0    # "i":I
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v5    # "sp":Landroid/text/Spanned;
    :goto_2
    return-void

    .line 669
    :cond_5
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    if-eqz p0, :cond_6

    .line 671
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 673
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 679
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    return-void
.end method
