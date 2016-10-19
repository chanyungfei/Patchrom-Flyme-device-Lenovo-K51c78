.class public Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
.super Ljava/lang/Object;
.source "ParcelBluetoothGattCharacteristic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ParcelBluetoothGattCharacteristic"

.field private static final VDGB:Z


# instance fields
.field protected mDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstance:I

.field protected mKeySize:I

.field protected mPermissions:I

.field protected mProperties:I

.field protected mService:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

.field protected mUuid:Landroid/os/ParcelUuid;

.field protected mValue:[B

.field protected mWriteType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic$1;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic$1;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;Landroid/os/ParcelUuid;III)V
    .locals 1
    .param p1, "service"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mKeySize:I

    .line 126
    iput-object p2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mUuid:Landroid/os/ParcelUuid;

    .line 127
    iput p3, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mInstance:I

    .line 128
    iput p4, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mProperties:I

    .line 129
    iput p5, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mPermissions:I

    .line 130
    iput-object p1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mService:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    .line 133
    return-void
.end method

.method public static from(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .locals 1
    .param p0, "gattChar"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->from(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .locals 11
    .param p0, "gattChar"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p1, "isDeep"    # Z

    .prologue
    .line 330
    new-instance v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;-><init>(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;Landroid/os/ParcelUuid;III)V

    .line 335
    .local v0, "instance":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    .line 336
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v1

    iput v1, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mWriteType:I

    .line 338
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->from(Landroid/bluetooth/BluetoothGattService;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mService:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .line 341
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mKeySize"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 342
    .local v8, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 343
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mKeySize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v8    # "field":Ljava/lang/reflect/Field;
    :goto_0
    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v6

    .line 351
    .local v6, "descList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 352
    .local v9, "gattDesc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-static {v9}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->from(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->addDescriptor(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z

    goto :goto_1

    .line 344
    .end local v6    # "descList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    .end local v9    # "gattDesc":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v10    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 345
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "ParcelBluetoothGattCharacteristic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addDescriptor(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getDescriptor(Landroid/os/ParcelUuid;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .locals 3
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 184
    iget-object v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .line 185
    .local v0, "descriptor":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    .end local v0    # "descriptor":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mInstance:I

    return v0
.end method

.method getKeySize()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mKeySize:I

    return v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mPermissions:I

    return v0
.end method

.method public getProperties()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mProperties:I

    return v0
.end method

.method public getService()Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mService:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    return-object v0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    return-object v0
.end method

.method public getWriteType()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mWriteType:I

    return v0
.end method

.method public setValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Parcel Characteristic\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, ">UUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ">InstanceID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mInstance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ">Properties = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mProperties:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ">Permissions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mPermissions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ">Service = \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mService:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unpack()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 12

    .prologue
    .line 284
    new-instance v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v7, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mProperties:I

    iget v9, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mPermissions:I

    invoke-direct {v4, v7, v8, v9}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 289
    .local v4, "instance":Landroid/bluetooth/BluetoothGattCharacteristic;
    :try_start_0
    const-class v7, Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v8, "mInstance"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 290
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 291
    iget v7, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mInstance:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    iget-object v7, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 297
    iget v7, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mWriteType:I

    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 298
    iget v7, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mKeySize:I

    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setKeySize(I)V

    .line 301
    iget-object v7, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .line 302
    .local v6, "parcelDesc":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    invoke-virtual {v6}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->unpack()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 306
    .local v2, "gattDesc":Landroid/bluetooth/BluetoothGattDescriptor;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setCharacteristic"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/bluetooth/BluetoothGattCharacteristic;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 309
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 310
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_2
    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_1

    .line 292
    .end local v2    # "gattDesc":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "parcelDesc":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ParcelBluetoothGattCharacteristic"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "gattDesc":Landroid/bluetooth/BluetoothGattDescriptor;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "parcelDesc":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :catch_1
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "ParcelBluetoothGattCharacteristic"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "gattDesc":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v6    # "parcelDesc":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :cond_0
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mInstance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mPermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mKeySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mWriteType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mService:Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 247
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
