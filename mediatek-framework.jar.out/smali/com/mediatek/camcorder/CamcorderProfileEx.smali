.class public Lcom/mediatek/camcorder/CamcorderProfileEx;
.super Ljava/lang/Object;
.source "CamcorderProfileEx.java"


# static fields
.field public static final QUALITY_FINE:I = 0x6f

.field public static final QUALITY_FINE_4K2K:I = 0x7b

.field public static final QUALITY_H264_HIGH:I = 0x75

.field public static final QUALITY_HIGH:I = 0x6e

.field public static final QUALITY_LIST_END:I = 0x7b

.field private static final QUALITY_LIST_START:I

.field public static final QUALITY_LIVE_EFFECT:I = 0x74

.field public static final QUALITY_LOW:I = 0x6c

.field public static final QUALITY_MEDIUM:I = 0x6d

.field public static final QUALITY_NIGHT_FINE:I = 0x73

.field public static final QUALITY_NIGHT_HIGH:I = 0x72

.field public static final QUALITY_NIGHT_LOW:I = 0x70

.field public static final QUALITY_NIGHT_MEDIUM:I = 0x71

.field public static final QUALITY_TIME_LAPSE_LIST_END:I

.field public static final QUALITY_TIME_LAPSE_LIST_START:I

.field public static final SLOW_MOTION_FHD_120FPS:I = 0x8cb

.field public static final SLOW_MOTION_FHD_60FPS:I = 0x8ca

.field public static final SLOW_MOTION_HD_120FPS:I = 0x8c1

.field public static final SLOW_MOTION_HD_180FPS:I = 0x8c2

.field public static final SLOW_MOTION_HD_60FPS:I = 0x8c0

.field private static final SLOW_MOTION_LIST_END:I = 0x8cb

.field private static final SLOW_MOTION_LIST_START:I = 0x8b7

.field public static final SLOW_MOTION_VGA_120FPS:I = 0x8b7

.field private static final TAG:Ljava/lang/String; = "CamcorderProfileEx"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const-string v0, "QUALITY_TIME_LAPSE_LIST_START"

    invoke-static {v0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getQualityNum(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_START:I

    .line 166
    const-string v0, "QUALITY_LIST_START"

    invoke-static {v0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getQualityNum(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_LIST_START:I

    .line 167
    sget v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_START:I

    add-int/lit8 v0, v0, 0x7b

    sput v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_END:I

    .line 168
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfile(I)Landroid/media/CamcorderProfile;
    .locals 4
    .param p0, "quality"    # I

    .prologue
    .line 202
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 203
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 204
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 205
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 206
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 207
    invoke-static {v1, p0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 210
    :goto_1
    return-object v3

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getProfile(II)Landroid/media/CamcorderProfile;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 225
    sget v1, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_LIST_START:I

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7b

    if-le p1, v1, :cond_3

    :cond_0
    sget v1, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_START:I

    if-lt p1, v1, :cond_1

    sget v1, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_END:I

    if-le p1, v1, :cond_3

    :cond_1
    const/16 v1, 0x8b7

    if-lt p1, v1, :cond_2

    const/16 v1, 0x8cb

    if-le p1, v1, :cond_3

    .line 231
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    .end local v0    # "errMessage":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/mediatek/camcorder/CamcorderProfileEx;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method private static getQualityNum(Ljava/lang/String;)I
    .locals 5
    .param p0, "qualityName"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "qualityValue":I
    :try_start_0
    const-class v3, Landroid/media/CamcorderProfile;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 177
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 188
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "CamcorderProfileEx"

    const-string v4, "getQualityNum error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "CamcorderProfileEx"

    const-string v4, "getQualityNum error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CamcorderProfileEx"

    const-string v4, "getQualityNum error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "CamcorderProfileEx"

    const-string v4, "getQualityNum error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
    .locals 8
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    const/4 v3, 0x0

    .line 241
    :try_start_0
    const-class v2, Landroid/media/CamcorderProfile;

    const-string v4, "native_get_camcorder_profile"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 242
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 255
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "CamcorderProfileEx"

    const-string v4, "native_get_camcorder_profile error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    move-object v2, v3

    .line 255
    goto :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "CamcorderProfileEx"

    const-string v4, "native_get_camcorder_profile error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CamcorderProfileEx"

    const-string v4, "native_get_camcorder_profile error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 250
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "CamcorderProfileEx"

    const-string v4, "native_get_camcorder_profile error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "CamcorderProfileEx"

    const-string v4, "native_get_camcorder_profile error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
