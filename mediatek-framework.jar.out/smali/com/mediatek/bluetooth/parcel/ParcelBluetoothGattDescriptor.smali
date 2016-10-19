.class public Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
.super Ljava/lang/Object;
.source "ParcelBluetoothGattDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ParcelBluetoothGattDescriptor"

.field private static final VDGB:Z


# instance fields
.field protected mCharacteristic:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

.field protected mInstance:I

.field protected mPermissions:I

.field protected mUuid:Landroid/os/ParcelUuid;

.field protected mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor$1;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor$1;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;Landroid/os/ParcelUuid;II)V
    .locals 0
    .param p1, "characteristic"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "instance"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mCharacteristic:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 91
    iput-object p2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    .line 92
    iput p3, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mInstance:I

    .line 93
    iput p4, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mPermissions:I

    .line 94
    return-void
.end method

.method public static from(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .locals 5
    .param p0, "gattDesc"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 226
    new-instance v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;-><init>(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;Landroid/os/ParcelUuid;II)V

    .line 230
    .local v0, "instance":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    .line 232
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->from(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mCharacteristic:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 235
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getCharacteristic()Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mCharacteristic:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mInstance:I

    return v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mPermissions:I

    return v0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    return-object v0
.end method

.method public setValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Parcel Descriptor\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ">UUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ">InstanceID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mInstance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ">Permissions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mPermissions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ">Characteristic = \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mCharacteristic:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unpack()Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 6

    .prologue
    .line 198
    new-instance v2, Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v3, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mPermissions:I

    invoke-direct {v2, v3, v4}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    .line 203
    .local v2, "instance":Landroid/bluetooth/BluetoothGattDescriptor;
    :try_start_0
    const-class v3, Landroid/bluetooth/BluetoothGattDescriptor;

    const-string v4, "mInstance"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 204
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 205
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 206
    iget v3, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mInstance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 214
    return-object v2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ParcelBluetoothGattDescriptor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mInstance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mPermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mCharacteristic:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->mValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
