.class final Landroid/net/wifi/PPPOEInfo$1;
.super Ljava/lang/Object;
.source "PPPOEInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PPPOEInfo;
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
        "Landroid/net/wifi/PPPOEInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PPPOEInfo;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    new-instance v0, Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEInfo;-><init>()V

    .line 61
    .local v0, "result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/PPPOEInfo$Status;->valueOf(Ljava/lang/String;)Landroid/net/wifi/PPPOEInfo$Status;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 63
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/net/wifi/PPPOEInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/PPPOEInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 67
    new-array v0, p1, [Landroid/net/wifi/PPPOEInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/net/wifi/PPPOEInfo$1;->newArray(I)[Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method
