.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mSpanCount:I

.field private mSpanCountBeforeAdd:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1361
    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 61
    sub-int v9, p3, p2

    .line 63
    .local v9, "srclen":I
    if-gez v9, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 65
    :cond_0
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 66
    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 67
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    sub-int/2addr v0, v9

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 69
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 71
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 72
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 73
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 74
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 75
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 77
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    move-object v7, p1

    .line 78
    check-cast v7, Landroid/text/Spanned;

    .line 79
    .local v7, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    invoke-interface {v7, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 81
    .local v8, "spans":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_6

    .line 82
    aget-object v0, v8, v6

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_1

    .line 81
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    :cond_1
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int v3, v0, p2

    .line 87
    .local v3, "st":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    sub-int v4, v0, p2

    .line 88
    .local v4, "en":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 90
    .local v5, "fl":I
    if-gez v3, :cond_2

    .line 91
    const/4 v3, 0x0

    .line 92
    :cond_2
    sub-int v0, p3, p2

    if-le v3, v0, :cond_3

    .line 93
    sub-int v3, p3, p2

    .line 95
    :cond_3
    if-gez v4, :cond_4

    .line 96
    const/4 v4, 0x0

    .line 97
    :cond_4
    sub-int v0, p3, p2

    if-le v4, v0, :cond_5

    .line 98
    sub-int v4, p3, p2

    .line 100
    :cond_5
    aget-object v2, v8, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    goto :goto_1

    .line 103
    .end local v3    # "st":I
    .end local v4    # "en":I
    .end local v5    # "fl":I
    .end local v6    # "i":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "spans":[Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 38
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    .prologue
    .line 293
    sub-int v33, p2, p1

    .line 294
    .local v33, "replacedLength":I
    sub-int v34, p5, p4

    .line 295
    .local v34, "replacementLength":I
    sub-int v12, v34, v33

    .line 297
    .local v12, "nbNewChars":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v30, v4, -0x1

    .local v30, "i":I
    :goto_0
    if-ltz v30, :cond_c

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v4, v30

    .line 299
    .local v7, "spanStart":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v7, v4, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v7, v4

    .line 302
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v8, v4, v30

    .line 303
    .local v8, "spanEnd":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v8, v4, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v8, v4

    .line 306
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v30

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_5

    .line 307
    move/from16 v32, v7

    .line 308
    .local v32, "ost":I
    move/from16 v31, v8

    .line 309
    .local v31, "oen":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v27

    .line 311
    .local v27, "clen":I
    move/from16 v0, p1

    if-le v7, v0, :cond_2

    move/from16 v0, p2

    if-gt v7, v0, :cond_2

    .line 312
    move/from16 v7, p2

    :goto_1
    move/from16 v0, v27

    if-ge v7, v0, :cond_2

    .line 313
    move/from16 v0, p2

    if-le v7, v0, :cond_8

    add-int/lit8 v4, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    .line 317
    :cond_2
    move/from16 v0, p1

    if-le v8, v0, :cond_3

    move/from16 v0, p2

    if-gt v8, v0, :cond_3

    .line 318
    move/from16 v8, p2

    :goto_2
    move/from16 v0, v27

    if-ge v8, v0, :cond_3

    .line 319
    move/from16 v0, p2

    if-le v8, v0, :cond_9

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    .line 323
    :cond_3
    move/from16 v0, v32

    if-ne v7, v0, :cond_4

    move/from16 v0, v31

    if-eq v8, v0, :cond_5

    .line 324
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v4, v30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v4, v30

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 327
    .end local v27    # "clen":I
    .end local v31    # "oen":I
    .end local v32    # "ost":I
    :cond_5
    const/16 v29, 0x0

    .line 328
    .local v29, "flags":I
    move/from16 v0, p1

    if-ne v7, v0, :cond_a

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x1000

    move/from16 v29, v0

    .line 330
    :cond_6
    :goto_3
    move/from16 v0, p1

    if-ne v8, v0, :cond_b

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x4000

    move/from16 v29, v0

    .line 332
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v4, v30

    or-int v5, v5, v29

    aput v5, v4, v30

    .line 297
    add-int/lit8 v30, v30, -0x1

    goto/16 :goto_0

    .line 312
    .end local v29    # "flags":I
    .restart local v27    # "clen":I
    .restart local v31    # "oen":I
    .restart local v32    # "ost":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 318
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 329
    .end local v27    # "clen":I
    .end local v31    # "oen":I
    .end local v32    # "ost":I
    .restart local v29    # "flags":I
    :cond_a
    add-int v4, p2, v12

    if-ne v7, v4, :cond_6

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x2000

    move/from16 v29, v0

    goto :goto_3

    .line 331
    :cond_b
    add-int v4, p2, v12

    if-ne v8, v4, :cond_7

    const v4, 0x8000

    or-int v29, v29, v4

    goto :goto_4

    .line 335
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v29    # "flags":I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 337
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v12, v4, :cond_d

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 341
    :cond_d
    if-nez v34, :cond_f

    const/4 v15, 0x1

    .line 344
    .local v15, "textIsRemoved":Z
    :goto_5
    if-lez v33, :cond_11

    .line 349
    const/16 v30, 0x0

    .line 350
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_11

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v30

    and-int/lit8 v4, v4, 0x21

    const/16 v5, 0x21

    if-ne v4, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v30

    move/from16 v0, p1

    if-lt v4, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v30

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v30

    move/from16 v0, p1

    if-lt v4, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v30

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_10

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v30

    move/from16 v0, p1

    if-gt v4, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v30

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge v4, v5, :cond_10

    .line 357
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    goto :goto_6

    .line 341
    .end local v15    # "textIsRemoved":Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_5

    .line 361
    .restart local v15    # "textIsRemoved":Z
    :cond_10
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 365
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 366
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 368
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_12

    .line 369
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 373
    if-lez v33, :cond_14

    .line 374
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_13

    const/4 v14, 0x1

    .line 376
    .local v14, "atEnd":Z
    :goto_7
    const/16 v30, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_14

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v30

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    .line 378
    .local v13, "startFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v10, v5, v30

    move-object/from16 v9, p0

    move/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v30

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v30

    and-int/lit8 v20, v4, 0xf

    .line 382
    .local v20, "endFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v17, v5, v30

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v19, v12

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v30

    .line 376
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 374
    .end local v13    # "startFlag":I
    .end local v14    # "atEnd":Z
    .end local v20    # "endFlag":I
    :cond_13
    const/4 v14, 0x0

    goto :goto_7

    .line 387
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCountBeforeAdd:I

    .line 389
    move-object/from16 v0, p3

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_18

    move-object/from16 v35, p3

    .line 390
    check-cast v35, Landroid/text/Spanned;

    .line 391
    .local v35, "sp":Landroid/text/Spanned;
    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v35

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    .line 393
    .local v36, "spans":[Ljava/lang/Object;
    const/16 v30, 0x0

    :goto_9
    move-object/from16 v0, v36

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_18

    .line 394
    aget-object v4, v36, v30

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    .line 395
    .local v37, "st":I
    aget-object v4, v36, v30

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v28

    .line 397
    .local v28, "en":I
    move/from16 v0, v37

    move/from16 v1, p4

    if-ge v0, v1, :cond_15

    move/from16 v37, p4

    .line 398
    :cond_15
    move/from16 v0, v28

    move/from16 v1, p5

    if-le v0, v1, :cond_16

    move/from16 v28, p5

    .line 401
    :cond_16
    aget-object v4, v36, v30

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_17

    .line 402
    const/16 v22, 0x0

    aget-object v23, v36, v30

    sub-int v4, v37, p4

    add-int v24, v4, p1

    sub-int v4, v28, p4

    add-int v25, v4, p1

    aget-object v4, v36, v30

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 393
    :cond_17
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 407
    .end local v28    # "en":I
    .end local v35    # "sp":Landroid/text/Spanned;
    .end local v36    # "spans":[Ljava/lang/Object;
    .end local v37    # "st":I
    :cond_18
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1028
    if-ge p3, p2, :cond_0

    .line 1029
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1033
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1035
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    .line 1036
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1040
    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    .line 1041
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1044
    :cond_4
    return-void
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 540
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_1

    move-object v4, p0

    .line 541
    check-cast v4, Landroid/text/Spanned;

    .line 542
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, p1, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 543
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 544
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 545
    aget-object v3, v5, v1

    .line 546
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 547
    .local v0, "flags":I
    const/16 v6, 0x21

    if-eq v0, v6, :cond_0

    const/4 v6, 0x1

    .line 550
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :goto_1
    return v6

    .line 544
    .restart local v0    # "flags":I
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "span":Ljava/lang/Object;
    .restart local v4    # "spanned":Landroid/text/Spanned;
    .restart local v5    # "spans":[Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private moveGapTo(I)V
    .locals 12
    .param p1, "where"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 162
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_0

    .line 207
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_5

    const/4 v0, 0x1

    .line 167
    .local v0, "atEnd":Z
    :goto_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_6

    .line 168
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    .line 169
    .local v4, "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 176
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_b

    .line 177
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    .line 178
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    .line 180
    .local v1, "end":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    .line 181
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    .line 182
    :cond_1
    if-le v5, p1, :cond_7

    .line 183
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    .line 191
    :cond_2
    :goto_4
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_3

    .line 192
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    .line 193
    :cond_3
    if-le v1, p1, :cond_9

    .line 194
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    .line 202
    :cond_4
    :goto_5
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    .line 203
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 165
    .end local v0    # "atEnd":Z
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "overlap":I
    .end local v5    # "start":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 171
    .restart local v0    # "atEnd":Z
    :cond_6
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    .line 172
    .restart local v4    # "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_2

    .line 184
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_7
    if-ne v5, p1, :cond_2

    .line 185
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 187
    .local v2, "flag":I
    if-eq v2, v10, :cond_8

    if-eqz v0, :cond_2

    if-ne v2, v11, :cond_2

    .line 188
    :cond_8
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_4

    .line 195
    .end local v2    # "flag":I
    :cond_9
    if-ne v1, p1, :cond_4

    .line 196
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .line 198
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_a

    if-eqz v0, :cond_4

    if-ne v2, v11, :cond_4

    .line 199
    :cond_a
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_5

    .line 206
    .end local v1    # "end":I
    .end local v2    # "flag":I
    .end local v5    # "start":I
    :cond_b
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    goto/16 :goto_0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(I)V
    .locals 7
    .param p1, "i"    # I

    .prologue
    .line 442
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v4, p1

    .line 444
    .local v2, "object":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, p1

    .line 445
    .local v3, "start":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, p1

    .line 447
    .local v1, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 448
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 450
    :cond_1
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int v0, v4, v5

    .line 451
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 453
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 454
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 456
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 458
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 460
    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 461
    return-void
.end method

.method private resizeFor(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 138
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v6

    .line 139
    .local v5, "oldLength":I
    add-int/lit8 v6, p1, 0x1

    if-gt v6, v5, :cond_1

    .line 159
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v4

    .line 144
    .local v4, "newText":[C
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 145
    array-length v3, v4

    .line 146
    .local v3, "newLength":I
    sub-int v1, v3, v5

    .line 147
    .local v1, "delta":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 148
    .local v0, "after":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v7, v5, v0

    sub-int v8, v3, v0

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 149
    iput-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 151
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 152
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 153
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "mGapLength < 1"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v2, v6, :cond_0

    .line 156
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 157
    :cond_3
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_4

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 155
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;

    .prologue
    .line 987
    array-length v1, p1

    .line 989
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 990
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 968
    array-length v1, p1

    .line 970
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 971
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :cond_0
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 995
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 996
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 998
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 999
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 998
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "oldStart"    # I
    .param p3, "oldEnd"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 1015
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .line 1017
    .local v9, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v8, v9

    .line 1018
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 1019
    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 1018
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1004
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 1005
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 1007
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1008
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 5
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 976
    array-length v1, p1

    .line 978
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 979
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 980
    const-string v2, "SpannableStringBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendTextChanged] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_1
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .locals 12
    .param p1, "replaceStart"    # I
    .param p2, "replaceEnd"    # I
    .param p3, "nbNewChars"    # I

    .prologue
    const v11, 0x8000

    .line 554
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCountBeforeAdd:I

    if-ge v6, v0, :cond_b

    .line 555
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    .line 556
    .local v4, "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    .line 557
    .local v5, "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    .line 558
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    .line 559
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v6

    .line 561
    .local v9, "spanFlags":I
    add-int v7, p2, p3

    .line 562
    .local v7, "newReplaceEnd":I
    const/4 v8, 0x0

    .line 564
    .local v8, "spanChanged":Z
    move v2, v4

    .line 565
    .local v2, "previousSpanStart":I
    if-le v4, v7, :cond_5

    .line 566
    if-eqz p3, :cond_2

    .line 567
    sub-int/2addr v2, p3

    .line 568
    const/4 v8, 0x1

    .line 583
    :cond_2
    :goto_1
    move v3, v5

    .line 584
    .local v3, "previousSpanEnd":I
    if-le v5, v7, :cond_8

    .line 585
    if-eqz p3, :cond_3

    .line 586
    sub-int/2addr v3, p3

    .line 587
    const/4 v8, 0x1

    .line 600
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 601
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 603
    :cond_4
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v6

    const v10, -0xf001

    and-int/2addr v1, v10

    aput v1, v0, v6

    .line 554
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 570
    .end local v3    # "previousSpanEnd":I
    :cond_5
    if-lt v4, p1, :cond_2

    .line 572
    if-ne v4, p1, :cond_6

    and-int/lit16 v0, v9, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_2

    :cond_6
    if-ne v4, v7, :cond_7

    and-int/lit16 v0, v9, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_2

    .line 579
    :cond_7
    const/4 v8, 0x1

    goto :goto_1

    .line 589
    .restart local v3    # "previousSpanEnd":I
    :cond_8
    if-lt v5, p1, :cond_3

    .line 591
    if-ne v5, p1, :cond_9

    and-int/lit16 v0, v9, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_3

    :cond_9
    if-ne v5, v7, :cond_a

    and-int v0, v9, v11

    if-eq v0, v11, :cond_3

    .line 596
    :cond_a
    const/4 v8, 0x1

    goto :goto_2

    .line 607
    .end local v2    # "previousSpanStart":I
    .end local v3    # "previousSpanEnd":I
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    .end local v7    # "newReplaceEnd":I
    .end local v8    # "spanChanged":Z
    .end local v9    # "spanFlags":I
    :cond_b
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCountBeforeAdd:I

    :goto_3
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, v0, :cond_e

    .line 608
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    .line 609
    .restart local v4    # "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    .line 610
    .restart local v5    # "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_c

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    .line 611
    :cond_c
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_d

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    .line 612
    :cond_d
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, v6

    invoke-direct {p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 607
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 614
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    :cond_e
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 14
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    .prologue
    .line 626
    const-string v2, "setSpan"

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 628
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v11, v2, 0x4

    .line 629
    .local v11, "flagsStart":I
    const/4 v2, 0x3

    if-ne v11, v2, :cond_0

    .line 630
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    .line 631
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    .line 633
    .local v8, "c":C
    const/16 v2, 0xa

    if-eq v8, v2, :cond_0

    .line 634
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    .end local v8    # "c":C
    :cond_0
    and-int/lit8 v10, p5, 0xf

    .line 639
    .local v10, "flagsEnd":I
    const/4 v2, 0x3

    if-ne v10, v2, :cond_1

    .line 640
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p4

    if-eq v0, v2, :cond_1

    .line 641
    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    .line 643
    .restart local v8    # "c":C
    const/16 v2, 0xa

    if-eq v8, v2, :cond_1

    .line 644
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 649
    .end local v8    # "c":C
    :cond_1
    const/4 v2, 0x2

    if-ne v11, v2, :cond_3

    const/4 v2, 0x1

    if-ne v10, v2, :cond_3

    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_3

    .line 650
    if-eqz p1, :cond_2

    .line 651
    const-string v2, "SpannableStringBuilder"

    const-string v3, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_2
    :goto_0
    return-void

    .line 659
    :cond_3
    move/from16 v6, p3

    .line 660
    .local v6, "nstart":I
    move/from16 v7, p4

    .line 662
    .local v7, "nend":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-le v0, v2, :cond_8

    .line 663
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v2

    .line 669
    :cond_4
    :goto_1
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-le v0, v2, :cond_a

    .line 670
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v2

    .line 676
    :cond_5
    :goto_2
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 677
    .local v9, "count":I
    iget-object v13, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 679
    .local v13, "spans":[Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v9, :cond_d

    .line 680
    aget-object v2, v13, v12

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_c

    .line 681
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v2, v12

    .line 682
    .local v4, "ostart":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v2, v12

    .line 684
    .local v5, "oend":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v2, :cond_6

    .line 685
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v2

    .line 686
    :cond_6
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v2, :cond_7

    .line 687
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v2

    .line 689
    :cond_7
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p3, v2, v12

    .line 690
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p4, v2, v12

    .line 691
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput p5, v2, v12

    .line 693
    if-eqz p1, :cond_2

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    goto :goto_0

    .line 664
    .end local v4    # "ostart":I
    .end local v5    # "oend":I
    .end local v9    # "count":I
    .end local v12    # "i":I
    .end local v13    # "spans":[Ljava/lang/Object;
    :cond_8
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 665
    const/4 v2, 0x2

    if-eq v11, v2, :cond_9

    const/4 v2, 0x3

    if-ne v11, v2, :cond_4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 666
    :cond_9
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v2

    goto :goto_1

    .line 671
    :cond_a
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 672
    const/4 v2, 0x2

    if-eq v10, v2, :cond_b

    const/4 v2, 0x3

    if-ne v10, v2, :cond_5

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 673
    :cond_b
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v2

    goto :goto_2

    .line 679
    .restart local v9    # "count":I
    .restart local v12    # "i":I
    .restart local v13    # "spans":[Ljava/lang/Object;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 699
    :cond_d
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 700
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 701
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p4

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 702
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p5

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 703
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 705
    if-eqz p1, :cond_2

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "nbNewChars"    # I
    .param p4, "flag"    # I
    .param p5, "atEnd"    # Z
    .param p6, "textIsRemoved"    # Z

    .prologue
    .line 411
    if-lt p1, p2, :cond_4

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_4

    .line 412
    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    .line 417
    if-nez p6, :cond_0

    if-le p1, p2, :cond_4

    .line 418
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p2, v0, v1

    .line 438
    .end local p2    # "start":I
    :cond_1
    :goto_0
    return p2

    .line 421
    .restart local p2    # "start":I
    :cond_2
    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    .line 422
    if-eqz p5, :cond_4

    .line 423
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p2, v0, v1

    goto :goto_0

    .line 429
    :cond_3
    if-nez p6, :cond_1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_1

    .line 433
    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    goto :goto_0

    :cond_4
    move p2, p1

    .line 438
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 107
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 109
    .end local p0    # "source":Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 1
    .param p1, "x0"    # C

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 288
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 262
    .local v1, "length":I
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, "length":I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 275
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 276
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 277
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 4
    .param p1, "where"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 118
    .local v0, "len":I
    if-gez p1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    if-lt p1, v0, :cond_1

    .line 121
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_2

    .line 125
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    .line 127
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 238
    return-void
.end method

.method public clearSpans()V
    .locals 6

    .prologue
    .line 242
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 243
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 244
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    .line 245
    .local v2, "ostart":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    .line 247
    .local v1, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    .line 248
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 249
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    .line 250
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 252
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 253
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 255
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 242
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 221
    sget-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "SpannableStringBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[delete] start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 225
    .local v6, "ret":Landroid/text/SpannableStringBuilder;
    sget-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "SpannableStringBuilder"

    const-string v1, "[delete] end "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    .line 230
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 232
    :cond_2
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 1132
    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1134
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_0

    .line 1135
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1145
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_1

    .line 1137
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1139
    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1141
    .local v1, "buf":[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1142
    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1143
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1154
    const-string v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1156
    sub-int v5, p5, p4

    .line 1157
    .local v5, "contextLen":I
    sub-int v3, p3, p2

    .line 1158
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p5, v0, :cond_0

    .line 1159
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1169
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p4, v0, :cond_1

    .line 1161
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1164
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1165
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1166
    sub-int v2, p2, p4

    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1167
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1314
    instance-of v6, p1, Landroid/text/Spanned;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 1316
    check-cast v1, Landroid/text/Spanned;

    .line 1318
    .local v1, "other":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1319
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v7, v3

    if-ne v6, v7, :cond_0

    .line 1320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v6, :cond_3

    .line 1321
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v6, v0

    .line 1322
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    .line 1323
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_1

    .line 1324
    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 1340
    .end local v0    # "i":I
    .end local v1    # "other":Landroid/text/Spanned;
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v3    # "otherSpans":[Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_0
    :goto_1
    return v5

    .line 1330
    .restart local v0    # "i":I
    .restart local v1    # "other":Landroid/text/Spanned;
    .restart local v2    # "otherSpan":Ljava/lang/Object;
    .restart local v3    # "otherSpans":[Ljava/lang/Object;
    .restart local v4    # "thisSpan":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1320
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1337
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public getChars(II[CI)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 930
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 932
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 933
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 942
    :goto_0
    return-void

    .line 934
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 935
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0

    .line 937
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 938
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 747
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 748
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 750
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 751
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1

    .line 752
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v4, v1

    .line 754
    .local v3, "where":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    .line 755
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 761
    .end local v3    # "where":I
    :cond_0
    :goto_1
    return v3

    .line 750
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 761
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 769
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 770
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 772
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 773
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 774
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v1

    .line 778
    :goto_1
    return v3

    .line 772
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 778
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 725
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 726
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 728
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 729
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1

    .line 730
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .line 732
    .local v3, "where":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    .line 733
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 739
    .end local v3    # "where":I
    :cond_0
    :goto_1
    return v3

    .line 728
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 739
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 22
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 788
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p3, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .line 879
    :cond_0
    :goto_0
    return-object v13

    .line 790
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 791
    .local v15, "spanCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 792
    .local v18, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v19, v0

    .line 793
    .local v19, "starts":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 794
    .local v4, "ends":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 795
    .local v5, "flags":[I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 796
    .local v7, "gapstart":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 798
    .local v6, "gaplen":I
    const/4 v2, 0x0

    .line 799
    .local v2, "count":I
    const/4 v13, 0x0

    .line 800
    .local v13, "ret":[Ljava/lang/Object;, "[TT;"
    const/4 v14, 0x0

    .line 802
    .local v14, "ret1":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .local v8, "i":I
    move v3, v2

    .end local v2    # "count":I
    .end local v14    # "ret1":Ljava/lang/Object;, "TT;"
    .local v3, "count":I
    :goto_1
    if-ge v8, v15, :cond_e

    .line 803
    aget v17, v19, v8

    .line 804
    .local v17, "spanStart":I
    move/from16 v0, v17

    if-le v0, v7, :cond_2

    .line 805
    sub-int v17, v17, v6

    .line 807
    :cond_2
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    move v2, v3

    .line 802
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_1

    .line 811
    :cond_3
    aget v16, v4, v8

    .line 812
    .local v16, "spanEnd":I
    move/from16 v0, v16

    if-le v0, v7, :cond_4

    .line 813
    sub-int v16, v16, v6

    .line 815
    :cond_4
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    move v2, v3

    .line 816
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2

    .line 819
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_5
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 820
    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_6

    move v2, v3

    .line 821
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2

    .line 822
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_6
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_7

    move v2, v3

    .line 823
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2

    .line 827
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_7
    aget-object v20, v18, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2

    .line 829
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_8
    if-nez v3, :cond_9

    .line 831
    aget-object v14, v18, v8

    .line 832
    .restart local v14    # "ret1":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2

    .line 834
    .end local v2    # "count":I
    .end local v14    # "ret1":Ljava/lang/Object;, "TT;"
    .restart local v3    # "count":I
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_a

    .line 836
    sub-int v20, v15, v8

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    .line 837
    const/16 v20, 0x0

    aput-object v14, v13, v20

    .line 840
    :cond_a
    aget v20, v5, v8

    const/high16 v21, 0xff0000

    and-int v12, v20, v21

    .line 841
    .local v12, "prio":I
    if-eqz v12, :cond_d

    .line 844
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v3, :cond_b

    .line 845
    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff0000

    and-int v11, v20, v21

    .line 847
    .local v11, "p":I
    if-le v12, v11, :cond_c

    .line 852
    .end local v11    # "p":I
    :cond_b
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v3, v9

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v9, v13, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    aget-object v20, v18, v8

    aput-object v20, v13, v9

    .line 855
    add-int/lit8 v2, v3, 0x1

    .line 856
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_2

    .line 844
    .end local v2    # "count":I
    .restart local v3    # "count":I
    .restart local v11    # "p":I
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 858
    .end local v9    # "j":I
    .end local v11    # "p":I
    :cond_d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aget-object v20, v18, v8

    aput-object v20, v13, v3

    goto/16 :goto_2

    .line 863
    .end local v2    # "count":I
    .end local v12    # "prio":I
    .end local v16    # "spanEnd":I
    .end local v17    # "spanStart":I
    .restart local v3    # "count":I
    :cond_e
    if-nez v3, :cond_f

    .line 864
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 866
    :cond_f
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_10

    .line 868
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    .line 869
    const/16 v20, 0x0

    aput-object v14, v13, v20

    goto/16 :goto_0

    .line 872
    :cond_10
    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v3, v0, :cond_0

    .line 877
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v10, v20

    check-cast v10, [Ljava/lang/Object;

    .line 878
    .local v10, "nret":[Ljava/lang/Object;, "[TT;"
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v10

    .line 879
    goto/16 :goto_0
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1228
    sub-int v5, p4, p3

    .line 1229
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    .line 1231
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1232
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1245
    .local v9, "ret":F
    :goto_0
    return v9

    .line 1234
    .end local v9    # "ret":F
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1235
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .restart local v9    # "ret":F
    goto :goto_0

    .line 1238
    .end local v9    # "ret":F
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1239
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1240
    sub-int v2, p1, p3

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1242
    .restart local v9    # "ret":F
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1279
    sub-int v3, p2, p1

    .line 1280
    .local v3, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1281
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 1294
    .local v7, "ret":I
    :goto_0
    return v7

    .line 1283
    .end local v7    # "ret":I
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1284
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v7, v0, v2

    .restart local v7    # "ret":I
    goto :goto_0

    .line 1287
    .end local v7    # "ret":I
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1288
    .local v1, "buf":[C
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1289
    sub-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int v7, v0, p1

    .line 1291
    .restart local v7    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1200
    const-string v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1204
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    .line 1205
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1216
    .local v1, "ret":I
    :goto_0
    return v1

    .line 1206
    .end local v1    # "ret":I
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    .line 1207
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_0

    .line 1209
    .end local v1    # "ret":I
    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1211
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1212
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1213
    .restart local v1    # "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1346
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1347
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int v0, v3, v4

    .line 1348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v3, :cond_1

    .line 1349
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 1350
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    .line 1351
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 1353
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1354
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1355
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1357
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 211
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1176
    const-string v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1180
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    .line 1181
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1192
    .local v1, "ret":F
    :goto_0
    return v1

    .line 1182
    .end local v1    # "ret":F
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    .line 1183
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1    # "ret":F
    goto :goto_0

    .line 1185
    .end local v1    # "ret":F
    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1187
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1188
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1189
    .restart local v1    # "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 10
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 888
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 889
    .local v0, "count":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 890
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 891
    .local v8, "starts":[I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 892
    .local v2, "ends":[I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 893
    .local v4, "gapstart":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 895
    .local v3, "gaplen":I
    if-nez p3, :cond_0

    .line 896
    const-class p3, Ljava/lang/Object;

    .line 899
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 900
    aget v7, v8, v5

    .line 901
    .local v7, "st":I
    aget v1, v2, v5

    .line 903
    .local v1, "en":I
    if-le v7, v4, :cond_1

    .line 904
    sub-int/2addr v7, v3

    .line 905
    :cond_1
    if-le v1, v4, :cond_2

    .line 906
    sub-int/2addr v1, v3

    .line 908
    :cond_2
    if-le v7, p1, :cond_3

    if-ge v7, p2, :cond_3

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 909
    move p2, v7

    .line 910
    :cond_3
    if-le v1, p1, :cond_4

    if-ge v1, p2, :cond_4

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 911
    move p2, v1

    .line 899
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 914
    .end local v1    # "en":I
    .end local v7    # "st":I
    :cond_5
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 712
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 713
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 714
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 718
    :cond_0
    return-void

    .line 712
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 38
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 465
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 23
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 471
    const-string v5, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 472
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    .line 473
    const-string v5, "SpannableStringBuilder"

    const-string v6, "[replace] start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v0, v5

    move/from16 v16, v0

    .line 476
    .local v16, "filtercount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 477
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v5, v5, v17

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 479
    .local v21, "repl":Ljava/lang/CharSequence;
    if-eqz v21, :cond_1

    .line 480
    move-object/from16 p3, v21

    .line 481
    const/16 p4, 0x0

    .line 482
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 476
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 486
    .end local v21    # "repl":Ljava/lang/CharSequence;
    :cond_2
    sub-int v20, p2, p1

    .line 487
    .local v20, "origLen":I
    sub-int v18, p5, p4

    .line 489
    .local v18, "newLen":I
    if-nez v20, :cond_4

    if-nez v18, :cond_4

    invoke-static/range {p3 .. p4}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 536
    :cond_3
    :goto_1
    return-object p0

    .line 495
    :cond_4
    add-int v5, p1, v20

    const-class v6, Landroid/text/TextWatcher;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/text/TextWatcher;

    .line 496
    .local v22, "textWatchers":[Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    .line 501
    if-eqz v20, :cond_8

    if-eqz v18, :cond_8

    const/4 v15, 0x1

    .line 502
    .local v15, "adjustSelection":Z
    :goto_2
    const/4 v8, 0x0

    .line 503
    .local v8, "selectionStart":I
    const/4 v12, 0x0

    .line 504
    .local v12, "selectionEnd":I
    if-eqz v15, :cond_5

    .line 505
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v8

    .line 506
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    .line 509
    :cond_5
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    .line 511
    if-eqz v15, :cond_7

    .line 512
    move/from16 v0, p1

    if-le v8, v0, :cond_6

    move/from16 v0, p2

    if-ge v8, v0, :cond_6

    .line 513
    sub-int v5, v8, p1

    mul-int v5, v5, v18

    div-int v19, v5, v20

    .line 514
    .local v19, "offset":I
    add-int v8, p1, v19

    .line 516
    const/4 v6, 0x0

    sget-object v7, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v10, 0x22

    move-object/from16 v5, p0

    move v9, v8

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 519
    .end local v19    # "offset":I
    :cond_6
    move/from16 v0, p1

    if-le v12, v0, :cond_7

    move/from16 v0, p2

    if-ge v12, v0, :cond_7

    .line 520
    sub-int v5, v12, p1

    mul-int v5, v5, v18

    div-int v19, v5, v20

    .line 521
    .restart local v19    # "offset":I
    add-int v12, p1, v19

    .line 523
    const/4 v10, 0x0

    sget-object v11, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v14, 0x22

    move-object/from16 v9, p0

    move v13, v12

    invoke-direct/range {v9 .. v14}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 528
    .end local v19    # "offset":I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    .line 532
    sub-int v5, v18, v20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    .line 533
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    .line 534
    const-string v5, "SpannableStringBuilder"

    const-string v6, "[replace] end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 501
    .end local v8    # "selectionStart":I
    .end local v12    # "selectionEnd":I
    .end local v15    # "adjustSelection":Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 1299
    if-nez p1, :cond_0

    .line 1300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1303
    :cond_0
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1304
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 622
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 623
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 922
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 962
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 963
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 964
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 949
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 950
    .local v1, "len":I
    new-array v0, v1, [C

    .line 952
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 953
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
