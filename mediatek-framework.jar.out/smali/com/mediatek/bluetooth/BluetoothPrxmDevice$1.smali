.class final Lcom/mediatek/bluetooth/BluetoothPrxmDevice$1;
.super Ljava/lang/Object;
.source "BluetoothPrxmDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
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
        "Lcom/mediatek/bluetooth/BluetoothPrxmDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 146
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 147
    .local v0, "pdi":Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->capability:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->access$002(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->linkLossLevel:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->access$102(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossLevel:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->access$202(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossThreshold:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->access$302(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->remoteTxPower:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->access$402(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->currentRssi:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->access$502(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B

    .line 153
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/BluetoothPrxmDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 157
    new-array v0, p1, [Lcom/mediatek/bluetooth/BluetoothPrxmDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice$1;->newArray(I)[Lcom/mediatek/bluetooth/BluetoothPrxmDevice;

    move-result-object v0

    return-object v0
.end method
