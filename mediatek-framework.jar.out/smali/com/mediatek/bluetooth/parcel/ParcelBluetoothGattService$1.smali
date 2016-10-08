.class final Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService$1;
.super Ljava/lang/Object;
.source "ParcelBluetoothGattService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
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
        "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    .line 318
    const-class v7, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 324
    .local v3, "loader":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    .line 326
    .local v4, "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 327
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 328
    .local v6, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    .local v2, "instanceId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    .local v1, "handles":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 332
    .local v5, "serviceType":I
    new-instance v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .end local v4    # "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    invoke-direct {v4, v0, v6, v2, v5}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;II)V

    .line 333
    .restart local v4    # "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    iput v1, v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mHandles:I

    .line 336
    iget-object v7, v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-virtual {p1, v7, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 337
    iget-object v7, v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-virtual {p1, v7, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 339
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 344
    new-array v0, p1, [Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService$1;->newArray(I)[Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v0

    return-object v0
.end method
