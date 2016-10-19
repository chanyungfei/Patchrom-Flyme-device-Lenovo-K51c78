.class public Lcom/mediatek/internal/telephony/PcscfInfo;
.super Ljava/lang/Object;
.source "PcscfInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/PcscfInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMC_PCSCF_ACQUIRE_BY_DHCPv4:I = 0x4

.field public static final IMC_PCSCF_ACQUIRE_BY_DHCPv6:I = 0x5

.field public static final IMC_PCSCF_ACQUIRE_BY_MANUAL:I = 0x6

.field public static final IMC_PCSCF_ACQUIRE_BY_MO:I = 0x2

.field public static final IMC_PCSCF_ACQUIRE_BY_NONE:I = 0x0

.field public static final IMC_PCSCF_ACQUIRE_BY_PCO:I = 0x3

.field public static final IMC_PCSCF_ACQUIRE_BY_SIM:I = 0x1


# instance fields
.field public source:I

.field public v4AddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/PcscfAddr;",
            ">;"
        }
    .end annotation
.end field

.field public v6AddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/PcscfAddr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/mediatek/internal/telephony/PcscfInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PcscfInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/PcscfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1
    .param p1, "sourceNum"    # I
    .param p2, "pcscfBytes"    # [B
    .param p3, "port"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 34
    iput p1, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/internal/telephony/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "sourceNum"    # I
    .param p2, "pcscfArray"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v5, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 26
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 27
    iput p1, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 28
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 29
    .local v3, "pcscf":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Lcom/mediatek/internal/telephony/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pcscf":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pcscf"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 39
    new-instance v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    iput p2, v0, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    .line 42
    iget v1, v0, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    const/16 v2, 0x21

    if-ne v1, v2, :cond_0

    .line 43
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public copyFrom(Lcom/mediatek/internal/telephony/PcscfInfo;)V
    .locals 1
    .param p1, "pcscfInfo"    # Lcom/mediatek/internal/telephony/PcscfInfo;

    .prologue
    .line 113
    iget v0, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 114
    iget-object v0, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 115
    iget-object v0, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getPcscfAddressCount()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readAddressFrom(ILandroid/os/Parcel;)V
    .locals 7
    .param p1, "sourceNum"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "pcscfStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 83
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "pcscfArray":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 85
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 86
    .local v3, "pcscf":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/mediatek/internal/telephony/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pcscf":Ljava/lang/String;
    .end local v4    # "pcscfArray":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "v4AddrNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 56
    new-instance v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PcscfAddr;-><init>()V

    .line 57
    .local v0, "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr;->readFrom(Landroid/os/Parcel;)V

    .line 58
    iget-object v4, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    .local v3, "v6AddrNumber":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 63
    new-instance v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PcscfAddr;-><init>()V

    .line 64
    .restart local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr;->readFrom(Landroid/os/Parcel;)V

    .line 65
    iget-object v4, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", V4["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    .line 128
    .local v0, "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/PcscfAddr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 129
    .end local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_0
    const-string v3, "] V6["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object v3, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    .line 131
    .restart local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/PcscfAddr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 132
    .end local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeAddressTo(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "count":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    .line 94
    .local v0, "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    if-nez v1, :cond_0

    .line 95
    iget-object v3, v0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 100
    goto :goto_0

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    .line 102
    .restart local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    if-nez v1, :cond_2

    .line 103
    iget-object v3, v0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_2

    .line 105
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 109
    .end local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_3
    return-void
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 70
    iget v2, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v2, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v2, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    .line 73
    .local v0, "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr;->writeTo(Landroid/os/Parcel;)V

    goto :goto_0

    .line 75
    .end local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v2, p0, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    .line 77
    .restart local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr;->writeTo(Landroid/os/Parcel;)V

    goto :goto_1

    .line 78
    .end local v0    # "addr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PcscfInfo;->writeTo(Landroid/os/Parcel;)V

    .line 144
    return-void
.end method
