.class final Landroid/view/animation/Transformation$1;
.super Ljava/lang/Object;
.source "Transformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/Transformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/animation/Transformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/animation/Transformation;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 37
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    .line 38
    .local v1, "t":Landroid/view/animation/Transformation;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 39
    .local v2, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 40
    .local v0, "alpha":F
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 41
    .local v3, "values":[F
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 44
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 45
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/animation/Transformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/animation/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/animation/Transformation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    new-array v0, p1, [Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/animation/Transformation$1;->newArray(I)[Landroid/view/animation/Transformation;

    move-result-object v0

    return-object v0
.end method
