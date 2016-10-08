.class public Lcom/mediatek/imagetransform/ImageTransformFactory;
.super Ljava/lang/Object;
.source "ImageTransformFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/imagetransform/ImageTransformFactory$Options;
    }
.end annotation


# static fields
.field public static final FLIP_H:Ljava/lang/String; = "horizontally"

.field public static final FLIP_V:Ljava/lang/String; = "vertically"

.field public static final ROT_0:I = 0x0

.field public static final ROT_180:I = 0xb4

.field public static final ROT_270:I = 0x10e

.field public static final ROT_90:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "ImageTransformFactory"

.field private static sImageTransformFactory:Lcom/mediatek/imagetransform/ImageTransformFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    const-string v0, "jni_imagetransform"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static createImageTransformFactory()Lcom/mediatek/imagetransform/ImageTransformFactory;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/mediatek/imagetransform/ImageTransformFactory;->sImageTransformFactory:Lcom/mediatek/imagetransform/ImageTransformFactory;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/mediatek/imagetransform/ImageTransformFactory;

    invoke-direct {v0}, Lcom/mediatek/imagetransform/ImageTransformFactory;-><init>()V

    sput-object v0, Lcom/mediatek/imagetransform/ImageTransformFactory;->sImageTransformFactory:Lcom/mediatek/imagetransform/ImageTransformFactory;

    .line 86
    :cond_0
    sget-object v0, Lcom/mediatek/imagetransform/ImageTransformFactory;->sImageTransformFactory:Lcom/mediatek/imagetransform/ImageTransformFactory;

    return-object v0
.end method

.method private static native native_applyTransform(Landroid/media/Image;Landroid/media/Image;Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Z
.end method


# virtual methods
.method public applyTransform(Landroid/media/Image;Landroid/media/Image;Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Z
    .locals 2
    .param p1, "srcImage"    # Landroid/media/Image;
    .param p2, "targetImage"    # Landroid/media/Image;
    .param p3, "options"    # Lcom/mediatek/imagetransform/ImageTransformFactory$Options;

    .prologue
    .line 92
    const-string v0, "ImageTransformFactory"

    const-string v1, "applyTransform()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p1, p2, p3}, Lcom/mediatek/imagetransform/ImageTransformFactory;->native_applyTransform(Landroid/media/Image;Landroid/media/Image;Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Z

    move-result v0

    return v0
.end method
