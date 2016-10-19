.class public Lcom/mediatek/mmsdk/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/mmsdk/ImageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private format:I

.field private height:I

.field private numOfPlane:I

.field private stride:[I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/mediatek/mmsdk/ImageInfo$1;

    invoke-direct {v0}, Lcom/mediatek/mmsdk/ImageInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/mmsdk/ImageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->format:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->width:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->height:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->numOfPlane:I

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    .line 79
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/mmsdk/ImageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/mmsdk/ImageInfo$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/mmsdk/ImageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->format:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->width:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->height:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->numOfPlane:I

    .line 55
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->numOfPlane:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/mediatek/mmsdk/ImageInfo;->stride:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
