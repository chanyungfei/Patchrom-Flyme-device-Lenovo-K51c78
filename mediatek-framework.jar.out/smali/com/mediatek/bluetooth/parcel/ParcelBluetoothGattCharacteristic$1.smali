.class final Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic$1;
.super Ljava/lang/Object;
.source "ParcelBluetoothGattCharacteristic.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
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
        "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 373
    const-class v12, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 379
    .local v7, "loader":Ljava/lang/ClassLoader;
    const/4 v0, 0x0

    .line 381
    .local v0, "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 382
    .local v2, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 383
    .local v3, "instance":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 384
    .local v4, "properties":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 385
    .local v5, "permissions":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 386
    .local v6, "keySize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 388
    .local v11, "writeType":I
    new-instance v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .end local v0    # "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;-><init>(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;Landroid/os/ParcelUuid;III)V

    .line 392
    .restart local v0    # "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    iput v6, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mKeySize:I

    .line 393
    iput v11, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mWriteType:I

    .line 396
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .line 397
    .local v8, "service":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    iput-object v8, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mService:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 401
    .local v10, "valueLeng":I
    const/4 v9, 0x0

    .line 402
    .local v9, "value":[B
    if-eqz v10, :cond_0

    .line 403
    new-array v9, v10, [B

    .line 404
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readByteArray([B)V

    .line 408
    :cond_0
    iget-object v1, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-virtual {p1, v1, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 410
    invoke-virtual {v0, v9}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->setValue([B)Z

    .line 412
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 417
    new-array v0, p1, [Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic$1;->newArray(I)[Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    move-result-object v0

    return-object v0
.end method
