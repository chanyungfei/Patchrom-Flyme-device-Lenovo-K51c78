.class final Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor$1;
.super Ljava/lang/Object;
.source "ParcelBluetoothGattDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
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
        "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    .line 248
    const-class v8, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 254
    .local v2, "loader":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    .line 256
    .local v4, "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 257
    .local v5, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .local v1, "instance":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .local v3, "permissions":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 264
    .local v0, "characteristic":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 265
    .local v7, "valueLeng":I
    const/4 v6, 0x0

    .line 266
    .local v6, "value":[B
    if-eqz v7, :cond_0

    .line 267
    new-array v6, v7, [B

    .line 268
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 271
    :cond_0
    new-instance v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .end local v4    # "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    invoke-direct {v4, v9, v5, v1, v3}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;-><init>(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;Landroid/os/ParcelUuid;II)V

    .line 272
    .restart local v4    # "result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    iput-object v0, v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mCharacteristic:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 273
    iput-object v6, v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    .line 275
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 280
    new-array v0, p1, [Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor$1;->newArray(I)[Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    move-result-object v0

    return-object v0
.end method
