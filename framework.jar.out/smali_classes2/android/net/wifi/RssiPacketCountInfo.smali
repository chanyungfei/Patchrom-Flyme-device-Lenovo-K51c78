.class public Landroid/net/wifi/RssiPacketCountInfo;
.super Ljava/lang/Object;
.source "RssiPacketCountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RssiPacketCountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mLinkspeed:I

.field public rACKFailureCount:J

.field public rFCSErrorCount:J

.field public rFailedCount:J

.field public rMultipleRetryCount:J

.field public rRetryCount:J

.field public rssi:I

.field public rxgood:I

.field public txbad:I

.field public txgood:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Landroid/net/wifi/RssiPacketCountInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/RssiPacketCountInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RssiPacketCountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rxgood:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 73
    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFCSErrorCount:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rACKFailureCount:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rxgood:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rACKFailureCount:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFCSErrorCount:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/RssiPacketCountInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/wifi/RssiPacketCountInfo$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/net/wifi/RssiPacketCountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 94
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rxgood:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rACKFailureCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFCSErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
