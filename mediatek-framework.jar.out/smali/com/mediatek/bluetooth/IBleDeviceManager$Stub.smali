.class public abstract Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IBleDeviceManager.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBleDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBleDeviceManager"

.field static final TRANSACTION_abortReliableWrite:I = 0x11

.field static final TRANSACTION_addGattDevice:I = 0x12

.field static final TRANSACTION_beginReliableWrite:I = 0xf

.field static final TRANSACTION_connectDevice:I = 0x3

.field static final TRANSACTION_deleteGattDevice:I = 0x13

.field static final TRANSACTION_disconnectDevice:I = 0x4

.field static final TRANSACTION_discoverServices:I = 0x5

.field static final TRANSACTION_executeReliableWrite:I = 0x10

.field static final TRANSACTION_getService:I = 0x7

.field static final TRANSACTION_getServices:I = 0x6

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_readCharacteristic:I = 0x9

.field static final TRANSACTION_readDescriptor:I = 0xb

.field static final TRANSACTION_readRemoteRssi:I = 0xe

.field static final TRANSACTION_registerClient:I = 0x1

.field static final TRANSACTION_setCharacteristicNotification:I = 0xd

.field static final TRANSACTION_unregisterClient:I = 0x2

.field static final TRANSACTION_writeCharacteristic:I = 0xa

.field static final TRANSACTION_writeDescriptor:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBleDeviceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/mediatek/bluetooth/IBleDeviceManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 430
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 47
    :sswitch_0
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 61
    .local v1, "_arg0":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 68
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

    move-result-object v3

    .line 69
    .local v3, "_arg2":Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;)I

    move-result v6

    .line 70
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg2":Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;
    .end local v6    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 65
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 76
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->unregisterClient(I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 95
    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->connectDevice(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 96
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v6, :cond_3

    move v0, v8

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .restart local v6    # "_result":Z
    :cond_3
    move v0, v9

    .line 97
    goto :goto_4

    .line 102
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 112
    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->disconnectDevice(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 113
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v6, :cond_4

    move v9, v8

    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 119
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 129
    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_6
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->discoverServices(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 130
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v6, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 136
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 144
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_7
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->getServices(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v7

    .line 145
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 142
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 151
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 154
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 160
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 161
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 166
    .local v2, "_arg1":Landroid/os/ParcelUuid;
    :goto_9
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->getService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v6

    .line 167
    .local v6, "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v6, :cond_b

    .line 169
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v6, p3, v8}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 157
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v6    # "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 164
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_9

    .line 173
    .restart local v6    # "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :cond_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v6    # "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :sswitch_8
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 184
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 189
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->getState(ILandroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 190
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 196
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_9
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 203
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 209
    .local v3, "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    sget-object v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 215
    .local v4, "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :goto_c
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->readCharacteristic(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)Z

    move-result v6

    .line 216
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v6, :cond_d

    move v9, v8

    :cond_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .end local v6    # "_result":Z
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 213
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_c

    .line 222
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :sswitch_a
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 229
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 235
    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 236
    sget-object v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 241
    .restart local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :goto_e
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->writeCharacteristic(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)Z

    move-result v6

    .line 242
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v6, :cond_10

    move v9, v8

    :cond_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 232
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .end local v6    # "_result":Z
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 239
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_e

    .line 248
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :sswitch_b
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 255
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 261
    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 262
    sget-object v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .line 267
    .local v4, "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :goto_10
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->readDescriptor(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z

    move-result v6

    .line 268
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v6, :cond_13

    move v9, v8

    :cond_13
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .end local v6    # "_result":Z
    :cond_14
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 265
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    goto :goto_10

    .line 274
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :sswitch_c
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 281
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 287
    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 288
    sget-object v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .line 293
    .restart local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :goto_12
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->writeDescriptor(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z

    move-result v6

    .line 294
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v6, :cond_16

    move v9, v8

    :cond_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 284
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .end local v6    # "_result":Z
    :cond_17
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .line 291
    :cond_18
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    goto :goto_12

    .line 300
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :sswitch_d
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 307
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 313
    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 314
    sget-object v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 320
    .local v4, "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v5, v8

    .local v5, "_arg4":Z
    :goto_15
    move-object v0, p0

    .line 321
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->setCharacteristicNotification(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;Z)Z

    move-result v6

    .line 322
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v6, :cond_19

    move v9, v8

    :cond_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 310
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :cond_1a
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 317
    :cond_1b
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_14

    :cond_1c
    move v5, v9

    .line 320
    goto :goto_15

    .line 328
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :sswitch_e
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 335
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 340
    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_16
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->readRemoteRssi(IILandroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 341
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v6, :cond_1d

    move v9, v8

    :cond_1d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_1e
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 347
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :sswitch_f
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 354
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 359
    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_17
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->beginReliableWrite(IILandroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 360
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v6, :cond_1f

    move v9, v8

    :cond_1f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_20
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 366
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :sswitch_10
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 373
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 378
    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_18
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->executeReliableWrite(IILandroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 379
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v6, :cond_21

    move v9, v8

    :cond_21
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 376
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_22
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    .line 385
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :sswitch_11
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 389
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 392
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 397
    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :goto_19
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->abortReliableWrite(IILandroid/bluetooth/BluetoothDevice;)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 395
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :cond_23
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .line 403
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :sswitch_12
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    .line 406
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 411
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1a
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->addGattDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 409
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_24
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a

    .line 417
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_13
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 420
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 425
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1b
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->deleteGattDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 423
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
