.class public Landroid/view/animation/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/animation/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ALPHA:I = 0x1

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MATRIX:I = 0x2


# instance fields
.field protected mAlpha:F

.field private mClipRect:Landroid/graphics/Rect;

.field private mHasClipRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mTransformationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/view/animation/Transformation$1;

    invoke-direct {v0}, Landroid/view/animation/Transformation$1;-><init>()V

    sput-object v0, Landroid/view/animation/Transformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    .line 94
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 95
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 108
    :goto_0
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 110
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 111
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 112
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 158
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 159
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 160
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 163
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTransformationType()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    return v0
.end method

.method public hasClipRect()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    return v0
.end method

.method public postCompose(Landroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 171
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 172
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 173
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 176
    :cond_0
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 265
    const-string v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 266
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 268
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 269
    return-void
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 142
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 143
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 149
    :goto_0
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 150
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 147
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 191
    iput p1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 192
    return-void
.end method

.method public setClipRect(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 207
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 209
    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 199
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 200
    return-void
.end method

.method public setTransformationType(I)V
    .locals 0
    .param p1, "transformationType"    # I

    .prologue
    .line 132
    iput p1, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 133
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 255
    const-string v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 256
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 257
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Transformation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 61
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 62
    .local v0, "values":[F
    iget-object v1, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 64
    return-void
.end method
