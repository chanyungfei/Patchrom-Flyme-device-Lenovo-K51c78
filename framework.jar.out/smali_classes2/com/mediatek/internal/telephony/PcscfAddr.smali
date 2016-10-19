.class public Lcom/mediatek/internal/telephony/PcscfAddr;
.super Ljava/lang/Object;
.source "PcscfAddr.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/PcscfAddr;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMC_PDP_ADDR_IPV4V6_ADDR_TYPE:I = 0x8d

.field public static final IMC_PDP_ADDR_IPV4_ADDR_TYPE:I = 0x21

.field public static final IMC_PDP_ADDR_IPV6_ADDR_TYPE:I = 0x57

.field public static final IMC_PDP_ADDR_NONE_ADDR_TYPE:I = 0x0

.field public static final IMC_PDP_ADDR_NULL_PDP_ADDR_TYPE:I = 0x3


# instance fields
.field public address:Ljava/lang/String;

.field public port:I

.field public protocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/mediatek/internal/telephony/PcscfAddr$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PcscfAddr$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/PcscfAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 26
    const/16 v0, 0x57

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    goto :goto_0

    .line 28
    :cond_1
    const/16 v0, 0x21

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    .line 46
    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 39
    iget v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr;->writeTo(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method
