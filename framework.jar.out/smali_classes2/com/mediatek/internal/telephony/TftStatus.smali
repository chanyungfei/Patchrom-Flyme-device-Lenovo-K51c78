.class public Lcom/mediatek/internal/telephony/TftStatus;
.super Ljava/lang/Object;
.source "TftStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/TftStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPCODE_ADD_PF:I = 0x3

.field public static final OPCODE_CREATE_NEW_TFT:I = 0x1

.field public static final OPCODE_DELETE_PF:I = 0x5

.field public static final OPCODE_DELETE_TFT:I = 0x2

.field public static final OPCODE_NOTFT_OP:I = 0x6

.field public static final OPCODE_REPLACE_PF:I = 0x4

.field public static final OPCODE_RESERVED:I = 0x7

.field public static final OPCODE_SPARE:I


# instance fields
.field public operation:I

.field public packetFilterInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/PacketFilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tftParameter:Lcom/mediatek/internal/telephony/TftParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/mediatek/internal/telephony/TftStatus$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/TftStatus$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/TftStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/mediatek/internal/telephony/TftParameter;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/TftParameter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/mediatek/internal/telephony/TftStatus;)V
    .locals 1
    .param p1, "tftStatus"    # Lcom/mediatek/internal/telephony/TftStatus;

    .prologue
    .line 26
    iget v0, p1, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    iput v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    .line 27
    iget-object v0, p1, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    .line 28
    iget-object v0, p1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    .line 29
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/TftStatus;->reset()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 36
    .local v2, "pfNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 37
    new-instance v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/PacketFilterInfo;-><init>()V

    .line 38
    .local v1, "pfInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/PacketFilterInfo;->readFrom(Landroid/os/Parcel;)V

    .line 39
    iget-object v3, p0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "pfInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/TftParameter;->readFrom(Landroid/os/Parcel;)V

    .line 44
    iget-object v3, p0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V

    .line 45
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    .line 58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/TftParameter;->reset()V

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PacketFilterInfo[operation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/PacketFilterInfo;

    .line 66
    .local v2, "pfInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/PacketFilterInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 68
    .end local v2    # "pfInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "], TftParameter["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 48
    iget v2, p0, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v2, p0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v2, p0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;

    .line 51
    .local v1, "pfInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/PacketFilterInfo;->writeTo(Landroid/os/Parcel;)V

    goto :goto_0

    .line 53
    .end local v1    # "pfInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/TftParameter;->writeTo(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/TftStatus;->writeTo(Landroid/os/Parcel;)V

    .line 80
    return-void
.end method
