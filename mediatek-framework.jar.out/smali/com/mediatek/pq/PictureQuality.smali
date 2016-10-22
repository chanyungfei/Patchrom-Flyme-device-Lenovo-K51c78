.class public Lcom/mediatek/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/pq/PictureQuality$GammaLut;,
        Lcom/mediatek/pq/PictureQuality$Range;,
        Lcom/mediatek/pq/PictureQuality$Hist;
    }
.end annotation


# static fields
.field public static final CAPABILITY_MASK_COLOR:I = 0x1

.field public static final CAPABILITY_MASK_DC:I = 0x8

.field public static final CAPABILITY_MASK_GAMMA:I = 0x4

.field public static final CAPABILITY_MASK_OD:I = 0x10

.field public static final CAPABILITY_MASK_SHARPNESS:I = 0x2

.field public static final DCHIST_INFO_NUM:I = 0x14

.field private static final GAMMA_INDEX_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.gamma.index"

.field public static final GAMMA_LUT_SIZE:I = 0x200

.field public static final MODE_CAMERA:I = 0x1

.field public static final MODE_MASK:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_USER_DEF:I = 0x2

.field public static final PIC_MODE_VIVID:I = 0x1

.field static sLibStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    .line 137
    :try_start_0
    const-string v1, "JNI_PQ"

    const-string v2, "loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "jni_pq"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 139
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI_PQ"

    const-string v2, "UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static enableColor(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 188
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColor(I)Z

    move-result v0

    return v0
.end method

.method public static enableDynamicContrast(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 200
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableDynamicContrast(I)Z

    move-result v0

    return v0
.end method

.method public static enableGamma(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 206
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableGamma(I)Z

    move-result v0

    return v0
.end method

.method public static enableOD(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 211
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableOD(I)Z

    move-result v0

    return v0
.end method

.method public static enablePQ(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 182
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnablePQ(I)Z

    move-result v0

    return v0
.end method

.method public static enableSharpness(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 194
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableSharpness(I)Z

    move-result v0

    return v0
.end method

.method public static getCapability()I
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetCapability()I

    move-result v0

    return v0
.end method

.method public static getContrastIndex()I
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 236
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 237
    return-object v0
.end method

.method public static getDynamicContrastHistogram([BII)Lcom/mediatek/pq/PictureQuality$Hist;
    .locals 1
    .param p0, "srcBuffer"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I

    .prologue
    .line 174
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Hist;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Hist;-><init>()V

    .line 175
    .local v0, "outHist":Lcom/mediatek/pq/PictureQuality$Hist;
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V

    .line 176
    return-object v0
.end method

.method public static getDynamicContrastIndex()I
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getDynamicContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 296
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 297
    return-object v0
.end method

.method public static getGammaIndex()I
    .locals 2

    .prologue
    .line 338
    const-string v0, "persist.sys.gamma.index"

    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 318
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 319
    return-object v0
.end method

.method public static getLibStatus()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    return v0
.end method

.method public static getPicBrightnessIndex()I
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndex()I

    move-result v0

    return v0
.end method

.method public static getPicBrightnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 266
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 267
    return-object v0
.end method

.method public static getPictureMode()I
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPictureMode()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndex()I
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndex()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 251
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 252
    return-object v0
.end method

.method public static getSharpnessIndex()I
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndex()I

    move-result v0

    return v0
.end method

.method public static getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 281
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 282
    return-object v0
.end method

.method private static native nativeEnableColor(I)Z
.end method

.method private static native nativeEnableDynamicContrast(I)Z
.end method

.method private static native nativeEnableGamma(I)Z
.end method

.method private static native nativeEnableOD(I)Z
.end method

.method private static native nativeEnablePQ(I)Z
.end method

.method private static native nativeEnableSharpness(I)Z
.end method

.method private static native nativeGetCapability()I
.end method

.method private static native nativeGetContrastIndex()I
.end method

.method private static native nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V
.end method

.method private static native nativeGetDynamicContrastIndex()I
.end method

.method private static native nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPicBrightnessIndex()I
.end method

.method private static native nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPictureMode()I
.end method

.method private static native nativeGetSaturationIndex()I
.end method

.method private static native nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetSharpnessIndex()I
.end method

.method private static native nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeSetCameraPreviewMode()V
.end method

.method private static native nativeSetColorRegion(IIIII)Z
.end method

.method private static native nativeSetContrastIndex(I)V
.end method

.method private static native nativeSetDynamicContrastIndex(I)V
.end method

.method private static native nativeSetGalleryNormalMode()V
.end method

.method private static native nativeSetGammaIndex(I)V
.end method

.method private static native nativeSetPicBrightnessIndex(I)V
.end method

.method private static native nativeSetPictureMode(I)Z
.end method

.method private static native nativeSetSaturationIndex(I)V
.end method

.method private static native nativeSetSharpnessIndex(I)V
.end method

.method public static setColorRegion(IIIII)Z
    .locals 1
    .param p0, "isEnable"    # I
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .prologue
    .line 230
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorRegion(IIIII)Z

    move-result v0

    return v0
.end method

.method public static setContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 245
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetContrastIndex(I)V

    .line 246
    return-void
.end method

.method public static setDynamicContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 305
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetDynamicContrastIndex(I)V

    .line 306
    return-void
.end method

.method public static setGammaIndex(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 328
    const-string v0, "persist.sys.gamma.index"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGammaIndex(I)V

    .line 330
    return-void
.end method

.method public static setMode(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 161
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 163
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetCameraPreviewMode()V

    .line 170
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetGalleryNormalMode()V

    goto :goto_0
.end method

.method public static setPicBrightnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 275
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPicBrightnessIndex(I)V

    .line 276
    return-void
.end method

.method public static setPictureMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 223
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPictureMode(I)Z

    move-result v0

    return v0
.end method

.method public static setSaturationIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 260
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSaturationIndex(I)V

    .line 261
    return-void
.end method

.method public static setSharpnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 290
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSharpnessIndex(I)V

    .line 291
    return-void
.end method
