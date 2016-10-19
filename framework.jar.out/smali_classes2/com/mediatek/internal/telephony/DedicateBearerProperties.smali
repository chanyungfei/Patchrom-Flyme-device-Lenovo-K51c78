.class public Lcom/mediatek/internal/telephony/DedicateBearerProperties;
.super Ljava/lang/Object;
.source "DedicateBearerProperties.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/DedicateBearerProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerId:I

.field public cid:I

.field public concatenateBearers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/DedicateBearerProperties;",
            ">;"
        }
    .end annotation
.end field

.field public defaultCid:I

.field public interfaceId:I

.field public pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

.field public qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

.field public signalingFlag:I

.field public tftStatus:Lcom/mediatek/internal/telephony/TftStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/mediatek/internal/telephony/DedicateBearerProperties$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/DedicateBearerProperties$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->clear()V

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    .line 28
    iput v1, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    .line 29
    iput v1, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    .line 31
    iput v1, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    .line 32
    iput-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 33
    iput-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    .line 34
    iput-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    .line 35
    iget-object v0, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    sget-object v1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public setProperties(Lcom/mediatek/internal/telephony/DedicateDataCallState;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    .locals 5
    .param p1, "dedicateCallState"    # Lcom/mediatek/internal/telephony/DedicateDataCallState;

    .prologue
    const/4 v4, 0x2

    .line 39
    sget-object v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 40
    .local v1, "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->clear()V

    .line 42
    iget v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->interfaceId:I

    iput v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    .line 43
    iget v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    iput v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    .line 44
    iget v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->defaultCid:I

    iput v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    .line 45
    iget v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->signalingFlag:I

    iput v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    .line 46
    iget v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->bearerId:I

    iput v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    .line 47
    iget-object v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    if-eqz v2, :cond_0

    .line 48
    new-instance v2, Lcom/mediatek/internal/telephony/QosStatus;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/QosStatus;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 49
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    iget-object v3, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/QosStatus;->copyFrom(Lcom/mediatek/internal/telephony/QosStatus;)V

    .line 52
    :cond_0
    iget-object v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    if-eqz v2, :cond_1

    .line 53
    new-instance v2, Lcom/mediatek/internal/telephony/TftStatus;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/TftStatus;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    .line 54
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    iget-object v3, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/TftStatus;->copyFrom(Lcom/mediatek/internal/telephony/TftStatus;)V

    .line 57
    :cond_1
    iget-object v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    if-eqz v2, :cond_2

    .line 58
    new-instance v2, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    .line 59
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    iget-object v3, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/PcscfInfo;->copyFrom(Lcom/mediatek/internal/telephony/PcscfInfo;)V

    .line 64
    :cond_2
    iget v0, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->failCause:I

    .line 65
    .local v0, "failCause":I
    if-nez v0, :cond_4

    iget v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->active:I

    if-eq v2, v4, :cond_4

    .line 66
    sget-object v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->FAIL:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 69
    const v2, 0x10002

    iput v2, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    .line 80
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 81
    return-object v1

    .line 71
    :cond_4
    if-eqz v0, :cond_5

    iget v2, p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->active:I

    if-ne v2, v4, :cond_5

    .line 75
    iput v0, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    goto :goto_0

    .line 76
    :cond_5
    if-eqz v0, :cond_3

    .line 77
    sget-object v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->FAIL:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 78
    iput v0, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    goto :goto_0
.end method

.method public setProperties([Lcom/mediatek/internal/telephony/DedicateDataCallState;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    .locals 6
    .param p1, "dedicateCallStates"    # [Lcom/mediatek/internal/telephony/DedicateDataCallState;

    .prologue
    .line 86
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->setProperties(Lcom/mediatek/internal/telephony/DedicateDataCallState;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    move-result-object v4

    .line 89
    .local v4, "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    const/4 v1, 0x1

    .local v1, "i":I
    array-length v2, p1

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 90
    new-instance v3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    .line 91
    .local v3, "properties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->setProperties(Lcom/mediatek/internal/telephony/DedicateDataCallState;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    move-result-object v0

    .line 92
    .local v0, "concatenateResult":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    sget-object v5, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    if-ne v0, v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "concatenateResult":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    .end local v3    # "properties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_1
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[interfaceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", defaultCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", signalingFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bearerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PCSCF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", QOS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", TFT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 105
    .local v2, "properties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 107
    .end local v2    # "properties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    iget v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/QosStatus;->writeTo(Landroid/os/Parcel;)V

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/TftStatus;->writeTo(Landroid/os/Parcel;)V

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/PcscfInfo;->writeTo(Landroid/os/Parcel;)V

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v2, p0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 142
    .local v1, "properties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "properties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_3
    move v2, v4

    .line 131
    goto :goto_0

    :cond_4
    move v2, v4

    .line 134
    goto :goto_1

    :cond_5
    move v3, v4

    .line 137
    goto :goto_2

    .line 143
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method
