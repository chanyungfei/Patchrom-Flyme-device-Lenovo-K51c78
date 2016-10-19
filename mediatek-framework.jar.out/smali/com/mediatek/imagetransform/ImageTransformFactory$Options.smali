.class public Lcom/mediatek/imagetransform/ImageTransformFactory$Options;
.super Ljava/lang/Object;
.source "ImageTransformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/imagetransform/ImageTransformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Options"
.end annotation


# instance fields
.field private cropRoi:Landroid/graphics/Rect;

.field private dither:Z

.field private encodingQuality:I

.field private flip:Ljava/lang/String;

.field private rotation:I

.field private sharpness:I

.field final synthetic this$0:Lcom/mediatek/imagetransform/ImageTransformFactory;


# direct methods
.method public constructor <init>(Lcom/mediatek/imagetransform/ImageTransformFactory;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->this$0:Lcom/mediatek/imagetransform/ImageTransformFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public getCropRoi()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->cropRoi:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getEncodingQuality()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->encodingQuality:I

    return v0
.end method

.method public getFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->flip:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->rotation:I

    return v0
.end method

.method public getSharpness()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->sharpness:I

    return v0
.end method

.method public isDither()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->dither:Z

    return v0
.end method

.method public setCropRoi(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "cropRoi"    # Landroid/graphics/Rect;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->cropRoi:Landroid/graphics/Rect;

    .line 146
    return-void
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->dither:Z

    .line 210
    return-void
.end method

.method public setEncodingQuality(I)V
    .locals 0
    .param p1, "encodingQuality"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->encodingQuality:I

    .line 194
    return-void
.end method

.method public setFlip(Ljava/lang/String;)V
    .locals 0
    .param p1, "flip"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->flip:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->rotation:I

    .line 178
    return-void
.end method

.method public setSharpness(I)V
    .locals 0
    .param p1, "sharpness"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->sharpness:I

    .line 226
    return-void
.end method
