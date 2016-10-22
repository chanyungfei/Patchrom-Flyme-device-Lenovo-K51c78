.class final Lcom/mediatek/internal/telephony/PacketFilterInfo$1;
.super Ljava/lang/Object;
.source "PacketFilterInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/PacketFilterInfo;
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
        "Lcom/mediatek/internal/telephony/PacketFilterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/PacketFilterInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 95
    new-instance v0, Lcom/mediatek/internal/telephony/PacketFilterInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PacketFilterInfo;-><init>()V

    .line 96
    .local v0, "packetFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/PacketFilterInfo;->readFrom(Landroid/os/Parcel;)V

    .line 97
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PacketFilterInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/PacketFilterInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/PacketFilterInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 102
    new-array v0, p1, [Lcom/mediatek/internal/telephony/PacketFilterInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PacketFilterInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/PacketFilterInfo;

    move-result-object v0

    return-object v0
.end method
