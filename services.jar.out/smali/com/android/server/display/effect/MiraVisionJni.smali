.class public Lcom/android/server/display/effect/MiraVisionJni;
.super Ljava/lang/Object;
.source "MiraVisionJni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/effect/MiraVisionJni$Range;
    }
.end annotation


# static fields
.field public static final AAL_FUNC_CABC:I = 0x2

.field public static final AAL_FUNC_DRE:I = 0x4

.field private static final AAL_FUNC_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.aal.function"

.field private static final GAMMA_INDEX_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.gamma.index"

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_USER_DEF:I = 0x2

.field public static final PIC_MODE_VIVID:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MiraVisionJni"

.field static sLibStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/effect/MiraVisionJni;->sLibStatus:Z

    .line 91
    :try_start_0
    const-string v1, "MiraVisionJni"

    const-string v2, "loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, "MiraVision_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 93
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 94
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MiraVisionJni"

    const-string v2, "UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/effect/MiraVisionJni;->sLibStatus:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static getAALFunction()I
    .locals 2

    .prologue
    .line 280
    const-string v0, "persist.sys.aal.function"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getContrastIndexRange()Lcom/android/server/display/effect/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/android/server/display/effect/MiraVisionJni$Range;

    invoke-direct {v0}, Lcom/android/server/display/effect/MiraVisionJni$Range;-><init>()V

    .line 121
    .local v0, "r":Lcom/android/server/display/effect/MiraVisionJni$Range;
    invoke-static {v0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetContrastIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V

    .line 122
    return-object v0
.end method

.method public static getDefaultAALFunction()I
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x6

    return v0
.end method

.method public static getDynamicContrastIndex()I
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetDynamicContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getDynamicContrastIndexRange()Lcom/android/server/display/effect/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/android/server/display/effect/MiraVisionJni$Range;

    invoke-direct {v0}, Lcom/android/server/display/effect/MiraVisionJni$Range;-><init>()V

    .line 207
    .local v0, "r":Lcom/android/server/display/effect/MiraVisionJni$Range;
    invoke-static {v0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetDynamicContrastIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V

    .line 208
    return-object v0
.end method

.method public static getGammaIndex()I
    .locals 2

    .prologue
    .line 258
    const-string v0, "persist.sys.gamma.index"

    invoke-static {}, Lcom/android/server/display/effect/MiraVisionJni;->getGammaIndexRange()Lcom/android/server/display/effect/MiraVisionJni$Range;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/effect/MiraVisionJni$Range;->defaultValue:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGammaIndexRange()Lcom/android/server/display/effect/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/android/server/display/effect/MiraVisionJni$Range;

    invoke-direct {v0}, Lcom/android/server/display/effect/MiraVisionJni$Range;-><init>()V

    .line 238
    .local v0, "r":Lcom/android/server/display/effect/MiraVisionJni$Range;
    invoke-static {v0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetGammaIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V

    .line 239
    return-object v0
.end method

.method public static getLibStatus()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/server/display/effect/MiraVisionJni;->sLibStatus:Z

    return v0
.end method

.method public static getPicBrightnessIndex()I
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetPicBrightnessIndex()I

    move-result v0

    return v0
.end method

.method public static getPicBrightnessIndexRange()Lcom/android/server/display/effect/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/server/display/effect/MiraVisionJni$Range;

    invoke-direct {v0}, Lcom/android/server/display/effect/MiraVisionJni$Range;-><init>()V

    .line 163
    .local v0, "r":Lcom/android/server/display/effect/MiraVisionJni$Range;
    invoke-static {v0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetPicBrightnessIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V

    .line 164
    return-object v0
.end method

.method public static getSaturationIndex()I
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetSaturationIndex()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndexRange()Lcom/android/server/display/effect/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/server/display/effect/MiraVisionJni$Range;

    invoke-direct {v0}, Lcom/android/server/display/effect/MiraVisionJni$Range;-><init>()V

    .line 142
    .local v0, "r":Lcom/android/server/display/effect/MiraVisionJni$Range;
    invoke-static {v0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetSaturationIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V

    .line 143
    return-object v0
.end method

.method public static getSharpnessIndex()I
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetSharpnessIndex()I

    move-result v0

    return v0
.end method

.method public static getSharpnessIndexRange()Lcom/android/server/display/effect/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/android/server/display/effect/MiraVisionJni$Range;

    invoke-direct {v0}, Lcom/android/server/display/effect/MiraVisionJni$Range;-><init>()V

    .line 186
    .local v0, "r":Lcom/android/server/display/effect/MiraVisionJni$Range;
    invoke-static {v0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeGetSharpnessIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V

    .line 187
    return-object v0
.end method

.method public static getUserBrightnessRange()Lcom/android/server/display/effect/MiraVisionJni$Range;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    new-instance v0, Lcom/android/server/display/effect/MiraVisionJni$Range;

    invoke-direct {v0}, Lcom/android/server/display/effect/MiraVisionJni$Range;-><init>()V

    .line 289
    .local v0, "r":Lcom/android/server/display/effect/MiraVisionJni$Range;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/display/effect/MiraVisionJni$Range;->set(III)V

    .line 290
    return-object v0
.end method

.method public static native nativeEnableODDemo(I)Z
.end method

.method public static native nativeEnablePQColor(I)Z
.end method

.method public static native nativeGetContrastIndex()I
.end method

.method private static native nativeGetContrastIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V
.end method

.method private static native nativeGetDynamicContrastIndex()I
.end method

.method private static native nativeGetDynamicContrastIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V
.end method

.method private static native nativeGetGammaIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V
.end method

.method private static native nativeGetPicBrightnessIndex()I
.end method

.method private static native nativeGetPicBrightnessIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V
.end method

.method public static native nativeGetPictureMode()I
.end method

.method private static native nativeGetSaturationIndex()I
.end method

.method private static native nativeGetSaturationIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V
.end method

.method private static native nativeGetSharpnessIndex()I
.end method

.method private static native nativeGetSharpnessIndexRange(Lcom/android/server/display/effect/MiraVisionJni$Range;)V
.end method

.method private static native nativeSetAALFunction(I)V
.end method

.method public static native nativeSetContrastIndex(I)V
.end method

.method private static native nativeSetDynamicContrastIndex(I)V
.end method

.method private static native nativeSetGammaIndex(I)V
.end method

.method public static native nativeSetPQColorRegion(IIIII)Z
.end method

.method private static native nativeSetPicBrightnessIndex(I)V
.end method

.method public static native nativeSetPictureMode(I)Z
.end method

.method public static native nativeSetSaturationIndex(I)V
.end method

.method private static native nativeSetSharpnessIndex(I)V
.end method

.method public static native nativeSetTuningMode(I)Z
.end method

.method public static setAALFunction(I)V
    .locals 2
    .param p0, "func"    # I

    .prologue
    .line 275
    const-string v0, "persist.sys.aal.function"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeSetAALFunction(I)V

    .line 277
    return-void
.end method

.method public static setDynamicContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 220
    invoke-static {p0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeSetDynamicContrastIndex(I)V

    .line 221
    return-void
.end method

.method public static setGammaIndex(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 248
    const-string v0, "persist.sys.gamma.index"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {p0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeSetGammaIndex(I)V

    .line 250
    return-void
.end method

.method public static setPicBrightnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 176
    invoke-static {p0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeSetPicBrightnessIndex(I)V

    .line 177
    return-void
.end method

.method public static setSaturationIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeSetSaturationIndex(I)V

    .line 156
    return-void
.end method

.method public static setSharpnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 199
    invoke-static {p0}, Lcom/android/server/display/effect/MiraVisionJni;->nativeSetSharpnessIndex(I)V

    .line 200
    return-void
.end method

.method public static setUserBrightness(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 295
    return-void
.end method
