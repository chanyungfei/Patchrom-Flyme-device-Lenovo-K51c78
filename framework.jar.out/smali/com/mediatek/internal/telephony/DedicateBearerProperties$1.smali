.class final Lcom/mediatek/internal/telephony/DedicateBearerProperties$1;
.super Ljava/lang/Object;
.source "DedicateBearerProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/DedicateBearerProperties;
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
        "Lcom/mediatek/internal/telephony/DedicateBearerProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 147
    new-instance v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    .line 148
    .local v2, "properties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 154
    new-instance v3, Lcom/mediatek/internal/telephony/QosStatus;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/QosStatus;-><init>()V

    iput-object v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 155
    iget-object v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/QosStatus;->readFrom(Landroid/os/Parcel;)V

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 158
    new-instance v3, Lcom/mediatek/internal/telephony/TftStatus;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/TftStatus;-><init>()V

    iput-object v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    .line 159
    iget-object v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/TftStatus;->readFrom(Landroid/os/Parcel;)V

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 162
    new-instance v3, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>()V

    iput-object v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    .line 163
    iget-object v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/PcscfInfo;->readFrom(Landroid/os/Parcel;)V

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, "concatenateNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 167
    iget-object v3, v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/DedicateBearerProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_3
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/DedicateBearerProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 173
    new-array v0, p1, [Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/DedicateBearerProperties$1;->newArray(I)[Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method
