.class public Lcom/mediatek/internal/telephony/QosStatus;
.super Ljava/lang/Object;
.source "QosStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/QosStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dlGbr:I

.field public dlMbr:I

.field public qci:I

.field public ulGbr:I

.field public ulMbr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/mediatek/internal/telephony/QosStatus$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/QosStatus$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/QosStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/mediatek/internal/telephony/QosStatus;)V
    .locals 1
    .param p1, "qos"    # Lcom/mediatek/internal/telephony/QosStatus;

    .prologue
    .line 21
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    .line 22
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    .line 23
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    .line 24
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    .line 25
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    .line 26
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    .line 34
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    .line 46
    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    .line 48
    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    .line 49
    iput v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[qci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dlGbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ulGbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dlMbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ulMbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 37
    iget v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/QosStatus;->writeTo(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method
