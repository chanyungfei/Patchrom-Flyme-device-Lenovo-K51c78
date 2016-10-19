.class public Lcom/mediatek/mmsdk/HandDetectionEvent;
.super Ljava/lang/Object;
.source "HandDetectionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/mmsdk/HandDetectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private boundBox:Landroid/os/Parcelable;

.field private confidence:F

.field private id:I

.field private pose:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/mediatek/mmsdk/HandDetectionEvent$1;

    invoke-direct {v0}, Lcom/mediatek/mmsdk/HandDetectionEvent$1;-><init>()V

    sput-object v0, Lcom/mediatek/mmsdk/HandDetectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->boundBox:Landroid/os/Parcelable;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->confidence:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->id:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->pose:I

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/mmsdk/HandDetectionEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/mmsdk/HandDetectionEvent$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mediatek/mmsdk/HandDetectionEvent;-><init>(Landroid/os/Parcel;)V

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
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->boundBox:Landroid/os/Parcelable;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->confidence:F

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->id:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->pose:I

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->boundBox:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->confidence:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    iget v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/mediatek/mmsdk/HandDetectionEvent;->pose:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
