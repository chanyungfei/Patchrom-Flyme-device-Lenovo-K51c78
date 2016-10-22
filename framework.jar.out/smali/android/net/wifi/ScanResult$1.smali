.class final Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
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
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v13, 0x1

    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v13, :cond_0

    .line 365
    sget-object v2, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v1, Landroid/net/wifi/WifiSsid;

    .line 367
    .restart local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V

    .line 377
    .local v0, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v13

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 385
    .local v12, "n":I
    if-eqz v12, :cond_2

    .line 386
    new-array v2, v12, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 387
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_2

    .line 388
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    new-instance v3, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v3}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    aput-object v3, v2, v10

    .line 389
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 391
    .local v11, "len":I
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v10

    new-array v3, v11, [B

    iput-object v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 392
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v10

    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 387
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 379
    .end local v10    # "i":I
    .end local v11    # "len":I
    .end local v12    # "n":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 395
    .restart local v12    # "n":I
    :cond_2
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 399
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method
