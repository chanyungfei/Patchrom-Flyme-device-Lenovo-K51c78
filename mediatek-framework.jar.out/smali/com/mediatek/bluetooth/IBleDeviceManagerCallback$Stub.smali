.class public abstract Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IBleDeviceManagerCallback.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBleDeviceManagerCallback"

.field static final TRANSACTION_onCharacteristicChanged:I = 0x5

.field static final TRANSACTION_onCharacteristicRead:I = 0x3

.field static final TRANSACTION_onCharacteristicWrite:I = 0x4

.field static final TRANSACTION_onConnectionStateChange:I = 0x1

.field static final TRANSACTION_onDescriptorRead:I = 0x6

.field static final TRANSACTION_onDescriptorWrite:I = 0x7

.field static final TRANSACTION_onReadRemoteRssi:I = 0x9

.field static final TRANSACTION_onReliableWriteCompleted:I = 0x8

.field static final TRANSACTION_onServicesChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;
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
    const-string v1, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onConnectionStateChange(Ljava/lang/String;II)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_2
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onServicesChanged(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    sget-object v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 89
    .local v2, "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onCharacteristicRead(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;I)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .end local v3    # "_arg3":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_1

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :sswitch_4
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    sget-object v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 109
    .restart local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .end local v3    # "_arg3":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_2

    .line 116
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :sswitch_5
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    sget-object v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 128
    .restart local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onCharacteristicChanged(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_3

    .line 134
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :sswitch_6
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    sget-object v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .line 147
    .local v2, "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 148
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onDescriptorRead(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;I)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .end local v3    # "_arg3":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    goto :goto_4

    .line 154
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :sswitch_7
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    sget-object v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .line 167
    .restart local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onDescriptorWrite(Ljava/lang/String;ILcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .end local v3    # "_arg3":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    goto :goto_5

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    :sswitch_8
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 180
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onReliableWriteCompleted(Ljava/lang/String;II)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 187
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_9
    const-string v5, "com.mediatek.bluetooth.IBleDeviceManagerCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;III)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
