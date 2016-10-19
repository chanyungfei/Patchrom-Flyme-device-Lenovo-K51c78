.class public Lcom/mediatek/internal/telephony/DedicateDataCallState;
.super Ljava/lang/Object;
.source "DedicateDataCallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/DedicateDataCallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public active:I

.field public bearerId:I

.field public cid:I

.field public defaultCid:I

.field public failCause:I

.field public interfaceId:I

.field public pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

.field public qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

.field public signalingFlag:I

.field public tftStatus:Lcom/mediatek/internal/telephony/TftStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/DedicateDataCallState$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(IILcom/mediatek/internal/telephony/DedicateBearerProperties;)V
    .locals 1
    .param p1, "activeStatus"    # I
    .param p2, "cause"    # I
    .param p3, "properties"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .prologue
    .line 30
    iget v0, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->interfaceId:I

    .line 31
    iget v0, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->defaultCid:I

    .line 32
    iget v0, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    .line 33
    iput p1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->active:I

    .line 34
    iget v0, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->signalingFlag:I

    .line 35
    iget v0, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->bearerId:I

    .line 36
    iput p2, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->failCause:I

    .line 37
    iget-object v0, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 38
    iget-object v0, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    .line 39
    iget-object v0, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    .line 40
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 44
    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    .line 45
    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->interfaceId:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->defaultCid:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->active:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->signalingFlag:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->bearerId:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->failCause:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 57
    new-instance v0, Lcom/mediatek/internal/telephony/QosStatus;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/QosStatus;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/QosStatus;->readFrom(Landroid/os/Parcel;)V

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 63
    new-instance v0, Lcom/mediatek/internal/telephony/TftStatus;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/TftStatus;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    .line 64
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/TftStatus;->readFrom(Landroid/os/Parcel;)V

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 69
    new-instance v0, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/internal/telephony/PcscfInfo;->readAddressFrom(ILandroid/os/Parcel;)V

    .line 72
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[interfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->interfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->defaultCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->active:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalingFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->signalingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bearerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->bearerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->failCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", QOS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TFT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PCSCF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    iget v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->interfaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->defaultCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->active:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->signalingFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->bearerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->failCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/QosStatus;->writeTo(Landroid/os/Parcel;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/TftStatus;->writeTo(Landroid/os/Parcel;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/PcscfInfo;->writeAddressTo(Landroid/os/Parcel;)V

    .line 91
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 82
    goto :goto_0

    :cond_4
    move v0, v2

    .line 85
    goto :goto_1

    :cond_5
    move v1, v2

    .line 88
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/DedicateDataCallState;->writeTo(Landroid/os/Parcel;)V

    .line 101
    return-void
.end method
