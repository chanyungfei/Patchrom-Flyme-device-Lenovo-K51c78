.class public Landroid/widget/BounceCoverFlow;
.super Landroid/widget/BounceGallery;
.source "BounceCoverFlow.java"


# static fields
.field private static final DBG:Z = false

.field private static DEFAULT_MAX_ROTATION:I = 0x0

.field private static DEFAULT_MAX_ZOOM:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "BounceCoverFlow"


# instance fields
.field private final mCamera:Landroid/graphics/Camera;

.field private mMaxRotationAngle:I

.field private mMaxZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x3c

    sput v0, Landroid/widget/BounceCoverFlow;->DEFAULT_MAX_ROTATION:I

    .line 65
    const/high16 v0, 0x43c80000    # 400.0f

    sput v0, Landroid/widget/BounceCoverFlow;->DEFAULT_MAX_ZOOM:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BounceCoverFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BounceCoverFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/BounceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    sget v0, Landroid/widget/BounceCoverFlow;->DEFAULT_MAX_ROTATION:I

    iput v0, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    .line 68
    sget v0, Landroid/widget/BounceCoverFlow;->DEFAULT_MAX_ZOOM:F

    iput v0, p0, Landroid/widget/BounceCoverFlow;->mMaxZoom:F

    .line 70
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/BounceCoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 83
    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/widget/BounceCoverFlow;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/BounceCoverFlow;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/BounceCoverFlow;->mPaddingRight:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/BounceCoverFlow;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;
    .param p3, "rotationAngle"    # I

    .prologue
    const/4 v7, 0x0

    .line 155
    iget-object v4, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 157
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 158
    .local v1, "imageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 159
    .local v0, "imageHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 161
    .local v2, "imageWidth":I
    int-to-float v4, p3

    iget v5, p0, Landroid/widget/BounceCoverFlow;->mMaxZoom:F

    iget v6, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v3, v4, v5

    .line 167
    .local v3, "zoomAmount":F
    iget-object v4, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4, v7, v7, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 168
    iget-object v4, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 170
    div-int/lit8 v4, v2, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 171
    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 173
    iget-object v4, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 174
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Landroid/widget/BounceCoverFlow;->getCenterOfChildWithScroll(Landroid/view/View;)I

    move-result v0

    .line 115
    .local v0, "childCenter":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 116
    .local v1, "childWidth":I
    const/4 v3, 0x0

    .line 118
    .local v3, "rotationAngle":I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 119
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 121
    invoke-direct {p0}, Landroid/widget/BounceCoverFlow;->getCenterOfCoverflow()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 122
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Landroid/widget/BounceCoverFlow;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    .line 138
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 124
    :cond_0
    invoke-direct {p0}, Landroid/widget/BounceCoverFlow;->getCenterOfCoverflow()I

    move-result v4

    sub-int v2, v4, v0

    .line 125
    .local v2, "distToCenter":I
    int-to-float v4, v2

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 132
    iget v4, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    if-le v3, v4, :cond_1

    .line 133
    iget v3, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    .line 135
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/BounceCoverFlow;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    goto :goto_0
.end method

.method public setMaxRotationAngle(I)V
    .locals 0
    .param p1, "maxAngle"    # I

    .prologue
    .line 109
    iput p1, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    .line 110
    return-void
.end method

.method public setMaxZoomOut(F)V
    .locals 0
    .param p1, "maxZoom"    # F

    .prologue
    .line 100
    iput p1, p0, Landroid/widget/BounceCoverFlow;->mMaxZoom:F

    .line 101
    return-void
.end method

.method public setNextSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/widget/BounceGallery;->setNextSelectedPositionInt(I)V

    .line 186
    return-void
.end method
