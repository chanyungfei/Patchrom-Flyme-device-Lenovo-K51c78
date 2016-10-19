.class final Lcom/mediatek/internal/telephony/PcscfInfo$1;
.super Ljava/lang/Object;
.source "PcscfInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/PcscfInfo;
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
        "Lcom/mediatek/internal/telephony/PcscfInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/PcscfInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 149
    new-instance v0, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>()V

    .line 150
    .local v0, "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/PcscfInfo;->readFrom(Landroid/os/Parcel;)V

    .line 151
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PcscfInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/PcscfInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/PcscfInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 156
    new-array v0, p1, [Lcom/mediatek/internal/telephony/PcscfInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PcscfInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/PcscfInfo;

    move-result-object v0

    return-object v0
.end method
