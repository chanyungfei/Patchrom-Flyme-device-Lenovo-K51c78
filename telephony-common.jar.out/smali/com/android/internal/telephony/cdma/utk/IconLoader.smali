.class Lcom/android/internal/telephony/cdma/utk/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static sLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

.field private static sSimCount:I

.field private static sThread:[Landroid/os/HandlerThread;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

.field private mPhoneId:I

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mRuimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    .line 56
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sSimCount:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mState:I

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRuimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconData:[B

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumbers:[I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentRecordIndex:I

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 78
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRuimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 79
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mPhoneId:I

    .line 80
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1
    .param p0, "bit"    # I

    .prologue
    .line 292
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 293
    const/4 v0, -0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cdma/utk/IconLoader;
    .locals 5
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    if-eqz v2, :cond_1

    .line 85
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    .line 109
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sSimCount:I

    .line 89
    sget v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sSimCount:I

    new-array v2, v2, [Landroid/os/HandlerThread;

    sput-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sSimCount:I

    if-ge v0, v2, :cond_2

    .line 91
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aput-object v1, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "i":I
    :cond_2
    if-eqz p1, :cond_0

    .line 95
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    if-nez v2, :cond_3

    .line 96
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "Utk Icon Loader"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, p2

    .line 97
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 99
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    const-string v1, "IconLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create IconLoader intance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/IconLoader;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/cdma/utk/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    goto :goto_0
.end method

.method private static getMask(I)I
    .locals 1
    .param p0, "numOfBits"    # I

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "mask":I
    packed-switch p0, :pswitch_data_0

    .line 382
    :goto_0
    return v0

    .line 358
    :pswitch_0
    const/4 v0, 0x1

    .line 359
    goto :goto_0

    .line 361
    :pswitch_1
    const/4 v0, 0x3

    .line 362
    goto :goto_0

    .line 364
    :pswitch_2
    const/4 v0, 0x7

    .line 365
    goto :goto_0

    .line 367
    :pswitch_3
    const/16 v0, 0xf

    .line 368
    goto :goto_0

    .line 370
    :pswitch_4
    const/16 v0, 0x1f

    .line 371
    goto :goto_0

    .line 373
    :pswitch_5
    const/16 v0, 0x3f

    .line 374
    goto :goto_0

    .line 376
    :pswitch_6
    const/16 v0, 0x7f

    .line 377
    goto :goto_0

    .line 379
    :pswitch_7
    const/16 v0, 0xff

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 2
    .param p1, "rawData"    # [B

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    if-nez v1, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :cond_0
    return v0
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 259
    const/4 v8, 0x0

    .line 260
    .local v8, "valueIndex":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "valueIndex":I
    .local v9, "valueIndex":I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 261
    .local v10, "width":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 262
    .local v3, "height":I
    mul-int v4, v10, v3

    .line 264
    .local v4, "numOfPixels":I
    new-array v7, v4, [I

    .line 266
    .local v7, "pixels":[I
    const/4 v5, 0x0

    .line 267
    .local v5, "pixelIndex":I
    const/4 v0, 0x7

    .line 268
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "currentByte":B
    move v6, v5

    .end local v5    # "pixelIndex":I
    .local v6, "pixelIndex":I
    move v9, v8

    .line 269
    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 271
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 272
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v2, p0, v9

    .line 273
    const/4 v0, 0x7

    .line 275
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pixelIndex":I
    .restart local v5    # "pixelIndex":I
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "bitIndex":I
    .local v1, "bitIndex":I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->bitToBnW(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1    # "bitIndex":I
    .restart local v0    # "bitIndex":I
    move v6, v5

    .end local v5    # "pixelIndex":I
    .restart local v6    # "pixelIndex":I
    move v9, v8

    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_0

    .line 278
    :cond_0
    if-eq v6, v4, :cond_1

    .line 279
    const-string v11, "IconLoader"

    const-string v12, "parseToBnW; size error"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z
    .param p3, "clut"    # [B

    .prologue
    .line 310
    const/16 v16, 0x0

    .line 311
    .local v16, "valueIndex":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "valueIndex":I
    .local v17, "valueIndex":I
    aget-byte v19, p0, v16

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 312
    .local v18, "width":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v19, p0, v17

    move/from16 v0, v19

    and-int/lit16 v9, v0, 0xff

    .line 313
    .local v9, "height":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    aget-byte v19, p0, v16

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 314
    .local v4, "bitsPerImg":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v19, p0, v17

    move/from16 v0, v19

    and-int/lit16 v11, v0, 0xff

    .line 316
    .local v11, "numOfClutEntries":I
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 317
    add-int/lit8 v19, v11, -0x1

    const/16 v20, 0x0

    aput-byte v20, p3, v19

    .line 320
    :cond_0
    mul-int v12, v18, v9

    .line 321
    .local v12, "numOfPixels":I
    new-array v15, v12, [I

    .line 323
    .local v15, "pixels":[I
    const/16 v16, 0x6

    .line 324
    const/4 v13, 0x0

    .line 325
    .local v13, "pixelIndex":I
    rsub-int/lit8 v5, v4, 0x8

    .line 326
    .local v5, "bitsStartOffset":I
    move v2, v5

    .line 327
    .local v2, "bitIndex":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    aget-byte v8, p0, v16

    .line 328
    .local v8, "currentByte":B
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->getMask(I)I

    move-result v10

    .line 329
    .local v10, "mask":I
    const/16 v19, 0x8

    rem-int v19, v19, v4

    if-nez v19, :cond_1

    const/4 v3, 0x1

    .local v3, "bitsOverlaps":Z
    :goto_0
    move v14, v13

    .line 330
    .end local v13    # "pixelIndex":I
    .local v14, "pixelIndex":I
    :goto_1
    if-ge v14, v12, :cond_3

    .line 332
    if-gez v2, :cond_4

    .line 333
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v8, p0, v17

    .line 334
    if-eqz v3, :cond_2

    move v2, v5

    .line 336
    :goto_2
    shr-int v19, v8, v2

    and-int v6, v19, v10

    .line 337
    .local v6, "clutEntry":I
    mul-int/lit8 v7, v6, 0x3

    .line 338
    .local v7, "clutIndex":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "pixelIndex":I
    .restart local v13    # "pixelIndex":I
    aget-byte v19, p3, v7

    add-int/lit8 v20, v7, 0x1

    aget-byte v20, p3, v20

    add-int/lit8 v21, v7, 0x2

    aget-byte v21, p3, v21

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    aput v19, v15, v14

    .line 340
    sub-int/2addr v2, v4

    move v14, v13

    .end local v13    # "pixelIndex":I
    .restart local v14    # "pixelIndex":I
    move/from16 v17, v16

    .line 341
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    goto :goto_1

    .line 329
    .end local v3    # "bitsOverlaps":Z
    .end local v6    # "clutEntry":I
    .end local v7    # "clutIndex":I
    .end local v14    # "pixelIndex":I
    .restart local v13    # "pixelIndex":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 334
    .end local v13    # "pixelIndex":I
    .end local v17    # "valueIndex":I
    .restart local v3    # "bitsOverlaps":Z
    .restart local v14    # "pixelIndex":I
    .restart local v16    # "valueIndex":I
    :cond_2
    mul-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 343
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    :cond_3
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    return-object v19

    :cond_4
    move/from16 v16, v17

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    goto :goto_2
.end method

.method private postIcon()V
    .locals 3

    .prologue
    .line 237
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 243
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentRecordIndex:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumbers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumbers:[I

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentRecordIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->startLoadingIcon(I)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private readClut()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconData:[B

    aget-byte v0, v0, v1

    mul-int/lit8 v4, v0, 0x3

    .line 212
    .local v4, "length":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 213
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRuimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;->imageId:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconData:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconData:[B

    const/4 v6, 0x5

    aget-byte v3, v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 216
    return-void
.end method

.method private readIconData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 231
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 232
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRuimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;->imageId:I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    iget v4, v3, Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;->length:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 233
    return-void
.end method

.method private readId()V
    .locals 3

    .prologue
    .line 220
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumber:I

    if-gez v1, :cond_0

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 222
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->postIcon()V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRuimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private startLoadingIcon(I)V
    .locals 2
    .param p1, "recordNumber"    # I

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    .line 137
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconData:[B

    .line 138
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 139
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumber:I

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->postIcon()V

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->readId()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 160
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->handleImageDescriptor([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->readIconData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Icon load failed"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->postIcon()V

    goto :goto_0

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unable to parse image descriptor"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 168
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 169
    .local v4, "rawData":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;->codingScheme:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 170
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 171
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->postIcon()V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mId:Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/ImageDescriptor;->codingScheme:I

    const/16 v6, 0x21

    if-ne v5, v6, :cond_0

    .line 174
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconData:[B

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->readClut()V

    goto :goto_0

    .line 179
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "rawData":[B
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 180
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 181
    .local v2, "clut":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconData:[B

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconData:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 183
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->postIcon()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mState:I

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 2
    .param p1, "recordNumbers"    # [I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 113
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 118
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mRecordNumbers:[I

    .line 120
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mCurrentRecordIndex:I

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/IconLoader;->mState:I

    .line 122
    aget v0, p1, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method
